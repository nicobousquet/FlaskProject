from typing import List, Dict, Any
from .Model import Model


class PhotosModel(Model):
    def __init__(self) -> None:
        super().__init__()
        self._TABLE_NAME = 'Photos'
        self._ID = 'id'
        self._CONTINENT = 'continent'
        self._URL = 'url'

    def select_photos_by_continent(self, continent: str) -> List[Dict[str, Any]]:
        cursor, conn = self.connect()
        query = f"SELECT * FROM {self._TABLE_NAME} WHERE {self._CONTINENT}=%s"
        cursor.execute(query, (continent,))
        result = cursor.fetchall()
        photos = [{column: value for column, value in zip(cursor.column_names, row)} for row in result]
        self.disconnect(cursor, conn)
        return photos

    def select_photo_by_id(self, photo_id: int) -> Dict[str, Any]:
        cursor, conn = self.connect()
        query = f"SELECT * FROM {self._TABLE_NAME} WHERE {self._ID}=%s"
        cursor.execute(query, (photo_id,))
        result = cursor.fetchone()
        photo = {column: value for column, value in zip(cursor.column_names, result)}
        self.disconnect(cursor, conn)
        return photo
