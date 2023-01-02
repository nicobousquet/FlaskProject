from flask import session, Blueprint, request, redirect
from ..models.UsersModel import *

# Navbar blueprint handles the functionality related to the navbar
# This includes logging in and disconnecting users
navbar = Blueprint('Navbar', __name__)


# login function handles logging in users
@navbar.route('/navbar/login', methods=['POST'])
def login():
    # Get the email and password from the login form
    email = request.form['email_login']
    password = request.form['password_login']
    # Select the user from the database using the provided email and password
    user = select_user_by_email_and_password(email, password)

    # If the user exists, add their name and email to the session
    if user:
        session['login'] = user[0][0]
        session['email'] = user[0][2]
        session['password'] = True
    else:
        # If the user doesn't exist, set the password key in the session to False
        session['password'] = False

    # Redirect the user back to the page they were on before logging in
    return redirect(request.referrer)


# disconnect_user function handles disconnecting users
@navbar.route('/navbar/disconnect_user', methods=['POST'])
def disconnect_user():
    # Remove the login, email, and password keys from the session
    session.pop('login', None)
    session.pop('email', None)
    session.pop('password', None)
    # Redirect the user back to the page they were on before disconnecting
    return redirect(request.referrer)
