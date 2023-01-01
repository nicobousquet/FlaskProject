from flask import render_template, session, Blueprint, request, redirect
from models.UsersModel import *

myaccount = Blueprint('MyAccount', __name__)


@myaccount.route('/myaccount')
def index():
    if 'login' not in session:
        session['login'] = False
    if 'password' not in session:
        session['password'] = True
    data = {}
    return render_template('navbar.html', data=data) + render_template('myaccount.html', data=data)


@myaccount.route('/myaccount/add_new_user', methods=['POST', 'GET'])
def add_new_user():
    if not email_used(request.form['email']):
        insert_new_user(request.form['fname'], request.form['lname'], request.form['email'], request.form['password'])
        session['login'] = request.form['fname']
        session['email'] = request.form['email']
        return redirect('/home')
    else:
        emailused = True
        return render_template('navbar.html') + render_template('myaccount.html', email_used=emailused)


def email_used(email):
    user = select_user_by_email(request.form['email'])
    if len(user) > 0:
        return True
    return False
