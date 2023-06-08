from flask import render_template, session, url_for, Blueprint, redirect, make_response
from ..models.OrdersModel import OrdersModel

myorders = Blueprint('MyOrders', __name__)

OrderModel = OrdersModel()


@myorders.route('/myorders', methods=['POST', 'GET'])
def index():
    if 'email' in session:
        user_orders_tmp = OrderModel.select_orders(session['email'])
        if len(user_orders_tmp) > 0:
            user_orders = [{'items': [user_orders_tmp[0]]}]
            i = 0
            for j in range(1, len(user_orders_tmp)):
                if user_orders_tmp[j]['order_id'] == user_orders_tmp[j - 1]['order_id']:
                    user_orders[i]['items'].append(user_orders_tmp[j])
                else:
                    user_orders[i]['order_total_price'] = get_order_total_price(user_orders[i]['items'])
                    i += 1
                    user_orders.append({'items': [user_orders_tmp[j]]})

            user_orders[i]['order_total_price'] = get_order_total_price(user_orders[i]['items'])
            return render_template('navbar.html', user_orders=user_orders) + render_template('myorders.html', user_orders=user_orders)
        else:
            return render_template('navbar.html', user_orders=[]) + render_template('myorders.html', user_orders=[])
    else:
        return redirect(url_for('MyAccount.index'))


def get_order_total_price(user_order):
    cart_price = 0
    for i in range(len(user_order)):
        cart_price += user_order[i]['price']
    return cart_price
