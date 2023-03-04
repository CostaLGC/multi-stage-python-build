import os
from flask import Flask

app = Flask(__name__)
app.config.from_pyfile('config.py')

@app.route('/')
def hello():
    name = os.environ.get("NAME", app.config['DEFAULT_NAME'])
    return f'Hello, {name}!'

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=int(os.environ.get('PORT', app.config['DEFAULT_PORT'])))
