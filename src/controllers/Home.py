from flask import render_template, session, Blueprint

# This blueprint defines the / and /home routes, which display the homepage of the application.

# Create a Blueprint named 'Home'.
home = Blueprint('Home', __name__)


# Define the / and /home routes.
@home.route('/')
@home.route('/home')
def index():
    # Render the homepage template.
    return render_template('navbar.html') + render_template('home.html')
