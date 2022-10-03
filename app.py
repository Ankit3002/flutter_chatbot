
from flask import Flask , jsonify , request
import time

from sqlalchemy import JSON


app = Flask(__name__)

@app.route("/bot" , methods = ["GET"])
def response():
    value = "wwe"
    something = "this is awsome"
    return jsonify({"response":value , "else": something})


if __name__ == '__main__':
    app.run(debug=True)