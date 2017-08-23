#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Author:  kerwin.cn@gmail.com
# Created Time:2016-05-10 15:48:53
# Last modified: 2016-05-10 15:48:53
# File Name: learnlogging.py

import logging

logging.basicConfig(level=logging.DEBUG,
                    format='%(asctime)s %(filename)s[line:%(lineno)d] %(levelname)s %(message)s',
                    datefmt='%a, %d %b %Y %H:%M:%S',
                    filename='mylog.log',
                    filemode='w')
logging.debug('debug message')
