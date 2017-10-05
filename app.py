#!/usr/bin/env python

from flask import Flask

app = Flask(__name__)

@app.route('/flaky')
def hello():
  return 'Hello, Flaky!'

if __name__ == '__main__':
  app.run(debug=True, host='0.0.0.0')

