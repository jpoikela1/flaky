#!/usr/bin/env python

import os
from flask import Flask

app = Flask(__name__)

my_env = os.getenv('MY_ENV', 'undefined')

@app.route('/')
def hello():
  return 'Hello, Flaky! (MY_ENV: {})'.format(my_env)

@app.route('/healthz')
def healthz():
  return 'A-okay'

if __name__ == '__main__':
  app.run(host='0.0.0.0')
