import mysql.connector


def db_connect(username, password, host, database):
    return mysql.connector.connect(user=username, password=password, host=host, database=database)

