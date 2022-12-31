from flask import Flask, render_template, session, url_for, Blueprint
from controllers.Home import home
from controllers.GetPoster import getposter
from controllers.MyCart import mycart
from controllers.Navbar import navbar
from controllers.MyAccount import myaccount


app = Flask(__name__)

app.register_blueprint(home)
app.register_blueprint(getposter)
app.register_blueprint(mycart)
app.register_blueprint(navbar)
app.register_blueprint(myaccount)
app.secret_key = 'your-secret-key'

if __name__ == '__main__':
    app.run()
