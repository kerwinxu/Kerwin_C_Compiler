#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Author:  kerwin.cn@gmail.com
# Created Time:2016-11-04 09:37:32
# Last Change:  2016-11-04 10:17:46
# File Name: regedit_python_path.py
# 请注意这个文件只能在管理员权限运行。
#
# script to register Python 2.0 or later for use with win32all
# and other extensions that require Python registry settings
#
# written by Joakim Low for Secret Labs AB / PythonWare
#
# source:
# http://www.pythonware.com/products/works/articles/regpy20.htm

import sys
import _winreg

# tweak as necessary

version = sys.version[:3]
installpath = sys.prefix
regpath = "SOFTWARE\\Python\\Pythoncore\\%s\\" % (version)
installkey = "InstallPath"
pythonkey = "PythonPath"
pythonpath = "%s;%s\\Lib\\;%s\\DLLs\\" % (installpath, installpath, installpath)


def RegisterPy():
    try:
        reg = _winreg.OpenKey(_winreg.HKEY_LOCAL_MACHINE, regpath)
        if (_winreg.QueryValue(reg, installkey) == installpath and _winreg.QueryValue(reg, pythonkey) == pythonpath):
            _winreg.CloseKey(reg)
            print "=== Python", version, "is already registered!"
            return
    except EnvironmentError:
        try:
            reg = _winreg.CreateKey(_winreg.HKEY_LOCAL_MACHINE, regpath)
            _winreg.SetValue(reg, installkey, _winreg.REG_SZ, installpath)
            _winreg.SetValue(reg, pythonkey, _winreg.REG_SZ, pythonpath)
            _winreg.CloseKey(reg)
        except:
            print "*** Unable to register!"
            return
        print "--- Python", version, "is now registered!"
        return

    _winreg.CloseKey(reg)
    print "*** Unable to register!"
    print "*** You probably have another Python installation!"

if __name__ == "__main__":
    RegisterPy()
