import flask
import flask_sqlalchemy
from application.init import app,db

class Article(db.Model):

    __tablename__ = "ihc_site_article"

    id       = db.Column(db.Integer,primary_key=True)
    category = db.Column(db.Integer)
    title    = db.Column(db.String)
    color    = db.Column(db.String)
    isbold   = db.Column(db.Boolean)
    isitalic = db.Column(db.Boolean)
    isthrough = db.Column(db.Boolean)
    subtitle = db.Column(db.String)
    keywords = db.Column(db.String)
    intro    = db.Column(db.String)
    author   = db.Column(db.String)
    source   = db.Column(db.String)
    img      = db.Column(db.String)
    file     = db.Column(db.String)
    content  = db.Column(db.Text)
    starttime = db.Column(db.Integer)
    endtime  = db.Column(db.Integer)
    isexamine = db.Column(db.Boolean)
    isrecommend = db.Column(db.Boolean) 
    istop    = db.Column(db.Boolean)
    click    = db.Column(db.Integer)
    adminid  = db.Column(db.Boolean(4))
    addtime  = db.Column(db.Integer)  
    
    # print时才起作用
    def __repr__(self):
        return '<Article %s>' % self.title

    def to_json(self):
        return {
            'id': self.id,
            'title': self.title,
            'subtitle': self.subtitle,
            'img': self.img,
            'content': self.content,
            'addtime': self.addtime

        }        