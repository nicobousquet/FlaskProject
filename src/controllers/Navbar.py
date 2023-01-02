from flask import session, Blueprint, request, redirect
from ..models.UsersModel import *

navbar = Blueprint('Navbar', __name__)


@navbar.route('/navbar/login', methods=['POST'])
def login():
    email = request.form['email_login']
    password = request.form['password_login']
    user = select_user_by_email_and_password(email, password)
    if user:
        session['login'] = user[0][0]
        session['email'] = user[0][2]
        session['password'] = True
    else:
        session['password'] = False

    return redirect(request.referrer)


@navbar.route('/navbar/disconnect_user', methods=['POST'])
def disconnect_user():
    session.pop('login', None)
    session.pop('email', None)
    session.pop('password', None)
    return redirect(request.referrer)
