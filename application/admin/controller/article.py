import flask
import functools
import time,json
from application.init import db
from application.admin.controller.login import login_require
from application.common import category,test,getMenu,getCategoryById
from application.admin.models.category import Category
from application.admin.models.article import Article
from flask import render_template,request,redirect,url_for,jsonify,session,flash,g
from sqlalchemy import func
from application.admin.filter import article
from application.admin.controller import base

articleBp = flask.Blueprint(name="article",import_name=__name__,url_prefix="/admin/article")

@articleBp.route("/lists/categoryid/<int:id>",methods=["GET"])
@login_require
def lists(id):
    
    field = request.args.get("field")
    keywords  = request.args.get("keywords")

    options = {}
    options["category"] = Category.query.filter(Category.id==id).first()
    options["field"]    = field
    options["keywords"] = keywords if keywords is not None else ""

    condition = []
    condition.append(Article.category==id)

    if keywords is None or len(keywords.strip()) <= 0:
        keywords = ""
    else:
        if field == "title":
           condition.append(Article.title.like("%"+keywords+"%"))
        elif field == "subtitle":   
           condition.append(Article.subtitle.like("%"+keywords+"%"))
        else:
           condition.append(Article.content.like("%"+keywords+"%"))   

    page = int(request.args.get('page', 1))
    per_page = int(request.args.get('per_page', 10))
    paginate = db.session.query(Article.id,Article.title,Article.source,Article.isexamine,Category.category,func.from_unixtime((Article.addtime), "%Y-%m-%d %H:%i:%s")).filter(*condition).filter(Article.category==Category.id).order_by(db.desc(Article.id)).paginate(page, per_page, error_out=False)
    articlelist = paginate.items

    # article = db.session.query(Article.id,Article.title,Category.category,Article.addtime).filter(*condition).filter(Article.category==Category.id).all()
    # print(articlelist)
    # for k in articlelist:
    #     test( k.keys() )
    
    return render_template("admin/view/article/lists.html",admin = g.admin , menu = g.menu , options = options,paginate=paginate,articlelist=articlelist)

@articleBp.route("/add",methods=["GET"])
@login_require
def add():
    categoryid = request.args.get("categoryid")


    options = {}
    options['category'] = getCategoryById(categoryid)

    # test(options)

    return render_template("admin/view/article/add.html",admin = g.admin , menu = g.menu , options = options)

@articleBp.route("/save",methods=["POST"])
@login_require
def save():

    category = request.form.get("category")
    title = request.form.get("title")

    if request.form.get("color") :
       color = request.form.get("color")
    else:
       color = ""     


    if request.form.get("isbold") :
       isbold = 1
    else:
       isbold = 0    

    if request.form.get("isitalic") :
       isitalic = 1
    else:
       isitalic = 0    

    if request.form.get("isthrough") :
       isthrough = 1
    else:
       isthrough = 0    

    subtitle = request.form.get("subtitle")
    keywords = request.form.get("keywords")
    intro = request.form.get("intro")
    author = request.form.get("author")
    source = request.form.get("source")
    
    if request.form.get("img") :
       imgs = request.form.get("img")  
       imgs = imgs.split(",")
       img = json.dumps(imgs)
    else:
       img = "" 

    if request.form.get("file") :
       files = request.form.get("file")  
       files = files.split(",")
       file = json.dumps(files)
    else:
       file = "" 

    content = request.form.get("content")


    if request.form.get("starttime") :
       starttime =  int(time.mktime(time.strptime(request.form.get("starttime"), "%Y-%m-%d"))) 
    else:
       starttime = "" 
    
    if request.form.get("endtime") :
       endtime =  int(time.mktime(time.strptime(request.form.get("endtime"), "%Y-%m-%d"))) 
    else:
       endtime = "" 

    if request.form.get("isexamine") :
       isexamine = 1
    else:
       isexamine = 0  

    if request.form.get("isrecommend") :
       isrecommend = 1
    else:
       isrecommend = 0    

    if request.form.get("istop") :
       istop = 1
    else:
       istop = 0    


    click = 0

    adminid = session.get("adminid")
    addtime =  int(time.time())

    article = Article(
                        category=category,
                        title=title,
                        color=color,
                        isbold=isbold,
                        isitalic=isitalic,
                        isthrough=isthrough,
                        subtitle=subtitle,
                        keywords=keywords,
                        intro=intro,
                        author=author,
                        source=source,
                        img=img,
                        file=file,
                        content=content,
                        starttime=starttime,
                        endtime=endtime,
                        isexamine=isexamine,
                        isrecommend=isrecommend,
                        istop=istop,
                        click = click,
                        adminid=adminid,
                        addtime=addtime
              )
    db.session.add(article)
    db.session.commit()

    flash("文章【"+title+"】保存成功!")

    return redirect(url_for("article.lists",id = category))


