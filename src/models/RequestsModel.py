import base64
import pickle
from ..models.db_config import db_connect
from mysql.connector import Binary


def insert_request(email_user, ip_addr, port, date, method, url):
    connection = db_connect('root', 'root', 'localhost', 'php_db')
    cursor = connection.cursor()
    query = "INSERT INTO Requests (email_user, ip_addr, port, date, method, url) VALUES (%s, %s, %s, %s, %s, %s)"
    cursor.execute(query, (email_user, ip_addr, port, date, method, Binary(url, 'utf-8')))
    connection.commit()
    connection.close()


def select_requests():
    connection = db_connect('root', 'root', 'localhost', 'php_db')
    cursor = connection.cursor()
    query = "SELECT email_user, ip_addr, port, date, url, method FROM Requests ORDER BY date DESC"
    cursor.execute(query)
    rows = cursor.fetchall()
    connection.close()
    return rows
