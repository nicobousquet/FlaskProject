from flask import render_template, session, url_for, Blueprint, redirect

paymentform = Blueprint('PaymentForm', __name__)


@paymentform.route('/paymentform')
def index():
    if 'email' in session:
        return render_template('navbar.html') + render_template('paymentform.html')
    else:
        return redirect(url_for('MyAccount'))
