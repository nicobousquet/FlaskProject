# Import necessary functions and objects from the Flask library
from flask import Flask, render_template, session, url_for, Blueprint, redirect, request, render_template_string, \
    make_response

# Import the base64 module for encoding and decoding data
import base64

# Import the pickle module for serializing and deserializing Python objects
import pickle

# Import the CartModel class
from ..models.CartModel import *

# Create a Flask Blueprint object with the name 'umapal'
umapal = Blueprint('umapal', __name__)


@umapal.route('/umapal/processpayment', methods=['POST'])
def processpayment():
    """
    Processes the payment for a user's cart.

    The function expects the 'user_cart' and 'user_cart_encoded' values to be present in the POST request's form data.

    Returns:
        The payment processing page for the user's cart, with the user's cart and cart data encoded in the form data as variables.
    """
    # Set default values for the 'login' and 'password' session variables
    if 'login' not in session:
        session['login'] = False
    if 'password' not in session:
        session['password'] = True

    # Open the 'processpayment.html' template file for reading
    with open('./umapal/processpayment.html', 'r') as f:
        template = f.read()

    # Deserialize the 'user_cart' object from the encoded form data
    user_cart_encoded = request.form['user_cart']
    user_cart = pickle.loads(base64.b64decode(user_cart_encoded))

    # Render the payment processing page with the 'user_cart' and 'user_cart_encoded' variables,
    # and create a response object with the rendered template
    return make_response(
        render_template_string(template, user_cart=user_cart, user_cart_encoded=user_cart_encoded, form=request.form))
