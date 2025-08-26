from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return {"message": "Cactros Flask App is running!"}

@app.route("/health")
def health():
    return {"status": "ok"}

@app.route("/welcome")
def welcome():
    return {"message": "Welcome to Cactros Flask App!"}

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)

