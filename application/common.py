import hashlib
from application.admin.models.category import Category
from flask import url_for

def test(str) :

    print("***")
    print(str)
    print("***")

def md5(str):
    m = hashlib.md5()
    m.update(str.encode("utf8"))
    print(m.hexdigest())
    return m.hexdigest()

def category(fatherid=0):
    return Category.query.filter(Category.fatherid==fatherid).all()

def getCategoryById(id):
    return Category.query.filter(Category.id==id).first()

def getMenu():

    list_1_s = category(0)

    menu = []

    for m in list_1_s:
        row = {}
        row["title"] = m.category
        row["son"] = []

        son = category(m.id)

        for s in son:

            line = {}
            line["title"] = s.category
            line["url"] = url_for("article.lists",id=s.id)
            row["son"].append(line)

        menu.append(row)

    return menu    
     