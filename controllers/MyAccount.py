from flask import Flask, render_template, session, url_for, Blueprint

myaccount = Blueprint('MyAccount', __name__)


@myaccount.route('/myaccount')
def index():
    if 'login' not in session:
        session['login'] = False
    if 'password' not in session:
        session['password'] = True
    data = {}
    return render_template('navbar.html', data=data) + render_template('myaccount.html', data=data)
