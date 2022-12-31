from models.db_config import db_connect


def select_photos_by_continent(continent):
    connection = db_connect('root', 'root', 'localhost', 'php_db')
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM {} WHERE continent=%s".format('Photos'), (continent,))
    result = cursor.fetchall()
    cursor.close()
    connection.close()
    return result


def select_photo_by_id(id):
    connection = db_connect('root', 'root', 'localhost', 'php_db')
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM {} WHERE id=%s".format('Photos'), (id,))
    result = cursor.fetchall()
    cursor.close()
    connection.close()
    return result
