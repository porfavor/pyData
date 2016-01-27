#!/usr/bin/python
# coding=utf-8

import re
import os

# files = os.listdir('data/')
# for filename in files:
#     for line in open('data/' + filename):
#         print line.decode('gbk').encode('utf-8')
#     break
#
# #print files


for line in open(unicode('data/811005.sql', "utf8")):
    # print line.decode('gbk').encode('utf-8')

    if line.startswith('--'):
        continue

    if 'nb_add_querybase' in line: #line.startswith('exec nb_add_querybase'):
        print line


    pattern = re.compile(
                r'.*?fieldname="(?P<fieldname>.+?)"\s*?fieldcaption="(?P<fieldcaption>.+?)".*',
                re.I | re.S)
    m = pattern.search(line)

    if not m:
        print 'No match!'
        continue

    fieldname = m.group('fieldname')
    fieldcaption = m.group('fieldcaption')
    print 'fieldname='+fieldname+', fieldcaption=' + fieldcaption.decode('gbk').encode('utf-8')



