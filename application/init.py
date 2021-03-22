import os
import flask
import flask_sqlalchemy
from application.config import Config


template_folder = os.path.dirname(__file__) #application
static_folder   = os.path.abspath(os.path.join(template_folder,"..")) # mysite


app = flask.Flask(__name__,static_folder=static_folder,template_folder=template_folder)

app.config.from_object(Config)
db = flask_sqlalchemy.SQLAlchemy(app)
