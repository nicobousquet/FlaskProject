from flask import session, Blueprint, request, redirect
from ..models.UsersModel import UsersModel

navbar = Blueprint('Navbar', __name__)

UsersModel = UsersModel()


@navbar.route('/navbar/login', methods=['POST'])
def login():
    email = request.form['email_login']
    password = request.form['password_login']
    user = UsersModel.select_user_by_email_and_password(email, password)

    if user:
        session['login'] = user['first_name']
        session['email'] = user['email']
        session['password'] = True
    else:
        session['password'] = False

    return redirect(request.referrer)


@navbar.route('/navbar/disconnect_user', methods=['GET'])
def disconnect_user():
    session.pop('login', None)
    session.pop('email', None)
    session.pop('password', None)
    return redirect(request.referrer)
