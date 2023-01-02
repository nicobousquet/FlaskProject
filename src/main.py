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
from src.umapal.ProcessPayment import umapal
from src.main_utils import *

app = Flask(__name__)
before_request(app)

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
