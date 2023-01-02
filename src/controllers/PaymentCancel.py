from flask import render_template, session, Blueprint, request

paymentcancel = Blueprint('PaymentCancel', __name__)


# The index function is called when the user cancels their payment on UMAPAL's end
# It renders the paymentcancel template to display a message to the user
@paymentcancel.route('/paymentcancel', methods=['POST'])
def index():
    # Get the request id of the payment request that was cancelled
    actual_request = request.form['cartID']

    # Render the paymentcancel template with the request id as a parameter
    return render_template('navbar.html') + render_template('paymentcancel.html', actual_request=actual_request)
