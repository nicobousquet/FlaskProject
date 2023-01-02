from flask import render_template, session, Blueprint
from ..models.PhotosModel import *

getposter = Blueprint('GetPoster', __name__)

@getposter.route('/getposter/')
@getposter.route('/getposter/<region>')
def index(region = 'Africa'):
    photos = select_photos_by_continent(region)
    return render_template('navbar.html') + render_template('getposter.html', region=region, photos=photos)
