# This module defines a before_request function that is intended to be used as a Flask
# before_request handler. It has two inner functions: save_request and session_check.

from flask import Flask, request, session
from datetime import datetime


def before_request(app):
    # This inner function is a Flask before_request handler that checks the session for
    # the 'login' and 'password' keys. If they are not present, it sets their values to
    # False and True, respectively.
    @app.before_request
    def session_check():
        if 'login' not in session:
            session['login'] = False
        if 'password' not in session:
            session['password'] = True
