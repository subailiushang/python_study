#!/usr/bin/env python

fd = open('/etc/httpd/conf/httpd.conf')

for i in fd.readlines():
    print i,

fd.close()
