from typing import List, Dict, Any
from .Model import Model


class OrdersModel(Model):
    def __init__(self) -> None:
        super().__init__()
        self._TABLE_NAME = 'orders'
        self._EMAIL_USER = 'email_user'
        self._ORDER_ID = 'order_id'
        self._PHOTO_ID = "photo_id"
        self._QUANTITY = 'quantity'
        self._SIZE = 'size'
        self._PRICE = 'price'
        self._DATE = 'date'

    def insert_order(self, email_user: str, order_id: int, photo_id: int, price: float, size: str, quantity: int, date: str) -> None:
        cursor, conn = self.connect()
        query = f"INSERT INTO {self._TABLE_NAME} ({self._EMAIL_USER}, {self._ORDER_ID}, {self._PHOTO_ID}, {self._QUANTITY}, {self._SIZE}, {self._PRICE}, {self._DATE}) VALUES (%s, %s, %s, %s, %s, %s, %s)"
        cursor.execute(query, (email_user, order_id, photo_id, quantity, size, price, date))
        conn.commit()
        self.disconnect(cursor, conn)

    def select_orders(self, email_user: str) -> List[Dict[str, Any]]:
        cursor, conn = self.connect()
        sql = f"SELECT * FROM {self._TABLE_NAME} INNER JOIN photos ON photos.id = orders.photo_id WHERE {self._EMAIL_USER} = %s ORDER BY {self._DATE} DESC, {self._ORDER_ID}"
        cursor.execute(sql, (email_user,))
        result = cursor.fetchall()
        orders = [{column: value for column, value in zip(cursor.column_names, row)} for row in result]
        self.disconnect(cursor, conn)
        return orders
