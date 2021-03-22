import datetime,os

class Config(object):
    
    SQLALCHEMY_DATABASE_URI = "mysql+pymysql://root:root@127.0.0.1:3306/db_hengcai"
    SQLALCHEMY_TRACK_MODIFICATIONS = True
    SQLALCHEMY_ECHO = True

    SECRET_KEY = "fengyeliudan"
    PERMANENT_SESSION_LIFETIME = datetime.timedelta(days=7)

    PAGE_SIZE = 10
    # UPLOAD_DIR = os.path.join(os.path.dirname(__file__),"uploads")
    UPLOAD_DIR =  os.path.abspath(os.path.join(os.path.dirname(__file__),"..","public/uploads"))


    COMPANY = "聚光绘影科技有限公司"

