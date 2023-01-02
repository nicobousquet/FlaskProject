# This blueprint defines the /myaccount and /myaccount/add_new_user routes, which allow the
# user to view and update their account information.

# Import the necessary functions and modules.
from flask import render_template, session, Blueprint, request, redirect

# Import the select_user_by_email and insert_new_user functions from the UsersModel module.
from ..models.UsersModel import *

# Create a Blueprint named 'MyAccount'.
myaccount = Blueprint('MyAccount', __name__)


# Define the /myaccount route.
@myaccount.route('/myaccount')
def index():
    # Render the account information template.
    return render_template('navbar.html') + render_template('myaccount.html')


# Define the /myaccount/add_new_user route, which can be accessed using either the POST or GET method.
@myaccount.route('/myaccount/add_new_user', methods=['POST', 'GET'])
def add_new_user():
    # Check if the email provided in the form data is already in use.
    if not email_used(request.form['email']):
        # user to the database and set the user's name and email in the session.
        insert_new_user(request.form['fname'], request.form['lname'], request.form['email'], request.form['password'])
        session['login'] = request.form['fname']
        session['email'] = request.form['email']
        return redirect('/home')
    else:
        # If the email is in use, set the email_used flag to True and render the template with the flag.
        emailused = True
        return render_template('navbar.html') + render_template('myaccount.html', email_used=emailused)

    # This function checks if an email is already in use by another user.


def email_used(email):
    # Retrieve a user from the database using the provided email.
    user = select_user_by_email(request.form['email'])
    # Return True if a user was found, otherwise return False.
    if len(user) > 0:
        return True
    return False
