from flask import render_template, session, url_for, Blueprint, redirect
from models.OrdersModel import *

myorders = Blueprint('MyOrders', __name__)


@myorders.route('/myorders', methods=['POST', 'GET'])
def index():
    if 'email' in session:
        user_orders_tmp = select_orders(session['email'])
        if user_orders_tmp:
            user_orders = [[user_orders_tmp[0]]]
            i = 0
            for j in range(1, len(user_orders_tmp)):
                if user_orders_tmp[j][2] == user_orders_tmp[j - 1][2]:
                    user_orders[i].append(user_orders_tmp[j])
                else:
                    user_orders[i].append(get_order_total_price(user_orders[i]))
                    i += 1
                    user_orders.append([user_orders_tmp[j]])
            user_orders[i].append(get_order_total_price(user_orders[i]))
            return render_template('navbar.html', user_orders=user_orders) + render_template('myorders.html',
                                                                                             user_orders=user_orders)
        else:
            return render_template('navbar.html', user_orders=[]) + render_template('myorders.html', user_orders=[])
    else:
        return redirect(url_for('MyAccount.index'))


def get_order_total_price(user_order):
    cart_price = 0
    for i in range(len(user_order)):
        cart_price += user_order[i][4]
    return cart_price
