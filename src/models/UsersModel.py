# Import the database connection function
from .db_config import db_connect


def insert_new_user(first_name, last_name, email, password):
    """
    Inserts a new user into the 'Users' table in the database with the given information.

    Parameters:
        first_name (str): the first name of the user.
        last_name (str): the last name of the user.
        email (str): the email address of the user.
        password (str): the password of the user.
    """
    connection = db_connect()
    cursor = connection.cursor()
    query = "INSERT INTO {} (first_name, last_name, email, password) VALUES (%s, %s, %s, %s)".format('Users')
    values = (first_name, last_name, email, password)
    cursor.execute(query, values)
    connection.commit()
    cursor.close()
    connection.close()


def select_user_by_email_and_password(email, password):
    """
    Gets the user from the 'Users' table in the database with the specified email and password.

    Parameters:
        email (str): the email address of the user to retrieve.
        password (str): the password of the user to retrieve.

    Returns:
        A list of tuples, where each tuple represents

        a user in the 'Users' table that has the specified email and password.
    """
    connection = db_connect()
    cursor = connection.cursor()
    query = "SELECT * FROM {} WHERE email = %s AND password = %s".format('Users')
    values = (email, password)
    cursor.execute(query, values)
    return cursor.fetchall()


def select_user_by_email(email):
    """
    Gets the user from the 'Users' table in the database with the specified email.

    Parameters:
        email (str): the email address of the user to retrieve.

    Returns:
        A list of tuples, where each tuple represents a user in the 'Users' table that has the specified email.
    """
    connection = db_connect()
    cursor = connection.cursor()
    query = "SELECT * FROM {} WHERE email = %s".format('Users')
    values = (email,)
    cursor.execute(query, values)
    return cursor.fetchall()
