import flask
import functools

from application.admin.controller.login import login_require
from flask import render_template,request,redirect,url_for,jsonify,session,g
from application.admin.controller import base

adminBp = flask.Blueprint(name="admin",import_name=__name__,url_prefix="/admin")


@adminBp.route("/",methods=["GET"])
@login_require
def index():

    return render_template("admin/view/index.html",admin = g.admin , menu = g.menu)

