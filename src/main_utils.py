# This module defines a before_request function that is intended to be used as a Flask
# before_request handler. It has two inner functions: save_request and session_check.

from flask import Flask, request, session
from datetime import datetime
import models.RequestsModel

# Import the RequestsModel module, which contains the insert_request function.
from .models.RequestsModel import *

RequestModel = RequestModel()


def before_request(app):
    # This inner function is a Flask before_request handler that saves information about
    # the incoming request to a database.
    @app.before_request
    def save_request():
        # Get the request method and URL.
        method = request.method
        url = request.url

        # Get the IP address and port number of the incoming request.
        ip_addr = request.remote_addr
        port = request.environ.get('REMOTE_PORT')

        # If the port number is not available, set it to 'unittest'.
        if not port:
            port = 'unittest'

        # Get the current date and time.
        now = datetime.now()

        # Format the date and time using strftime.
        formatted_date = now.strftime('%d/%m/%Y %H:%M:%S')

        # Get the user's email from the session, if it is available.
        # If it is not available, set it to 'unknown'.
        if 'email' in session:
            email_user = session['email']
        else:
            email_user = 'unknown'

        # Insert the request information into the database using the insert_request function.
        RequestModel.insert_request(email_user, ip_addr, port, formatted_date, method, url)

    # This inner function is a Flask before_request handler that checks the session for
    # the 'login' and 'password' keys. If they are not present, it sets their values to
    # False and True, respectively.
    @app.before_request
    def session_check():
        if 'login' not in session:
            session['login'] = False
        if 'password' not in session:
            session['password'] = True
