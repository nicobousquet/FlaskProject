import binascii
import pickle
import os
from flask import Flask, render_template, session, url_for, Blueprint, request
import base64
from models.CartModel import *

callumapal = Blueprint('CallUMAPal', __name__)


@callumapal.route('/umapal/callumapal', methods=['POST'])
def index():
    if 'login' not in session:
        session['login'] = False
    if 'password' not in session:
        session['password'] = True

    email = session.get('email')
    user_cart = select_item_from_cart(email)
    user_cart = base64.b64encode(pickle.dumps(user_cart))
    actual_request = binascii.hexlify(os.urandom(16)).decode('utf-8')
    return render_template('callumapal.html', form=request.form, user_cart=str(user_cart, 'utf-8'), actual_request=actual_request)
