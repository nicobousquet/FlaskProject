# Import necessary modules and functions
from flask import render_template, session, Blueprint
from ..models.PhotosModel import *

# Create a Blueprint object to handle the functionality of displaying poster descriptions
posterdescription = Blueprint('PosterDescription', __name__)


# Define the index function to handle rendering the poster description page
@posterdescription.route('/posterdescription')
@posterdescription.route('/posterdescription/<id>')
def index(id=28):
    # Select the photo data for the poster with the specified id
    photo = select_photo_by_id(id)

    # Render the navbar and posterdescription templates, passing the photo data as a parameter
    return render_template('navbar.html') + render_template('posterdescription.html', photo=photo)
