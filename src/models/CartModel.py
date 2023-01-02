from ..models.db_config import db_connect


def insert_item_into_cart(email_user, photo_id, quantity, size, price):
    connection = db_connect('root', 'root', 'localhost', 'php_db')
    cursor = connection.cursor()
    query = "INSERT INTO Cart (email_user, photo_id, quantity, size, price) VALUES (%s, %s, %s, %s, %s)"
    cursor.execute(query, (email_user, photo_id, quantity, size, price))
    connection.commit()
    connection.close()


def select_item_from_cart(email):
    connection = db_connect('root', 'root', 'localhost', 'php_db')
    cursor = connection.cursor()
    query = "SELECT * FROM Cart INNER JOIN Photos ON Photos.id = Cart.photo_id WHERE email_user = %s"
    cursor.execute(query, (email,))
    result = cursor.fetchall()
    connection.close()
    return result


def delete_item(email, id, quantity, size):
    connection = db_connect()
    cursor = connection.cursor()
    query = "DELETE FROM Cart WHERE email_user = %s AND photo_id = %s AND quantity = %s AND size = %s LIMIT 1"
    cursor.execute(query, (email, id, quantity, size))
    connection.commit()
    connection.close()


def delete_all():
    connection = db_connect()
    cursor = connection.cursor()
    query = "TRUNCATE TABLE Cart"
    cursor.execute(query)
    connection.commit()
    connection.close()
