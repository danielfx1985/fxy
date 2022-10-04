from django.db import models

# Create your models here.
from django.db import models





class student(models.Model):
    def __str__(self):
        return self.name

    name=models.CharField(max_length=500)
    age=models.IntegerField()
    grade=models.IntegerField()