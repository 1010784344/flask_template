from application.init import app,db
from application.admin.controller.login import loginBp
from application.admin.controller.admin import adminBp
from application.admin.controller.article import articleBp
from application.admin.controller.upfile import upfileBp
import application.home.controller.error_page as error
from application.admin.controller.verificationCode import codeBp


app.register_blueprint(loginBp)
app.register_blueprint(adminBp)
app.register_blueprint(articleBp)
app.register_blueprint(upfileBp)
app.register_blueprint(codeBp)

if __name__ == "__main__":

    isDebug = True

    if not isDebug :
       app.register_error_handler(404,error.http_status_404)
       app.register_error_handler(Exception,error.http_status_500_exp)


    # app.run(host="127.0.0.1",port="5000",debug=isDebug)
    app.run(debug=True)

