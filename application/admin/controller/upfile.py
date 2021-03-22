import flask
import os,json,re
import functools
from application.init import app
from application.admin.controller.login import login_require
from application.common import category,test,getMenu
from public.static.ueditor.python.uploader import Upload 
from flask import render_template,request,redirect,url_for,jsonify,session,make_response


upfileBp = flask.Blueprint(name="upfile",import_name=__name__,url_prefix="/admin/upfile")

@upfileBp.route("/",methods=["GET","POST","OPTIONS"])
@login_require
def index():
    # 响应类型
    mime_type = 'application/json'
    # 用来返回的结果
    result = {}
    # 配置文件路径
    config_file = os.path.join(app.static_folder, 'public/static/ueditor/python/config.json')
    
    # 配置文件内容
    CONFIG = {}
    # 读取配置文件并格式化
    with open(config_file, 'r', encoding='utf8') as f:
        
        try:
            # 去除配置文件中的注释并将json转为python中的字典
            CONFIG = json.loads(re.sub(r'\/\*.*\*\/', '', f.read()))
           
        except:
            CONFIG = {}
               

    # 判断用户动作
    action = request.args.get('action')
    # 上传配置
    config = {}
    # 提交的图片表单名称
    field_name = ''
    # 如果是页面初始化读取配置
    if action == 'config':
        result = CONFIG
    # 如果是上传图片、涂鸦、视频、文件
    elif action in ['uploadimage', 'uploadvideo', 'uploadfile']:

        if action == 'uploadimage':
            field_name = CONFIG.get('imageFieldName')
            config = {
                "pathFormat": CONFIG['imagePathFormat'],
                "maxSize"   : CONFIG['imageMaxSize'],
                "allowFiles": CONFIG['imageAllowFiles']
            }
        elif action == 'uploadvideo':
            field_name = CONFIG.get('videoFieldName')
            config = {
                "pathFormat": CONFIG['videoPathFormat'],
                "maxSize": CONFIG['videoMaxSize'],
                "allowFiles": CONFIG['videoAllowFiles']
            }
        else:
            field_name = CONFIG.get('fileFieldName')
            config = {
                "pathFormat": CONFIG['filePathFormat'],
                "maxSize": CONFIG['fileMaxSize'],
                "allowFiles": CONFIG['fileAllowFiles']
            }
        # 判断文件是否真实
        if field_name in request.files:
            # 获取文件
            file = request.files.get(field_name)
            # 执行上传
            upload_obj = Upload(file, config, app.static_folder)
            result = upload_obj.get_file_info()
            #print('我已经执行上传要输出响应了')
        else:
            # 请求有误，报错
            result['state'] = '小子，你又开始恶意了？'
    elif action == 'uploadscrawl':
        config = {
            "pathFormat": CONFIG['scrawlPathFormat'],
            "maxSize": CONFIG['scrawlMaxSize'],
            # "allowFiles": CONFIG['scrawlAllowFiles'],
            "oriName": "scrawl.png"
        }
        field_name = CONFIG['scrawlFieldName']
        if field_name in request.form:
            uploader = Upload(request.form[field_name], config, app.static_folder, 'base64')
            result = uploader.get_file_info()
        else:
            result['state'] = '上传接口出错'
    # 抓取远程图片
    elif action == 'catchimage':

        config = {
            "pathFormat": CONFIG['catcherPathFormat'],
            "maxSize": CONFIG['catcherMaxSize'],
            "allowFiles": CONFIG['catcherAllowFiles'],
            "oriName": "yuancheng.png"
        }
        field_name = CONFIG['catcherFieldName']
        #print('表单，你已经开始执行了啊', request.form)
        # 用来存放远程图片
        sources = ''
        # 存放每个远程图片的返回信息
        _res_lists = []
        if '%s[]' % field_name in request.form:
            sources = request.form.getlist('%s[]' % field_name)
            for img_url in sources:
                #print('都有什么图片：', img_url)
                uploader = Upload(img_url, config, app.static_folder, 'remote')
                info = uploader.get_file_info()
                _res_lists.append({
                    'state': info['state'],
                    'url': info['url'],
                    'original': info['original'],
                    'source': img_url,
                })
            result['state'] = 'SUCCESS' if len(_res_lists) > 0 else 'ERROR'
            result['list'] = _res_lists

        else:
            result['state'] = '上传接口出错'
    else:
        result['state'] = '请求地址出错'

    result = json.dumps(result)
    res = make_response(result)
    res.mimetype = mime_type
    res.headers['Access-Control-Allow-Origin'] = '*'
    res.headers['Access-Control-Allow-Headers'] = 'X-Requested-With,X_Requested_With'
    return res    
   
    

