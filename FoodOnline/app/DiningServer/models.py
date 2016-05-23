# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.db import models
#from ..models import AuthUser

class DiningUsers(models.Model):
    user_id = models.IntegerField(primary_key=True)
    dining_name = models.CharField(max_length=255, blank=True, null=True)
    photo = models.CharField(max_length=255, blank=True, null=True)
    phone_num = models.BigIntegerField(blank=True, null=True)
    dining_info = models.CharField(max_length=2000, blank=True, null=True)
    address = models.CharField(max_length=255, blank=True, null=True)
    user_type = models.IntegerField(blank=True, null=True)
    is_approved = models.IntegerField()
    is_deleted = models.IntegerField()
    class Meta:
        managed = False
        db_table = 'dining_users'

    def __str__(self):              # __str__ on Python 3
        return self.dining_name

    def __unicode__(self):              # __unicode__ on Python 2
        return self.dining_name