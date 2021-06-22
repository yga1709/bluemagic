from flask import Flask, render_template, jsonify, Response, request, url_for, redirect

app = Flask(__name__,
            static_folder='../vue/bluemagic/dist/static',
            template_folder="../vue/bluemagic/dist",
            )

app.config.from_object("config.ProductionConfig")

@app.route('/', defaults={'path': ''})
@app.route('/<path:path>')
def index(path):
    return render_template("index.html")

if __name__ == '__main__':
    app.run()

