# This blueprint defines the /umapal/callumapal route, which allows the user to make a
# payment through UMAPal.

# Import the necessary functions and modules.
import binascii
import pickle
import os
from flask import render_template, session, Blueprint, request
import base64

# Import the select_item_from_cart function from the CartModel module.
from ..models.CartModel import *

# Create a Blueprint named 'CallUMAPal'.
callumapal = Blueprint('CallUMAPal', __name__)


# Define the /umapal/callumapal route, which can only be accessed using the POST method.
@callumapal.route('/umapal/callumapal', methods=['POST'])
def index():
    # Get the user's email from the session.
    email = session.get('email')

    # Retrieve the items in the user's cart from the database.
    user_cart = select_item_from_cart(email)

    # Encode the cart data as a base64 string.
    user_cart = base64.b64encode(pickle.dumps(user_cart))

    # Generate a random request identifier.
    actual_request = binascii.hexlify(os.urandom(16)).decode('utf-8')

    # Render the template with the form data, cart data, and request identifier.
    return render_template('callumapal.html', form=request.form, user_cart=str(user_cart, 'utf-8'),
                           actual_request=actual_request)
