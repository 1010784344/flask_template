import flask
import functools
from application.common import md5
from application.admin.models.admin import Admin
from flask import render_template,request,redirect,url_for,jsonify,session


loginBp = flask.Blueprint(name="login",import_name=__name__,url_prefix="/login")

@loginBp.route("/",methods=["GET"])
def index():
    return render_template("admin/view/login.html")

# 登录信息验证
@loginBp.route("/check",methods=["POST"])
def check():
    
    if request.method == "POST":
       username = request.form.get("username")
       password = request.form.get("password")
       captcha  = request.form.get("captcha").lower()

       admin = Admin.query.filter(Admin.username==username).first()

       data = {}

       if captcha==session['imageCode'].lower():
          pass 
       else:    
          data["status"] = 0 
          data["msg"] = "验证码不正确" 
          return  jsonify(data) 

       if admin is None:
          data["status"] = 0 
          data["msg"] = "用户不存在" 
          return  jsonify(data) 
           
       if admin.password.strip() != md5(password.strip()) :
          data["status"] = 0 
          data["msg"] = "密码不正确 " 
          return  jsonify(data) 

       if admin.islock :
          data["status"] = 0 
          data["msg"] = "该帐号已被锁定 " 
          return  jsonify(data) 

    # 登录成功保存 session 相关的信息
    session["islogin"] = True
    session["adminid"] = admin.id
    session["username"] = admin.username
    session["img"] = admin.img
    session["issuper"] = admin.issuper

    data["status"] = 1 
    data["msg"] = "验证通过 " 
    return  jsonify(data) 


@loginBp.route("/out",methods=["GET"])
def out():
    session.clear()
    return redirect(url_for("login.index"))

# 检查是否登录，没有登录成功进行登录验证
def login_require(func):
    @functools.wraps(func)
    def check_login(*args, **kwargs):
        username = session.get('username')
        if username:
            return func(*args, **kwargs)
        else:
            return redirect(url_for('login.index'))
    return check_login

