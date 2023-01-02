import base64
from flask import render_template, session, Blueprint, request
from ..models.OrdersModel import *
from ..models.CartModel import *
import datetime
import pickle

paymentsuccess = Blueprint('PaymentSuccess', __name__)


# The index function handles the processing of a successful payment by UMAPAL
# It receives the request id and the user's cart, which are passed as POST parameters
# from the UMAPAL payment form

@paymentsuccess.route('/paymentsuccess', methods=['POST'])
def index():
    # Extract the request id and user's cart from the POST parameters
    actual_request = request.form['cartID']
    user_cart = pickle.loads(base64.b64decode(request.form['user_cart_encoded']))
    # Get the current date
    date = datetime.datetime.now().strftime("%d %b, %Y")

    # Iterate through the items in the user's cart
    # and insert each item as a new order in the orders table
    for i in range(len(user_cart)):
        insert_order(session['email'], request.form['cartID'], user_cart[i][2], user_cart[i][5],
                     user_cart[i][4], user_cart[i][3], date)

    # Clear the user's cart
    delete_all()

    # Render the payment success template with the user's cart and request id as parameters
    return render_template('navbar.html') + render_template('paymentsuccess.html', user_cart=user_cart,
                                                            actual_request=actual_request)
