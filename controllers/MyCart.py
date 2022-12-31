from flask import Flask, render_template, session, url_for, Blueprint

mycart = Blueprint('MyCart', __name__)


@mycart.route('/mycart')
def index():
    if 'login' not in session:
        session['login'] = False
    if 'password' not in session:
        session['password'] = True
    return render_template('mycart.html')
