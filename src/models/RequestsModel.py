from .Model import Model
from mysql.connector import Binary
from typing import List, Dict, Any


class RequestModel(Model):
    def __init__(self):
        super().__init__()
        self._TABLE_NAME = 'Requests'
        self._EMAIL_USER = 'email_user'
        self._IP_ADDR = 'ip_addr'
        self._PORT = 'port'
        self._DATE = 'date'
        self._METHOD = 'method'
        self._URL = 'url'

    def insert_request(self, email_user: str, ip_addr: str, port: int, date: str, method: str, url: str) -> None:
        cursor, conn = self.connect()
        query = f"INSERT INTO {self._TABLE_NAME} ({self._EMAIL_USER}, {self._IP_ADDR}, {self._PORT}, {self._DATE}, {self._METHOD}, {self._URL}) VALUES (%s, %s, %s, %s, %s, %s)"
        cursor.execute(query, (email_user, ip_addr, port, date, method, Binary(url, 'utf-8')))
        conn.commit()
        self.disconnect(cursor, conn)

    def select_requests(self) -> List[Dict[str, Any]]:
        cursor, conn = self.connect()
        query = f"SELECT {self._EMAIL_USER}, {self._IP_ADDR}, {self._PORT}, {self._DATE}, {self._URL}, {self._METHOD} FROM {self._TABLE_NAME} ORDER BY date DESC"
        cursor.execute(query)
        result = cursor.fetchall()
        requests = [{column: value for column, value in zip(cursor.column_names, row)} for row in result]
        self.disconnect(cursor, conn)
        return requests
