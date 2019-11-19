from django.db import models


# Create your models here.
class MatchedPattern(models.Model):

    w_id = models.IntegerField(primary_key=True)
    w_name = models.TextField(max_length=50)
    w_date = models.TextField(max_length=20)
    open_time = models.TextField(max_length=20)
    close_time = models.TextField(max_length=20)
    user_id = models.IntegerField()

    class Meta:
        db_table = 'matched_pattern_actual'


class MatchedPatternMaleWeek1(models.Model):

    w_id = models.IntegerField(primary_key=True)
    w_name = models.TextField(max_length=50)
    w_date = models.TextField(max_length=20)
    open_time = models.TextField(max_length=20)
    close_time = models.TextField(max_length=20)
    user_id = models.IntegerField()
    latitude = models.TextField(max_length=20)
    longitude = models.TextField(max_length=20)
    location = models.TextField(max_length=10)
    gender = models.TextField(max_length=10)

    class Meta:
        db_table = 'matched_pattern_location_week1_male'


class MatchedPatternMaleWeek2(models.Model):

    w_id = models.IntegerField(primary_key=True)
    w_name = models.TextField(max_length=50)
    w_date = models.TextField(max_length=20)
    open_time = models.TextField(max_length=20)
    close_time = models.TextField(max_length=20)
    user_id = models.IntegerField()
    latitude = models.TextField(max_length=20)
    longitude = models.TextField(max_length=20)
    location = models.TextField(max_length=10)
    gender = models.TextField(max_length=10)

    class Meta:
        db_table = 'matched_pattern_location_week2_male'


class MatchedPatternFemaleWeek1(models.Model):

    w_id = models.IntegerField(primary_key=True)
    w_name = models.TextField(max_length=50)
    w_date = models.TextField(max_length=20)
    open_time = models.TextField(max_length=20)
    close_time = models.TextField(max_length=20)
    user_id = models.IntegerField()
    latitude = models.TextField(max_length=20)
    longitude = models.TextField(max_length=20)
    location = models.TextField(max_length=10)
    gender = models.TextField(max_length=10)

    class Meta:
        db_table = 'matched_pattern_location_week1_female'


class MatchedPatternFemaleWeek2(models.Model):

    w_id = models.IntegerField(primary_key=True)
    w_name = models.TextField(max_length=50)
    w_date = models.TextField(max_length=20)
    open_time = models.TextField(max_length=20)
    close_time = models.TextField(max_length=20)
    user_id = models.IntegerField()
    latitude = models.TextField(max_length=20)
    longitude = models.TextField(max_length=20)
    location = models.TextField(max_length=10)
    gender = models.TextField(max_length=10)

    class Meta:
        db_table = 'matched_pattern_location_week2_female'
