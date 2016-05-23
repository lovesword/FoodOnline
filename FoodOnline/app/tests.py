from django.test import TestCase

# Create your tests here.
# class NomalUsers(models.Model):
#     user_id = models.IntegerField(primary_key=True)
#     #user=models.OneToOneField(AuthUser,unique=True,verbose_name=('用户'))#a******
#     real_name = models.CharField(max_length=255, blank=True, null=True)
#     phone_num = models.IntegerField(blank=True, null=True)
#     sex = models.CharField(max_length=10, blank=True, null=True)
#     address = models.CharField(max_length=255, blank=True, null=True)
#     user_type = models.IntegerField(blank=True, null=True)
#
#     class Meta:
#         managed = False
#         db_table = 'nomal_users'
#     def __str__(self):              # __unicode__ on Python 2
#         return self.real_name
#
# class DiningUsers(models.Model):
#     user_id = models.IntegerField(primary_key=True)
#     #user=models.OneToOneField(AuthUser,unique=True,verbose_name=('用户'))#a******
#     dining_name = models.CharField(max_length=255, blank=True, null=True)
#     phone_num = models.IntegerField(blank=True, null=True)
#     dining_info = models.CharField(max_length=2000, blank=True, null=True)
#     address = models.CharField(max_length=255, blank=True, null=True)
#     user_type = models.IntegerField(blank=True, null=True)
#
#     class Meta:
#         managed = False
#         db_table = 'dining_users'
#
#     def __str__(self):              # __unicode__ on Python 2
#         return self.dining_name
# class Foods(models.Model):
#     name = models.CharField(max_length=255)
#     info = models.CharField(max_length=255, blank=True, null=True)
#     dining = models.ForeignKey(DiningUsers, models.DO_NOTHING)
#     create_time = models.DateTimeField()
#     is_deleted = models.IntegerField()
#
#     class Meta:
#         managed = False
#         db_table = 'foods'
