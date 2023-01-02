# Import the database connection function
from .db_config import db_connect


def insert_order(email_user, order_id, photo_id, price, size, quantity, date):
    """
    Inserts a new order into the 'Orders' table in the database with the given information.

    Parameters:
        email_user (str): the email address of the user who placed the order.
        order_id (int): the ID of the order.
        photo_id (int): the ID of the photo being ordered.
        price (float): the price of the photo being ordered.
        size (str): the size of the photo being ordered.
        quantity (int): the number of copies of the photo being ordered.
        date (str): the date the order was placed, in the format 'YYYY-MM-DD HH:MM:SS'.
    """
    connection = db_connect()
    cursor = connection.cursor()
    sql = "INSERT INTO Orders (email_user, order_id, photo_id, quantity, size, price, date) VALUES (%s, %s, %s, %s, %s, %s, %s)"
    values = (email_user, order_id, photo_id, quantity, size, price, date)
    cursor.execute(sql, values)
    connection.commit()
    cursor.close()
    connection.close()


def select_orders(email_user):
    """
    Gets all the orders for the given user from the 'Orders' table in the database.

    Parameters:
        email_user (str): the email address of the user whose orders we are selecting.

    Returns:
        A list of tuples, where each tuple represents an order in the 'Orders' table.
    """
    connection = db_connect()
    cursor = connection.cursor()
    sql = "SELECT * FROM Orders INNER JOIN Photos ON Photos.id = Orders.photo_id WHERE email_user = %s ORDER BY date ASC, order_id"
    values = (email_user,)
    cursor.execute(sql, values)
    orders = cursor.fetchall()
    cursor.close()
    connection.close()
    return orders
