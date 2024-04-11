from flask import Flask

app = Flask(__name__)


@app.route("/")
def home():
    return "Hello, Flask!"


@app.route("/about")
def about():
    return "About page Anji"


@app.route("/hello")
def hello():
    return "Hello, World!"


if __name__ == "__main__":
    app.run(debug=True)