@articleBp.route("/edit/<int:id>",methods=["GET","POST"])
@login_require
def edit(id):

    article = Article.query.get(id)


    options = {}
    options['category'] = getCategoryById(article.category)
    if article.img :
       options['img'] = json.loads(article.img)
    else:
       options['img'] = []    
    if article.file :
       options['file'] = json.loads(article.file)
    else:
       options['file'] = []    

    return render_template("admin/view/article/edit.html",admin=g.admin,menu=g.menu,article=article,options=options)


@articleBp.route("/update",methods=["POST"])
@login_require
def update():

    id = request.form.get("id")
    category = request.form.get("category")
    title = request.form.get("title")

    color = request.form.get("color")


    if request.form.get("isbold") :
       isbold = 1
    else:
       isbold = 0    

    if request.form.get("isitalic") :
       isitalic = 1
    else:
       isitalic = 0    

    if request.form.get("isthrough") :
       isthrough = 1
    else:
       isthrough = 0    

    subtitle = request.form.get("subtitle")
    keywords = request.form.get("keywords")
    intro = request.form.get("intro")
    author = request.form.get("author")
    source = request.form.get("source")
    


    content = request.form.get("content")


    if request.form.get("starttime") :
       starttime =  int(time.mktime(time.strptime(request.form.get("starttime"), "%Y-%m-%d"))) 
    else:
       starttime = "" 
    
    if request.form.get("endtime") :
       endtime =  int(time.mktime(time.strptime(request.form.get("endtime"), "%Y-%m-%d"))) 
    else:
       endtime = "" 

    if request.form.get("isexamine") :
       isexamine = 1
    else:
       isexamine = 0  

    if request.form.get("isrecommend") :
       isrecommend = 1
    else:
       isrecommend = 0    

    if request.form.get("istop") :
       istop = 1
    else:
       istop = 0    



    article = Article.query.get(id)

    article.category = category
    article.title = title
    article.color = color
    article.isbold = isbold
    article.isitalic = isitalic
    article.isthrough = isthrough
    article.subtitle = subtitle
    article.keywords = keywords
    article.intro = intro
    article.author = author
    article.source = source

    if request.form.get("img") :
       imgs = request.form.get("img")  
       imgs = imgs.split(",")
       img = json.dumps(imgs)
       article.img = img

    if request.form.get("file") :
       files = request.form.get("file")  
       files = files.split(",")
       file = json.dumps(files)
       article.file = file    
    


    article.content = content
    article.starttime = starttime
    article.endtime = endtime
    article.isexamine = isexamine
    article.isrecommend = isrecommend
    article.istop = istop

 
    
    db.session.commit()

    flash("文章【"+title+"】更新成功!")

    return redirect(url_for("article.lists",id = category))



@articleBp.route("/delete",methods=["GET"])
@login_require
def delete():

    id = request.args.get("id")

    msg = {}

    if int(id) > 0 :

        article = Article.query.get(id)
        db.session.delete(article)
        db.session.commit()
        
        msg["code"] = 1
        msg["msg"] = "文章删除成功"

        return jsonify(msg)  


@articleBp.route("/manage",methods=["POST"])
@login_require
def manage():

    ids = request.values.getlist("id")
    categoryid = request.form.get("categoryid")

    if categoryid and ids :
       for id in ids:

           article = Article.query.get(id)
           db.session.delete(article)
           db.session.commit()


    
    return redirect(url_for("article.lists",id=categoryid))