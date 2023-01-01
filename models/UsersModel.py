from models.db_config import db_connect


def insert_new_user(first_name, last_name, email, password):
    connection = db_connect()
    cursor = connection.cursor()
    query = "INSERT INTO {} (first_name, last_name, email, password) VALUES (%s, %s, %s, %s)".format('Users')
    values = (first_name, last_name, email, password)
    cursor.execute(query, values)
    connection.commit()
    cursor.close()
    connection.close()


def select_user_by_email_and_password(email, password):
    connection = db_connect()
    cursor = connection.cursor()
    query = "SELECT * FROM {} WHERE email = %s AND password = %s".format('Users')
    values = (email, password)
    cursor.execute(query, values)
    return cursor.fetchall()


def select_user_by_email(email):
    connection = db_connect()
    cursor = connection.cursor()
    query = "SELECT * FROM {} WHERE email = %s".format('Users')
    values = (email,)
    cursor.execute(query, values)
    return cursor.fetchall()
