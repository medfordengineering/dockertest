from flask import Flask
app = Flask(__name__)


@app.route('/')
def hey_world():
	return "new flask conetina"


if __name__ == '__main__':
	app.run(debug=True, host='0.0.0.0', port=5000)
