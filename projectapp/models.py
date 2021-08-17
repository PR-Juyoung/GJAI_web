from django.db import models

# Create your models here.


class Project(models.Model):
    name = models.CharField(max_length=20, null=False)
    description = models.CharField(max_length=200, null=True)  # null=True 는 DB상에 널이어도 된다~
    image = models.ImageField(upload_to='project/', null=False)

    created_at = models.DateTimeField(auto_now_add=True)
