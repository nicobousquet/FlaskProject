# This blueprint defines the /adminpage route, which allows an administrator to view
# information about all of the requests made to the application.

from flask import render_template, Blueprint, session, redirect, request, url_for

# Import the select_requests function from the RequestsModel module.
from ..models.RequestsModel import *

# Create a Blueprint named 'AdminPage'.
adminpage = Blueprint('AdminPage', __name__)


# Define the /adminpage route.
@adminpage.route('/adminpage')
def index():
    # If the user is logged in...
    if session['login']:
        # ...and his email is "nbousquet99@gmail.com",
        if session['email'] == "nbousquet99@gmail.com":
            # Retrieve a list of request information from the database.
            requests = select_requests()

            # Render the template with the request information.
            return render_template('navbar.html') + render_template('adminpage.html', requests=requests)

    # If the user is not logged in or their email is not "nbousquet99@gmail.com",
    # redirect them to the MyAccount.index route.
    return redirect(url_for('MyAccount.index'))
