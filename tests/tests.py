import unittest
import sys
# Add the parent directory to the Python search path
sys.path.append('..')

# Import the Flask app from the 'main' module
from src.main import app


class TestFlaskApp(unittest.TestCase):
    """
    A class that contains test cases for the Flask app in the 'main' module.
    Uses the Flask app's test client to simulate HTTP requests to the app and check the responses.
    """

    def setUp(self):
        """
        Sets up the test environment for the test cases in the `TestFlaskApp` class.
        Enables testing mode for the Flask app and creates a test client object to simulate HTTP requests.
        """
        app.config['TESTING'] = True
        self.app = app.test_client()

    def test_home_page(self):
        """Tests the '/' route of the Flask app to ensure that it returns a successful response (HTTP status code
        200)."""
        result = self.app.get('/')
        self.assertEqual(result.status_code, 200)

    def test_getposter_page(self):
        """Tests the '/getposter' route of the Flask app to ensure that it returns a successful response (HTTP status
        code 200)."""
        result = self.app.get('/getposter')
        self.assertEqual(result.status_code, 200)

    def test_posterdescription_page(self):
        """Tests the '/posterdescription' route of the Flask app to ensure that it returns a successful response (
        HTTP status code 200)."""
        result = self.app.get('/posterdescription')
        self.assertEqual(result.status_code, 200)

    def test_myaccount_page(self):
        """Tests the '/myaccount' route of the Flask app to ensure that it returns a successful response (HTTP status
        code 200)."""
        result = self.app.get('/myaccount')
        self.assertEqual(result.status_code, 200)


if __name__ == '__main__':
    unittest.main()
