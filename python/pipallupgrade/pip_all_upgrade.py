#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Author:  kerwin.cn@gmail.com
# Created Time:2016-10-01 10:33:22
# Last Change:  2016-10-01 10:37:09
# File Name: pip_all_upgrade.py

# 这个程序用于更新所有的pip库

import pip
from subprocess import call

print (u"要更新如下的库")
# 这个命令是列出所有过期的库
call("pip list --outdated")

for dist in pip.get_installed_distributions():
    call("pip install --upgrade " + dist.project_name, shell=True)
