# Import the database connection function
from .db_config import db_connect


def insert_item_into_cart(email_user, photo_id, quantity, size, price):
    """
    Inserts a new item into the cart in the database with the given information.

    Parameters:
        email_user (str): the email address of the user adding the item to the cart.
        photo_id (int): the ID of the photo being added to the cart.
        quantity (int): the number of copies of the photo being added.
        size (str): the size of the photo being added.
        price (float): the price of the photo being added.
    """
    connection = db_connect('root', 'root', 'localhost', 'php_db')
    cursor = connection.cursor()
    query = "INSERT INTO Cart (email_user, photo_id, quantity, size, price) VALUES (%s, %s, %s, %s, %s)"
    cursor.execute(query, (email_user, photo_id, quantity, size, price))
    connection.commit()
    connection.close()


def select_item_from_cart(email):
    """
    Gets all the items in the cart for the given user from the database.

    Parameters:
        email (str): the email address of the user whose cart we are selecting items from.

    Returns:
        A list of tuples, where each tuple represents an item in the cart.
    """
    connection = db_connect('root', 'root', 'localhost', 'php_db')
    cursor = connection.cursor()
    query = "SELECT * FROM Cart INNER JOIN Photos ON Photos.id = Cart.photo_id WHERE email_user = %s"
    cursor.execute(query, (email,))
    result = cursor.fetchall()
    connection.close()
    return result


def delete_item(email, id, quantity, size):
    """
    Deletes a specific item from the cart in the database with the given information.

    Parameters:
        email (str): the email address of the user whose cart we are deleting the item from.
        id (int): the ID of the photo being deleted.
        quantity (int): the number of copies of the photo being deleted.
        size (str): the size of the photo being deleted.
    """
    connection = db_connect()
    cursor = connection.cursor()
    query = "DELETE FROM Cart WHERE email_user = %s AND photo_id = %s AND quantity = %s AND size = %s LIMIT 1"
    cursor.execute(query, (email, id, quantity, size))
    connection.commit()
    connection.close()


def delete_all():
    """
    Deletes all items from the cart in the database.
    """
    connection = db_connect()
    cursor = connection.cursor()
    query = "TRUNCATE TABLE Cart"
    cursor.execute(query)
    connection.commit()
    connection.close()
