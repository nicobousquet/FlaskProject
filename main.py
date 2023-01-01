from flask import Flask, request, session
from datetime import datetime
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
from controllers.AdminPage import adminpage
from umapal.ProcessPayment import umapal
from models.RequestsModel import *


def save_requests(app):
    @app.before_request
    def before_request():
        # Get the request method and URL
        method = request.method
        url = request.url

        # Get the request headers
        headers = request.headers

        # Get the request data
        data = request.data

        now = datetime.now()

        # Format the date and time using strftime
        formatted_date = now.strftime('%d/%m/%Y %H:%M:%S')

        if 'email' in session:
            email_user = session['email']
        else:
            email_user = 'unknown'

        insert_request(email_user, formatted_date, method, url)


app = Flask(__name__)
save_requests(app)

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
app.register_blueprint(adminpage)
app.register_blueprint(umapal)
app.secret_key = 'my-secret-key'

if __name__ == '__main__':
    app.run()
