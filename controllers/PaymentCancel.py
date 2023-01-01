from flask import Flask, render_template, session, url_for, Blueprint, redirect, request

paymentcancel = Blueprint('PaymentCancel', __name__)


@paymentcancel.route('/paymentcancel', methods=['POST'])
def index():
    if 'login' not in session:
        session['login'] = False
    if 'password' not in session:
        session['password'] = True

    actual_request = request.form['cartID']
    return render_template('navbar.html') + render_template('paymentcancel.html', actual_request=actual_request)