# This blueprint defines the /getposter and /getposter/<region> routes, which allow the
# user to browse and select photos by region.
from flask import render_template, session, Blueprint

# Import the select_photos_by_continent function from the PhotosModel module.
from ..models.PhotosModel import *

# Create a Blueprint named 'GetPoster'.
getposter = Blueprint('GetPoster', __name__)


# Define the /getposter and /getposter/<region> routes.
@getposter.route('/getposter')
@getposter.route('/getposter/<region>')
def index(region='Africa'):
    # Retrieve a list of photos from the database for the specified region.
    photos = select_photos_by_continent(region)

    # Render the template with the region and photos information.
    return render_template('navbar.html') + render_template('getposter.html', region=region, photos=photos)
