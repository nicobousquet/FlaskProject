# Import the database connection function and the Binary type
from .db_config import db_connect
from mysql.connector import Binary


def insert_request(email_user, ip_addr, port, date, method, url):
    """
    Inserts a new request into the 'Requests' table in the database with the given information.

    Parameters:
        email_user (str): the email address of the user who made the request.
        ip_addr (str): the IP address of the client that made the request.
        port (int): the port number of the client that made the request.
        date (str): the date and time the request was made, in the format 'YYYY-MM-DD HH:MM:SS'.
        method (str): the HTTP method of the request.
        url (str): the URL of the request.
    """
    connection = db_connect('root', 'root', 'localhost', 'php_db')
    cursor = connection.cursor()
    query = "INSERT INTO Requests (email_user, ip_addr, port, date, method, url) VALUES (%s, %s, %s, %s, %s, %s)"
    cursor.execute(query, (email_user, ip_addr, port, date, method, Binary(url, '    utf-8')))
    connection.commit()
    connection.close()


def select_requests():
    """
    Gets all the requests from the 'Requests' table in the database, ordered by date in descending order.

    Returns:
        A list of tuples, where each tuple represents a request in the 'Requests' table.
    """
    connection = db_connect('root', 'root', 'localhost', 'php_db')
    cursor = connection.cursor()
    query = "SELECT email_user, ip_addr, port, date, url, method FROM Requests ORDER BY date DESC"
    cursor.execute(query)
    rows = cursor.fetchall()
    connection.close()
    return rows
