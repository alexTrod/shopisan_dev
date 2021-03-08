from django.db import models


class UserAdministration(models.Model):
    userAdministrationId = models.AutoField(primary_key=True)
    creationDate = models.DateField(auto_now_add=True)
    creationStatus = models.IntegerField(default=0)
    email = models.EmailField(null=True, max_length=200)
    lastConnectionDate = models.DateTimeField(null=True)


class Picture(models.Model):
    pictureId = models.AutoField(primary_key=True)
    picture_url = models.CharField(default='', max_length=200)


class User(models.Model):
    userId = models.AutoField(primary_key=True)
    userName = models.CharField(default='Anonymous', max_length=100)
    birthDate = models.DateField(null=True)
    userAdministrationId = models.OneToOneField(UserAdministration, on_delete=models.DO_NOTHING)
    pictureId = models.OneToOneField(Picture, on_delete=models.DO_NOTHING, null=True)
