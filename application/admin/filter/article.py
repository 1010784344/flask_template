import os,time
from application.init import app

@app.template_filter("getFileType")
def getFileType(paths):
    filename,type = os.path.splitext(paths) 
    return type.replace(".","")

@app.template_filter("getFileName")
def getFileName(path):
    paths = path.split("/")
    return paths[len(paths)-1]   

@app.template_filter("formatDate")
def formatDate(timestemp):   
    return time.strftime("%Y-%m-%d", time.localtime(timestemp))