# coding: utf-8

"""
    GameBrain API

    GameBrain API

    The version of the OpenAPI document: 1.0.1
    Contact: mail@gamebrain.co
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from gamebrain.models.game_response_platforms_inner import GameResponsePlatformsInner

class TestGameResponsePlatformsInner(unittest.TestCase):
    """GameResponsePlatformsInner unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> GameResponsePlatformsInner:
        """Test GameResponsePlatformsInner
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `GameResponsePlatformsInner`
        """
        model = GameResponsePlatformsInner()
        if include_optional:
            return GameResponsePlatformsInner(
                value = '',
                name = ''
            )
        else:
            return GameResponsePlatformsInner(
        )
        """

    def testGameResponsePlatformsInner(self):
        """Test GameResponsePlatformsInner"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
