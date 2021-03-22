import flask
import flask_sqlalchemy
from application.init import app,db

class Admin(db.Model):

    __tablename__ = "ihc_site_admin"

    id = db.Column(db.Integer,primary_key=True)
    username = db.Column(db.String)
    password = db.Column(db.String)
    img      = db.Column(db.String)
    login_ip = db.Column(db.String)
    login_num = db.Column(db.Integer)
    login_last = db.Column(db.Integer)
    issuper = db.Column(db.Boolean)
    islock = db.Column(db.Boolean)
    addtime = db.Column(db.Integer)
    
    # print时才起作用
    def __repr__(self):
        return '<Admin %s>' % self.username

    def to_json(self):
        return {
            'id': self.id,
            'username': self.username,
            'password': self.password,
            'img': self.img,
            'login_ip': self.login_ip,
            'login_num': self.login_num,
            'login_last': self.login_last,
            'issuper': self.issuper,
            'islock': self.islock,
            'addtime': self.addtime
        }        