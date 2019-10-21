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
