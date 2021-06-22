import os
basedir = os.path.abspath(os.path.dirname(__file__))

class Config:
    API_KEY = os.getenv('environment variables') or 'Please put your parameter'
    DEBUG = False
    TESTING = False

class ProductionConfig(Config):
    pass

class DevelopmentConfig(Config):
    SERVER_NAME = '0.0.0.0:5000' 
    DEBUG = True
    JSON_AS_ASCII = False

class TestingConfig(Config):
    TESTING = True
    WTF_CSRF_ENABLED = False
