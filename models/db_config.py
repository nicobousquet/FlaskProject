import mysql.connector


def db_connect(username='root', password='root', host='localhost', database='php_db'):
    return mysql.connector.connect(user=username, password=password, host=host, database=database)

