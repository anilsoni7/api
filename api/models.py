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


class MatchedPatternMaleWeek3(models.Model):

    w_id = models.IntegerField(primary_key=True)
    w_name = models.TextField(max_length=50)
    w_date = models.TextField(max_length=20)
    open_time = models.TextField(max_length=20)
    close_time = models.TextField(max_length=20)
    user_id = models.IntegerField()

    class Meta:
        db_table = 'matched_pattern_location_week3_male'


class MatchedPatternMaleWeek4(models.Model):

    w_id = models.IntegerField(primary_key=True)
    w_name = models.TextField(max_length=50)
    w_date = models.TextField(max_length=20)
    open_time = models.TextField(max_length=20)
    close_time = models.TextField(max_length=20)
    user_id = models.IntegerField()

    class Meta:
        db_table = 'matched_pattern_location_week4_male'


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


class MatchedPatternFemaleWeek3(models.Model):

    w_id = models.IntegerField(primary_key=True)
    w_name = models.TextField(max_length=50)
    w_date = models.TextField(max_length=20)
    open_time = models.TextField(max_length=20)
    close_time = models.TextField(max_length=20)
    user_id = models.IntegerField()

    class Meta:
        db_table = 'matched_pattern_location_week3_female'


class MatchedPatternFemaleWeek4(models.Model):

    w_id = models.IntegerField(primary_key=True)
    w_name = models.TextField(max_length=50)
    w_date = models.TextField(max_length=20)
    open_time = models.TextField(max_length=20)
    close_time = models.TextField(max_length=20)
    user_id = models.IntegerField()

    class Meta:
        db_table = 'matched_pattern_location_week4_female'


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


class DailyTrackActualLocationWeek3Female(models.Model):
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
        db_table = 'daily_track_location_week3_female'


class DailyTrackActualLocationWeek4Female(models.Model):
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
        db_table = 'daily_track_location_week4_female'


class DailyTrackActualLocationWeek5Female(models.Model):
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
        db_table = 'daily_track_location_week5'


class DailyTrackActualLocationWeek6Female(models.Model):
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
        db_table = 'daily_track_location_week6'


class DailyTrackActualLocationWeek1Female(models.Model):
    name = models.TextField(max_length=50)
    date = models.TextField(max_length=50)
    open_time = models.TextField(max_length=10)
    close_time = models.TextField(max_length=50)
    user_id = models.IntegerField(max_length=50)
    duration = models.IntegerField(max_length=50)
    latitude = models.TextField(max_length=50)
    longitude = models.TextField(max_length=50)
    location = models.TextField(max_length=50)
    gender = models.TextField(max_length=50)

    class Meta:
        db_table = 'daily_track_location_week1'


class DailyTrackActualLocationWeek2Female(models.Model):
    name = models.TextField(max_length=50)
    date = models.TextField(max_length=50)
    open_time = models.TextField(max_length=10)
    close_time = models.TextField(max_length=50)
    user_id = models.IntegerField(max_length=50)
    duration = models.IntegerField(max_length=50)
    latitude = models.TextField(max_length=50)
    longitude = models.TextField(max_length=50)
    location = models.TextField(max_length=50)
    gender = models.TextField(max_length=50)

    class Meta:
        db_table = 'daily_track_location_week2'


class DailyTrackActualLocationWeek1Male(models.Model):
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
        db_table = 'daily_track_location_week1_male'


class DailyTrackActualLocationWeek2Male(models.Model):
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
        db_table = 'daily_track_location_week2_male'

class DailyTrackActualLocationWeek3Male(models.Model):
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
        db_table = 'daily_track_location_week3_male'


class DailyTrackActualLocationWeek4Male(models.Model):
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
        db_table = 'daily_track_location_week4_male'


class DailyTrackActualLocationWeek5Male(models.Model):
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
        db_table = 'daily_track_location_week5_male'


class DailyTrackActualLocationWeek6Male(models.Model):
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
        db_table = 'daily_track_location_week6_male'


class MatchedPatternLocationMaleWeek1(models.Model):

    w_id = models.IntegerField(primary_key=True)
    w_name = models.TextField(max_length=50)
    w_date = models.TextField(max_length=20)
    open_time = models.TextField(max_length=20)
    close_time = models.TextField(max_length=20)
    user_id = models.IntegerField()
    latitude = models.TextField()
    longitude = models.TextField()
    location = models.TextField()
    gender = models.TextField()

    class Meta:
        db_table = 'matched_pattern_location_week1_male'


class MatchedPatternLocationMaleWeek2(models.Model):

    w_id = models.IntegerField(primary_key=True)
    w_name = models.TextField(max_length=50)
    w_date = models.TextField(max_length=20)
    open_time = models.TextField(max_length=20)
    close_time = models.TextField(max_length=20)
    user_id = models.IntegerField()
    latitude = models.TextField()
    longitude = models.TextField()
    location = models.TextField()
    gender = models.TextField()

    class Meta:
        db_table = 'matched_pattern_location_week2_male'


