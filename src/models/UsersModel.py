from .Model import Model
from typing import Dict, Any, Optional, List


class UsersModel(Model):
    TABLE_NAME = 'users'
    FIRST_NAME = 'first_name'
    LAST_NAME = 'last_name'
    EMAIL = 'email'
    PASSWORD = 'password'

    def __init__(self) -> None:
        super().__init__()

    def insert_new_user(self, first_name: str, last_name: str, email: str, password: str) -> None:
        cursor, conn = self.connect()
        query = f"INSERT INTO {UsersModel.TABLE_NAME} ({UsersModel.FIRST_NAME}, {UsersModel.LAST_NAME}, {UsersModel.LAST_NAME}, {UsersModel.PASSWORD}) VALUES (%s, %s, %s, %s)"
        values = (first_name, last_name, email, password)
        cursor.execute(query, values)
        conn.commit()
        self.disconnect(cursor, conn)

    def select_user_by_email_and_password(self, email: str, password: str) -> Optional[Dict[str, Any]]:
        cursor, conn = self.connect()
        query = f"SELECT * FROM {UsersModel.TABLE_NAME} WHERE {UsersModel.EMAIL} = %s AND {UsersModel.PASSWORD} = %s"
        values = (email, password)
        cursor.execute(query, values)
        result = cursor.fetchone()

        # Transform the tuple to a dictionary
        if result:
            user = {column: value for column, value in zip(cursor.column_names, result)}
            self.disconnect(cursor, conn)
            return user
        else:
            return None

    def select_user_by_email(self, email: str) -> List[Dict[str, Any]]:
        cursor, conn = self.connect()
        query = f"SELECT * FROM {UsersModel.TABLE_NAME} WHERE {UsersModel.EMAIL} = %s"
        values = (email,)
        cursor.execute(query, values)
        users = cursor.fetchall()
        self.disconnect(cursor, conn)
        return users

