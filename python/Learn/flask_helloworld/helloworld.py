#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# Author:  kerwin.cn@gmail.com
# Created Time:2016-04-15 23:05:55
# Last modified: 2016-04-15 23:06:05
# File Name: helloworld.py

from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello World!'

if __name__ == '__main__':
    app.run()
