from flask import Flask, render_template, session, url_for, Blueprint, redirect, request, render_template_string, \
    make_response
import base64
import pickle
from ..models.CartModel import *

umapal = Blueprint('umapal', __name__)


@umapal.route('/umapal/processpayment', methods=['POST'])
def processpayment():
    if 'login' not in session:
        session['login'] = False
    if 'password' not in session:
        session['password'] = True

    with open('./umapal/processpayment.html', 'r') as f:
        template = f.read()

    user_cart_encoded = request.form['user_cart']
    user_cart = pickle.loads(base64.b64decode(user_cart_encoded))
    return make_response(render_template_string(template, user_cart=user_cart, user_cart_encoded=user_cart_encoded, form=request.form))

