from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "Hello, Cactros!"

@app.route('/health')
def health():
    return "OK"

@app.route('/welcome')
def welcome():
    return "Welcome to Cactros Flask App!"

if __name__ == '__main__':
    app.run(debug=True)
