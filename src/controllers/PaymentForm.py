from flask import render_template, session, url_for, Blueprint, redirect

# PaymentForm blueprint handles the rendering of the payment form
# for the user to enter their payment information
paymentform = Blueprint('PaymentForm', __name__)


# index function handles the rendering of the payment form
# It redirects the user to the login page if they are not logged in
@paymentform.route('/paymentform')
def index():
    # Check if the user is logged in
    if 'email' in session:
        # Render the payment form template
        return render_template('navbar.html') + render_template('paymentform.html')
    else:
        # Redirect the user to the login page
        return redirect(url_for('MyAccount'))
