from flask import render_template, session, Blueprint

home = Blueprint('Home', __name__)


@home.route('/')
@home.route('/home')
def index():
    if 'login' not in session:
        session['login'] = False
    if 'password' not in session:
        session['password'] = True
    return render_template('navbar.html') + render_template('home.html')
