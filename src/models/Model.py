import mysql.connector
from abc import ABC


class Model(ABC):
    def __init__(self, username: str = 'root', password: str = '', host: str = 'localhost', database: str = 'database') -> None:
        self.__username = username
        self.__password = password
        self.__host = host
        self.__database = database

    def connect(self) -> tuple[mysql.connector.cursor.MySQLCursor, mysql.connector.connection.MySQLConnection]:
        conn = mysql.connector.connect(user=self.__username, password=self.__password, host=self.__host, database=self.__database)
        cursor = conn.cursor()
        return cursor, conn

    @staticmethod
    def disconnect(cursor: mysql.connector.cursor.MySQLCursor, conn: mysql.connector.connection.MySQLConnection) -> None:
        cursor.close()
        conn.close()
