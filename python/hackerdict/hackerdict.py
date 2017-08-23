#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# Author:  kerwin.cn@gmail.com
# Created Time:2016-01-14 13:43:45
# Last modified: 2016-01-14 13:44:01
# File Name: hackerdict.py

import sys
import string
import itertools

def get_strings():
	chars=string.printable[:10]
	strings=[]
	for i in xrange(min,max+1):
		strings.append((itertools.product(chars,repeat=i),))
	return itertools.chain(*strings)

def make_dict():
	f = open(file,'a')
	for x in list_str:
		for y in x:
			f.write("".join(y))
			f.write('\n')
	f.close()
	print 'Done'

while True:
	if len(sys.argv)==4:
		try:
			min = int(sys.argv[1])
			max = int(sys.argv[2])
		except:
			print "wrong"
			sys.exit(0)
		if min <= max:
			list_str= get_strings()
			file=sys.argv[3]
			make_dict()
			sys.exit(0)
