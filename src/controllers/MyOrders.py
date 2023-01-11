from flask import render_template, session, url_for, Blueprint, redirect, make_response
from ..models.OrdersModel import *

# Create a blueprint for the myorders module.
myorders = Blueprint('MyOrders', __name__)


# Define the /myorders route, which displays the user's orders.
@myorders.route('/myorders', methods=['POST', 'GET'])
def index():
    # Check if the user is logged in.
    if 'email' in session:
        # Get the user's orders.
        user_orders_tmp = select_orders(session['email'])
        # Check if the user has any orders.
        if len(user_orders_tmp) > 0:
            # Initialize a list to hold the user's orders.
            user_orders = [[user_orders_tmp[0]]]
            # Initialize a counter for the orders list.
            i = 0
            # Iterate through the list of orders.
            for j in range(1, len(user_orders_tmp)):
                # Check if the current order is part of the same group as the previous order.
                if user_orders_tmp[j][2] == user_orders_tmp[j - 1][2]:
                    # Add the current order to the current group.
                    user_orders[i].append(user_orders_tmp[j])
                else:
                    # Calculate the total price for the current group.
                    user_orders[i].append(get_order_total_price(user_orders[i]))
                    # Increment the counter.
                    i += 1
                    # Start a new group with the current order.
                    user_orders.append([user_orders_tmp[j]])

            # Calculate the total price for the final group.
            user_orders[i].append(get_order_total_price(user_orders[i]))
            # Render the template with the orders information.
            return render_template('navbar.html', user_orders=user_orders) + render_template('myorders.html',
                                                                                             user_orders=user_orders)
        else:
            return render_template('navbar.html', user_orders=[]) + render_template('myorders.html', user_orders=[])
    else:
        # Redirect to the login page.
        return redirect(url_for('MyAccount.index'))


def get_order_total_price(user_order):
    # Initialize the total price to 0.
    cart_price = 0
    # Iterate through the order items.
    for i in range(len(user_order)):
        # Add the item's price to the total price.
        cart_price += user_order[i][4]
    # Return the total price.
    return cart_price
