#!/usr/bin/env python
# -*- coding:utf-8 -*-
__author__ = 'lovesword'
'''Python对用户密码进行MD5加密
'''
#单独对密码加密
import hashlib
password_r = 'abcd'
password_md5 = hashlib.md5(password_r).hexdigest()
print password_md5
#结合用户名和密码加密
import md5
name ='test'
password = '123'
m1 = md5.new()
m1.update('%s%s' % (name,password))
print m1.hexdigest()
