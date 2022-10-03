from flask import Flask , jsonify , request
import time

from sqlalchemy import JSON


app = Flask(__name__)

@app.route("/bot" , method = ["POST"])



def response():
    value = "wwe"
    return jsonify({"response":value})


if __name__ == '__main__':
    app.run(host = "0.0.0.0",)