import mysql.connector


def db_connect(username='root', password='root', host='localhost', database='php_db'):
    """
    Establishes a connection to the specified database using the provided credentials.

    Parameters:
        username (str): the username to use when connecting to the database (defaults to 'root').
        password (str): the password to use when connecting to the database (defaults to 'root').
        host (str): the hostname or IP address of the machine where the database is running (defaults to 'localhost').
        database (str): the name of the database to connect to (defaults to 'php_db').

    Returns:
        A MySQLConnection object representing the established connection to the database.
    """
    return mysql.connector.connect(user=username, password=password, host=host, database=database)
