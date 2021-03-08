from django.db import models
from user.models import UserAdministration


class Country(models.Model):
    countryCodeId = models.AutoField(primary_key=True)
    countryName = models.CharField(max_length=70, default='')

    class Meta:
        ordering = ['countryCodeId', 'countryName']


class City(models.Model):
    cityId = models.AutoField(primary_key=True)
    countryCodeId = models.ForeignKey(Country, on_delete=models.DO_NOTHING)
    cityName = models.CharField(max_length=100, default='')

    class Meta:
        ordering = ['cityId', 'countryCodeId', 'cityName']


class Picture(models.Model):
    id = models.AutoField(primary_key=True)
    pictureId = models.IntegerField(default='0')
    picture_url = models.CharField(max_length=100, default='')

    class Meta:
        ordering = ['id', 'pictureId', 'picture_url']


# Create your models here.
class Store(models.Model):
    id = models.AutoField(primary_key=True)
    storeName = models.CharField(max_length=100, default='')
    storeId = models.IntegerField(default=0)
    streetAvenue = models.CharField(max_length=200, null=True)
    postalCode = models.CharField(max_length=20, null=True)
    website = models.CharField(max_length=100, null=True)
    storeStatus = models.IntegerField(default=0)
    # todo: openingTime as a string ?
    openingTimes = models.CharField(max_length=200, null=True)
    profilePicture = models.OneToOneField(Picture, on_delete=models.DO_NOTHING, null=True)
    userAdministrationId = models.OneToOneField(UserAdministration, on_delete=models.DO_NOTHING, null=True)

    class Meta:
        ordering = ['id', 'storeName', 'storeId', 'streetAvenue', 'postalCode', 'website', 'storeStatus', 'openingTimes', 'profilePicture']


class ActivityDescription(models.Model):
    activityId = models.AutoField(primary_key=True)
    activityName = models.CharField(max_length=100, null=False)

    class Meta:
        ordering = ['activityId', 'activityName']


class StoreActivity(models.Model):
    id = models.AutoField(primary_key=True)
    storeId = models.ManyToManyField(Store)
    activityName = models.ManyToManyField(ActivityDescription)
