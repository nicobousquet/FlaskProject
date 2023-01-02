# Import the database connection function
from .db_config import db_connect


def select_photos_by_continent(continent):
    """
    Gets all the photos from the 'Photos' table in the database that have the specified continent.

    Parameters:
        continent (str): the continent to filter the photos by.

    Returns:
        A list of tuples, where each tuple represents a photo in the 'Photos' table that has the specified continent.
    """
    connection = db_connect()
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM {} WHERE continent=%s".format('Photos'), (continent,))
    result = cursor.fetchall()
    cursor.close()
    connection.close()
    return result


def select_photo_by_id(id):
    """
    Gets the photo from the 'Photos' table in the database with the specified ID.

    Parameters:
        id (int): the ID of the photo to retrieve.

    Returns:
        A list of tuples, where each tuple represents a photo in the 'Photos' table that has the specified ID.
    """
    connection = db_connect()
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM {} WHERE id=%s".format('Photos'), (id,))
    result = cursor.fetchall()
    cursor.close()
    connection.close()
    return result
