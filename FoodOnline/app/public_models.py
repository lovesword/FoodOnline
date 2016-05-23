# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.contrib.auth.models import BaseUserManager, AbstractBaseUser
from werkzeug.security import generate_password_hash, check_password_hash
from django.db import models
from DiningServer.models import DiningUsers
class Foods(models.Model):
    photo = models.CharField(max_length=255, blank=True, null=True)
    name = models.CharField(max_length=255)
    info = models.CharField(max_length=255, blank=True, null=True)
    dining = models.ForeignKey(DiningUsers, models.DO_NOTHING)
    create_time = models.DateTimeField()
    is_deleted = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'foods'





