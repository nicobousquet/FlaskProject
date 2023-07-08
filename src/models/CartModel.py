from typing import List, Dict, Any
from .Model import Model


class CartModel(Model):
    def __init__(self) -> None:
        super().__init__()
        self._TABLE_NAME = 'cart'
        self._EMAIL_USER = 'email_user'
        self._PHOTO_ID = 'photo_id'
        self._QUANTITY = 'quantity'
        self._SIZE = 'size'
        self._PRICE = 'price'

    def insert_item_into_cart(self, email_user: str, photo_id: int, quantity: int, size: str, price: float) -> None:
        cursor, conn = self.connect()
        query = f"INSERT INTO {self._TABLE_NAME} ({self._EMAIL_USER}, {self._PHOTO_ID}, {self._QUANTITY}, {self._SIZE}, {self._PRICE}) VALUES (%s, %s, %s, %s, %s)"
        cursor.execute(query, (email_user, photo_id, quantity, size, price))
        conn.commit()
        self.disconnect(cursor, conn)

    def select_items_from_cart(self, email: str) -> List[Dict[str, Any]]:
        cursor, conn = self.connect()
        query = f"SELECT * FROM {self._TABLE_NAME} INNER JOIN photos ON photos.id = {self._PHOTO_ID} WHERE {self._EMAIL_USER} = %s"
        cursor.execute(query, (email,))
        result = cursor.fetchall()
        cart_items = [{column: value for column, value in zip(cursor.column_names, row)} for row in result]
        self.disconnect(cursor, conn)
        return cart_items

    def delete_item(self, email: str, id: int, quantity: int, size: str) -> None:
        cursor, conn = self.connect()
        query = f"DELETE FROM {self._TABLE_NAME} WHERE {self._EMAIL_USER} = %s AND {self._PHOTO_ID} = %s AND {self._QUANTITY} = %s AND {self._SIZE} = %s LIMIT 1"
        cursor.execute(query, (email, id, quantity, size))
        conn.commit()
        self.disconnect(cursor, conn)

    def delete_all(self, email: str) -> None:
        cursor, conn = self.connect()
        query = f"DELETE FROM {self._TABLE_NAME} WHERE {self._EMAIL_USER} = %s"
        cursor.execute(query, (email,))
        conn.commit()
        self.disconnect(cursor, conn)
