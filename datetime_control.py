#!/usr/bin/env python
# -*- coding:utf-8 -*-
__author__ = 'lovesword'
'''问题： 给定某个日期求一个月前和半年前的日期
   分析： 关键就是 月份-1 或者月份-6（注意年数的变化）
'''

import datetime,time,calendar
def months(dt,months):#这里的months 参数传入的是正数表示往后 ，负数表示往前
    month = dt.month - 1 + months
    year = dt.year + month / 12
    month = month % 12 + 1
    day = min(dt.day,calendar.monthrange(year,month)[1])
    dt = dt.replace(year=year, month=month, day=day)
    return str(dt.replace(year=year, month=month, day=day)).replace('-','')
time_temp = '20150419'
dt=datetime.date(int(time_temp[0:4]), int(time_temp[4:6]), int(time_temp[6:8]))
print '1个月前的今天是',months(dt,-1)
print '6个月前的今天是',months(dt,-6)
print '3个月后的今天是',months(dt,3)
