from flask import Flask, render_template, session, url_for, Blueprint

getposter = Blueprint('GetPoster', __name__)


@getposter.route('/getposter/<region>')
def index(region):
    if 'login' not in session:
        session['login'] = False
    if 'password' not in session:
        session['password'] = True
    return render_template('getposter.html', region=region)
