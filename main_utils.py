from flask import Flask, request, session
from datetime import datetime
from models.RequestsModel import *


def save_requests(app):
    @app.before_request
    def before_request():
        # Get the request method and URL
        method = request.method
        url = request.url
        ip_addr = request.remote_addr
        port = client_port = request.environ['REMOTE_PORT']

        now = datetime.now()

        # Format the date and time using strftime
        formatted_date = now.strftime('%d/%m/%Y %H:%M:%S')

        if 'email' in session:
            email_user = session['email']
        else:
            email_user = 'unknown'

        insert_request(email_user, ip_addr, port, formatted_date, method, url)
