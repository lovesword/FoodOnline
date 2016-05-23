# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.db import models
#from ..models import AuthUser

class NomalUsers(models.Model):
    user_id = models.IntegerField(primary_key=True)
    real_name = models.CharField(max_length=255, blank=True, null=True)
    phone_num = models.BigIntegerField(blank=True, null=True)
    photo = models.CharField(max_length=255, blank=True, null=True)
    sex = models.CharField(max_length=10, blank=True, null=True)
    address = models.CharField(max_length=255, blank=True, null=True)
    user_type = models.IntegerField(blank=True, null=True)
    is_deleted = models.IntegerField()
    class Meta:
        managed = False
        db_table = 'nomal_users'

    def __str__(self):              # __str__ on Python 3
        return self.real_name

    def __unicode__(self):              # __unicode__ on Python 2
        return self.real_name

