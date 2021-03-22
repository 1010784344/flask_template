import flask
import flask_sqlalchemy
from application.init import app,db

class Category(db.Model):

    __tablename__ = "ihc_site_article_category"

    id = db.Column(db.Integer,primary_key=True)
    fatherid = db.Column(db.Integer)
    category = db.Column(db.String)
   

    
    # print时才起作用
    def __repr__(self):
        return '<Category %s>' % self.category

    def to_json(self):
        return {
            'id': self.id,
            'fatherid': self.fatherid,
            'category': self.category
           
        }        