from flask import render_template, Blueprint, session, redirect, request, url_for
from ..models.RequestsModel import RequestModel

adminpage = Blueprint('AdminPage', __name__)

RequestModel = RequestModel()


@adminpage.route('/adminpage')
def index():
    if session['login']:
        if session['email'] == "nbousquet99@gmail.com":
            requests = RequestModel.select_requests()

            return render_template('navbar.html') + render_template('adminpage.html', requests=requests)

    return redirect(url_for('MyAccount.index'))
