from flask import render_template, session, Blueprint
from ..models.PhotosModel import *

posterdescription = Blueprint('PosterDescription', __name__)

@posterdescription.route('/posterdescription/')
@posterdescription.route('/posterdescription/<id>')
def index(id = 3):
    photo = select_photo_by_id(id)
    return render_template('navbar.html') + render_template('posterdescription.html', photo=photo)
