import unittest
from src.main import app


class TestFlaskApp(unittest.TestCase):
    def setUp(self):
        app.config['TESTING'] = True
        self.app = app.test_client()

    def test_home_page(self):
        # Envoi de la requête et récupération de la réponse
        result = self.app.get('/')
        # Vérification du statut de la réponse
        self.assertEqual(result.status_code, 200)


if __name__ == '__main__':
    unittest.main()
