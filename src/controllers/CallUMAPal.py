import binascii
import pickle
import os
from flask import render_template, session, Blueprint, request
import base64
from ..models.CartModel import CartModel

callumapal = Blueprint('CallUMAPal', __name__)

CartModel = CartModel()


@callumapal.route('/umapal/callumapal', methods=['POST'])
def index():
    email = session.get('email')
    user_cart = CartModel.select_items_from_cart(email)
    user_cart = base64.b64encode(pickle.dumps(user_cart))
    actual_request = binascii.hexlify(os.urandom(16)).decode('utf-8')

    return render_template('callumapal.html', form=request.form, user_cart=str(user_cart, 'utf-8'), actual_request=actual_request)
