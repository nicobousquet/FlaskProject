from flask import render_template, Blueprint

from ..models.PhotosModel import *

getposter = Blueprint('GetPoster', __name__)

PhotosModel = PhotosModel()

@getposter.route('/getposter')
@getposter.route('/getposter/<region>')
def index(region='Africa'):
    photos = PhotosModel.select_photos_by_continent(region)

    return render_template('navbar.html') + render_template('getposter.html', region=region, photos=photos)