class MatchedPatternLocationMaleWeek3(models.Model):

    w_id = models.IntegerField(primary_key=True)
    w_name = models.TextField(max_length=50)
    w_date = models.TextField(max_length=20)
    open_time = models.TextField(max_length=20)
    close_time = models.TextField(max_length=20)
    user_id = models.IntegerField()
    latitude = models.TextField()
    longitude = models.TextField()
    location = models.TextField()
    gender = models.TextField()

    class Meta:
        db_table = 'matched_pattern_location_week3_male'


class MatchedPatternLocationMaleWeek4(models.Model):

    w_id = models.IntegerField(primary_key=True)
    w_name = models.TextField(max_length=50)
    w_date = models.TextField(max_length=20)
    open_time = models.TextField(max_length=20)
    close_time = models.TextField(max_length=20)
    user_id = models.IntegerField()
    latitude = models.TextField()
    longitude = models.TextField()
    location = models.TextField()
    gender = models.TextField()

    class Meta:
        db_table = 'matched_pattern_location_week4_male'


class MatchedPatternLocationMaleWeek5(models.Model):

    w_id = models.IntegerField(primary_key=True)
    w_name = models.TextField(max_length=50)
    w_date = models.TextField(max_length=20)
    open_time = models.TextField(max_length=20)
    close_time = models.TextField(max_length=20)
    user_id = models.IntegerField()
    latitude = models.TextField()
    longitude = models.TextField()
    location = models.TextField()
    gender = models.TextField()

    class Meta:
        db_table = 'matched_pattern_location_week5_male'


class MatchedPatternLocationMaleWeek6(models.Model):

    w_id = models.IntegerField(primary_key=True)
    w_name = models.TextField(max_length=50)
    w_date = models.TextField(max_length=20)
    open_time = models.TextField(max_length=20)
    close_time = models.TextField(max_length=20)
    user_id = models.IntegerField()
    latitude = models.TextField()
    longitude = models.TextField()
    location = models.TextField()
    gender = models.TextField()

    class Meta:
        db_table = 'matched_pattern_location_week6_male'


class MatchedPatternLocationFemaleWeek1(models.Model):

    w_id = models.IntegerField(primary_key=True)
    w_name = models.TextField(max_length=50)
    w_date = models.TextField(max_length=20)
    open_time = models.TextField(max_length=20)
    close_time = models.TextField(max_length=20)
    user_id = models.IntegerField()
    latitude = models.TextField()
    longitude = models.TextField()
    location = models.TextField()
    gender = models.TextField()

    class Meta:
        db_table = 'matched_pattern_location_week1_female'


class MatchedPatternLocationFemaleWeek2(models.Model):

    w_id = models.IntegerField(primary_key=True)
    w_name = models.TextField(max_length=50)
    w_date = models.TextField(max_length=20)
    open_time = models.TextField(max_length=20)
    close_time = models.TextField(max_length=20)
    user_id = models.IntegerField()
    latitude = models.TextField()
    longitude = models.TextField()
    location = models.TextField()
    gender = models.TextField()

    class Meta:
        db_table = 'matched_pattern_location_week2_female'

class MatchedPatternLocationFemaleWeek3(models.Model):

    w_id = models.IntegerField(primary_key=True)
    w_name = models.TextField(max_length=50)
    w_date = models.TextField(max_length=20)
    open_time = models.TextField(max_length=20)
    close_time = models.TextField(max_length=20)
    user_id = models.IntegerField()
    latitude = models.TextField()
    longitude = models.TextField()
    location = models.TextField()
    gender = models.TextField()

    class Meta:
        db_table = 'matched_pattern_location_week3_female'

class MatchedPatternLocationFemaleWeek4(models.Model):

    w_id = models.IntegerField(primary_key=True)
    w_name = models.TextField(max_length=50)
    w_date = models.TextField(max_length=20)
    open_time = models.TextField(max_length=20)
    close_time = models.TextField(max_length=20)
    user_id = models.IntegerField()
    latitude = models.TextField()
    longitude = models.TextField()
    location = models.TextField()
    gender = models.TextField()

    class Meta:
        db_table = 'matched_pattern_location_week4_female'

class MatchedPatternLocationFemaleWeek5(models.Model):

    w_id = models.IntegerField(primary_key=True)
    w_name = models.TextField(max_length=50)
    w_date = models.TextField(max_length=20)
    open_time = models.TextField(max_length=20)
    close_time = models.TextField(max_length=20)
    user_id = models.IntegerField()
    latitude = models.TextField()
    longitude = models.TextField()
    location = models.TextField()
    gender = models.TextField()

    class Meta:
        db_table = 'matched_pattern_location_week5_female'

class MatchedPatternLocationFemaleWeek6(models.Model):

    w_id = models.IntegerField(primary_key=True)
    w_name = models.TextField(max_length=50)
    w_date = models.TextField(max_length=20)
    open_time = models.TextField(max_length=20)
    close_time = models.TextField(max_length=20)
    user_id = models.IntegerField()
    latitude = models.TextField()
    longitude = models.TextField()
    location = models.TextField()
    gender = models.TextField()

    class Meta:
        db_table = 'matched_pattern_location_week6_female'

