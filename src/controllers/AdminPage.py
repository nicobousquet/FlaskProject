from flask import render_template, Blueprint, session, redirect, request, url_for
from ..models.RequestsModel import *

adminpage = Blueprint('AdminPage', __name__)


@adminpage.route('/adminpage')
def index():
    if 'login' in session:
        if session['email'] == "nbousquet99@gmail.com":
            requests = select_requests()

            # Render the template with the request information
            return render_template('navbar.html') + render_template('adminpage.html', requests=requests)

    return redirect(url_for('MyAccount.index'))
