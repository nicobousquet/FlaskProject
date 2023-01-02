# This blueprint defines routes for displaying and modifying the items in the user's cart.

# Import the necessary functions and modules.
from flask import render_template, session, url_for, Blueprint, redirect, request

# Import the select_item_from_cart, insert_item_into_cart, delete_item, and delete_all functions
# from the CartModel module.
from ..models.CartModel import *

# Create a Blueprint named 'MyCart'.
mycart = Blueprint('MyCart', __name__)


# Define the /mycart route.
@mycart.route('/mycart')
def index():
    # Check if the user is logged in.
    if 'email' in session:
        # Retrieve the user's cart from the database.
        user_cart = select_item_from_cart(session['email'])
        # Calculate the total price of the items in the user's cart.
        cart_total_price = get_cart_total_price(user_cart)
        # Render the template with the user's cart and the total price of the items.
        return render_template('navbar.html') + render_template('mycart.html', user_cart=user_cart,
                                                                cart_total_price=cart_total_price)
    else:
        # If the user is not logged in, redirect them to the login page.
        return redirect(url_for('MyAccount.index'))


# Define the get_cart_total_price function, which calculates the total price of the items in the user's cart.
def get_cart_total_price(user_cart):
    # Initialize the cart_price variable to 0.
    cart_price = 0
    # Loop through the items in the user's cart.
    for i in range(len(user_cart)):
        # Add the price of the current item to the total price.
        cart_price += user_cart[i][5]
    # Return the total price.
    return cart_price


# Define the /mycart/add_to_cart/<id> route, which adds an item to the user's cart.
@mycart.route('/mycart/add_to_cart/<id>', methods=['POST'])
def add_to_cart(id):
    # Check if the user is logged in.
    if 'email' in session:
        # Initialize the price variable to 100000.
        price = 100000
        # Set the price based on the selected size.
        if request.form['radio_buttons'] == '40x50':
            price = 29.99
        elif request.form['radio_buttons'] == '50x70':
            price = 39.99
        elif request.form['radio_buttons'] == '60x90':
            price = 59.99
        elif request.form['radio_buttons'] == '100x150':
            price = 79.99
        elif request.form['radio_buttons'] == '120x180':
            price = 99.99

        # Calculate the total price of the item based on the quantity.
        price = price * int(request.form['quantity'])
        # Insert the item into the user's cart.
        insert_item_into_cart(session['email'], id, request.form['quantity'], request.form['radio_buttons'], price)
        # Redirect the user to the cart page.
        return redirect(url_for('MyCart.index'))
    else:
        # If the user is not logged in, redirect them to the login page.
        return redirect(url_for('MyAccount.index'))


# Define the /mycart/remove_item/<poster_id>/<quantity>/<size> route, which removes an item from the user's cart.
@mycart.route('/mycart/remove_item/<poster_id>/<quantity>/<size>')
def remove_item(poster_id, quantity, size):
    # Remove the item from the user's cart.
    delete_item(session['email'], poster_id, quantity, size)
    # Redirect the user to the cart page.
    return redirect(url_for('MyCart.index'))


# Define the /mycart/remove_all_items route, which removes all items from the user's cart.
@mycart.route('/mycart/remove_all_items')
def remove_all_items():
    # Remove all items from the user's cart.
    delete_all()
    # Redirect the user to the cart page.
    return redirect(url_for('MyCart.index'))
