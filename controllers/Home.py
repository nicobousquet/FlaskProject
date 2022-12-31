from flask import Flask, render_template, session, url_for, Blueprint

home = Blueprint('Home', __name__)


@home.route('/')
def index():
    if 'login' not in session:
        session['login'] = False
    if 'password' not in session:
        session['password'] = True
    return render_template('navbar.html') + render_template('home.html')
