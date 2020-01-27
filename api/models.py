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

    class Meta:
        db_table = 'matched_pattern_week1_male'


class MatchedPatternMaleWeek2(models.Model):

    w_id = models.IntegerField(primary_key=True)
    w_name = models.TextField(max_length=50)
    w_date = models.TextField(max_length=20)
    open_time = models.TextField(max_length=20)
    close_time = models.TextField(max_length=20)
    user_id = models.IntegerField()

    class Meta:
        db_table = 'matched_pattern_week2_male'


class MatchedPatternFemaleWeek1(models.Model):

    w_id = models.IntegerField(primary_key=True)
    w_name = models.TextField(max_length=50)
    w_date = models.TextField(max_length=20)
    open_time = models.TextField(max_length=20)
    close_time = models.TextField(max_length=20)
    user_id = models.IntegerField()

    class Meta:
        db_table = 'matched_pattern_week1_female'


class MatchedPatternFemaleWeek2(models.Model):

    w_id = models.IntegerField(primary_key=True)
    w_name = models.TextField(max_length=50)
    w_date = models.TextField(max_length=20)
    open_time = models.TextField(max_length=20)
    close_time = models.TextField(max_length=20)
    user_id = models.IntegerField()

    class Meta:
        db_table = 'matched_pattern_week2_female'


class DailyTrackActualLocation(models.Model):
    name = models.TextField(max_length=50)
    date = models.TextField(max_length=50)
    open_time = models.TextField(max_length=10)
    close_time =models.TextField(max_length=50)
    user_id = models.IntegerField(max_length=50)
    duration = models.IntegerField(max_length=50)
    latitude = models.TextField(max_length=50)
    longitude = models.TextField(max_length=50)
    location = models.TextField(max_length=50)
    gender = models.TextField(max_length=50)

    class Meta:
        db_table = 'daily_track_actual_location'
