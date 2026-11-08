# Run: pip install flask && python hello.py
from flask import Flask, jsonify

app = Flask(__name__)

@app.route("/")
def hello():
    return jsonify({"message": "Hello from Flask!"})

@app.route("/users/<int:user_id>")
def user(user_id):
    return jsonify({"user_id": user_id})

if __name__ == "__main__":
    app.run(debug=True, port=5000)
