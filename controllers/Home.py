from flask import render_template, session, Blueprint

home = Blueprint('Home', __name__)


@home.route('/')
@home.route('/home')
def index():
    return render_template('navbar.html') + render_template('home.html')
