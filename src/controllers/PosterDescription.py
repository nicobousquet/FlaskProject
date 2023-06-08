from flask import render_template, session, Blueprint
from ..models.PhotosModel import PhotosModel

posterdescription = Blueprint('PosterDescription', __name__)

PhotoModel = PhotosModel()

@posterdescription.route('/posterdescription')
@posterdescription.route('/posterdescription/<id>')
def index(id=28):
    photo = PhotoModel.select_photo_by_id(id)

    return render_template('navbar.html') + render_template('posterdescription.html', photo=photo)
