from flask import Flask, render_template, session, url_for, Blueprint, request, redirect

navbar = Blueprint('Navbar', __name__)


@navbar.route('/navbar/login', methods=['POST'])
def login():
    if 'login' not in session:
        session['login'] = False
    if 'password' not in session:
        session['password'] = True
    email = request.form['email_login']
    password = request.form['password_login']
    user = UsersModel.select_user_by_email_and_password(email, password)
    if user:
        session['login'] = user[0].first_name
        session['email'] = email
        session['password'] = True
    else:
        session['password'] = False
    return redirect(request.referrer)
