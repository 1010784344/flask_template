from application.init import app
from flask import session,g
from application.common import category,test,getMenu


@app.before_request
def base():
    g.admin = {}

    g.admin["username"] = session.get("username") 
    g.admin["img"]      = session.get("img")
    g.admin["issuper"]  = session.get("issuper")

    g.menu = getMenu()

    g.company = app.config["COMPANY"]

