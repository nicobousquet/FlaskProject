# This is the main module of a Flask application. It sets up the Flask app,
# imports and registers all of the route functions as blueprints, and runs the app.
import sys
# Add the parent directory to the Python search path
sys.path.append('..')
# Import the route functions from the controllers module.
from src.controllers.Home import home
from src.controllers.GetPoster import getposter
from src.controllers.MyCart import mycart
from src.controllers.Navbar import navbar
from src.controllers.MyAccount import myaccount
from src.controllers.PosterDescription import posterdescription
from src.controllers.PaymentForm import paymentform
from src.controllers.CallUMAPal import callumapal
from src.controllers.MyOrders import myorders
from src.controllers.PaymentSuccess import paymentsuccess
from src.controllers.PaymentCancel import paymentcancel
from src.controllers.AdminPage import adminpage

# Import the UMAPal payment processing module and some utility functions.
from src.umapal.ProcessPayment import umapal
from src.main_utils import *

# Create a Flask app.
app = Flask(__name__)

# Call the before request function before each request to the app.
before_request(app)

# Register all of the route functions as blueprints with the Flask app.
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

# Set a secret key for the Flask app.
app.secret_key = 'my-secret-key'

if __name__ == '__main__':
    app.run()
