from flask import Flask, render_template, session, url_for, Blueprint
from models.PhotosModel import *

getposter = Blueprint('GetPoster', __name__)


@getposter.route('/getposter/<region>')
def index(region):
    if 'login' not in session:
        session['login'] = False
    if 'password' not in session:
        session['password'] = True

    photos = select_photos_by_continent(region)
    return render_template('navbar.html') + render_template('getposter.html', region=region, photos=photos)
