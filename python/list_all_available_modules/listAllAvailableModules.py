#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Author:  kerwin.cn@gmail.com
# Created Time:2016-08-16 21:20:24
# Last Change:  2016-08-16 21:40:14
# File Name: listAllAvailableModules.py

import os
import sys
import re
from time import time
from zipimport import zipimporter

try:
    # Python >= 3.3
    from importlib.machinery import all_suffixes
    _suffixes = all_suffixes()
except ImportError:
    from imp import get_suffixes
    _suffixes = [s[0] for s in get_suffixes()]
# Regular expression for the python import statement
import_re = re.compile(r'(?P<name>[a-zA-Z_][a-zA-Z0-9_]*?)'
                       r'(?P<package>[/\\]__init__)?'
                       r'(?P<suffix>%s)$' %
                       r'|'.join(re.escape(s) for s in _suffixes))

# -----------------------------------------------------------------------------
# Globals and constants
# -----------------------------------------------------------------------------

# Time in seconds after which the rootmodules will be stored permanently in the
# ipython ip.db database (kept in the user's .ipython dir).
TIMEOUT_STORAGE = 2

# Time in seconds after which we give up
TIMEOUT_GIVEUP = 20

# -----------------------------------------------------------------------------
# Local utilities
# -----------------------------------------------------------------------------


def module_list(path):
    """
    Return the list containing the names of the modules available in the given
    folder.
    """
    # sys.path has the cwd as an empty string, but isdir/listdir need it as '.'
    if path == '':
        path = '.'

    # A few local constants to be used in loops below
    pjoin = os.path.join

    if os.path.isdir(path):
        # Build a list of all files in the directory and all files
        # in its subdirectories. For performance reasons, do not
        # recurse more than one level into subdirectories.
        files = []
        for root, dirs, nondirs in os.walk(path, followlinks=True):
            subdir = root[len(path)+1:]
            if subdir:
                files.extend(pjoin(subdir, f) for f in nondirs)
                dirs[:] = []
                # Do not recurse into additional subdirectories.
            else:
                files.extend(nondirs)

    else:
        try:
            files = list(zipimporter(path)._files.keys())
        except:
            files = []

    # Build a list of modules which match the import_re regex.
    modules = []
    for f in files:
        m = import_re.match(f)
        if m:
            modules.append(m.group('name'))
    return list(set(modules))


def get_root_modules():
    """
    Returns a list containing the names of all the modules available in the
    folders of the pythonpath.

    ip.db['rootmodules_cache'] maps sys.path entries to list of modules.
    """
    rootmodules = list(sys.builtin_module_names)
    start_time = time()
    store = False
    for path in sys.path:
        modules = module_list(path)
        try:
            modules.remove('__init__')
        except ValueError:
            pass
        if time() - start_time > TIMEOUT_STORAGE and not store:
            store = True
            sys.stdout.flush()
        if time() - start_time > TIMEOUT_GIVEUP:
            return []
        rootmodules.extend(modules)
    rootmodules = list(set(rootmodules))
    return rootmodules

if __name__ == "__main__":
    lst_all_modules = get_root_modules()
    print(lst_all_modules)
