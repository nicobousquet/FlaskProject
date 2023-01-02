import base64

from flask import render_template, session, Blueprint, request
from models.OrdersModel import *
from models.CartModel import *
import datetime
import pickle

paymentsuccess = Blueprint('PaymentSuccess', __name__)


@paymentsuccess.route('/paymentsuccess', methods=['POST'])
def index():
    actual_request = request.form['cartID']
    user_cart = pickle.loads(base64.b64decode(request.form['user_cart_encoded']))
    date = datetime.datetime.now().strftime("%d %b, %Y")
    for i in range(len(user_cart)):
        insert_order(session['email'], request.form['cartID'], user_cart[i][2], user_cart[i][5],
                     user_cart[i][4], user_cart[i][3], date)
        delete_all()
    return render_template('navbar.html') + render_template('paymentsuccess.html', user_cart=user_cart, actual_request=actual_request)


