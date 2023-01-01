from flask import Flask, render_template, session, url_for, Blueprint
from controllers.Home import home
from controllers.GetPoster import getposter
from controllers.MyCart import mycart
from controllers.Navbar import navbar
from controllers.MyAccount import myaccount
from controllers.PosterDescription import posterdescription
from controllers.PaymentForm import paymentform
from controllers.CallUMAPal import callumapal
from controllers.MyOrders import myorders
from controllers.PaymentSuccess import paymentsuccess
from controllers.PaymentCancel import paymentcancel
from umapal.ProcessPayment import umapal


app = Flask(__name__)

app.register_blueprint(home)
app.register_blueprint(getposter)
app.register_blueprint(mycart)
app.register_blueprint(navbar)
app.register_blueprint(myaccount)
app.register_blueprint(posterdescription)
app.register_blueprint(paymentform)
app.register_blueprint(callumapal)
app.register_blueprint(myorders)
app.register_blueprint(paymentsuccess)
app.register_blueprint(paymentcancel)
app.register_blueprint(umapal)
app.secret_key = 'my-secret-key'

if __name__ == '__main__':
    app.run()
