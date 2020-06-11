from django.test import TestCase


class SimpleModelTests(TestCase):

    def test_simple(self):
        """
        Basic Test
        """

        self.assertIs(True, True)

    # def test_simple_fail(self):
    #     """
    #     Basic Test
    #     """

    #     self.assertIs(True, False)
