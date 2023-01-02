from flask import render_template, session, url_for, Blueprint, redirect, request
from ..models.CartModel import *

mycart = Blueprint('MyCart', __name__)


@mycart.route('/mycart')
def index():
    if 'email' in session:
        user_cart = select_item_from_cart(session['email'])
        cart_total_price = get_cart_total_price(user_cart)
        return render_template('navbar.html') + render_template('mycart.html', user_cart=user_cart,
                                                                cart_total_price=cart_total_price)
    else:
        return redirect(url_for('MyAccount.index'))


def get_cart_total_price(user_cart):
    cart_price = 0
    for i in range(len(user_cart)):
        cart_price += user_cart[i][5]
    return cart_price


@mycart.route('/mycart/add_to_cart/<id>', methods=['POST'])
def add_to_cart(id):
    if 'email' in session:
        price = 100000
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

        price = price * int(request.form['quantity'])
        insert_item_into_cart(session['email'], id, request.form['quantity'], request.form['radio_buttons'], price)
        return redirect(url_for('MyCart.index'))
    else:
        return redirect(url_for('MyAccount.index'))


@mycart.route('/mycart/remove_item/<poster_id>/<quantity>/<size>')
def remove_item(poster_id, quantity, size):
    delete_item(session['email'], poster_id, quantity, size)
    return redirect(url_for('MyCart.index'))


@mycart.route('/mycart/remove_all_items')
def remove_all_items():
    delete_all()
    return redirect(url_for('MyCart.index'))
