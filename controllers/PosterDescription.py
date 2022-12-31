from flask import Flask, render_template, session, url_for, Blueprint
from models.PhotosModel import *

posterdescription = Blueprint('PosterDescription', __name__)


@posterdescription.route('/posterdescription/<id>')
def index(id):
    if 'login' not in session:
        session['login'] = False
    if 'password' not in session:
        session['password'] = True

    photo = select_photo_by_id(id)
    return render_template('navbar.html') + render_template('posterdescription.html', photo=photo)
