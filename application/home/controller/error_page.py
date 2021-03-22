import flask

def http_status_404(exp):
    return flask.render_template("home/common/error_page_404.html")


def http_status_500_exp(exp):
    return flask.render_template("home/common/error_page_500.html")

