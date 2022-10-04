# Generated by Django 3.1.14 on 2022-09-16 14:25

from django.db import migrations, models
import file_upload.models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='File',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('file', models.FileField(null=True, upload_to=file_upload.models.user_directory_path)),
                ('upload_method', models.CharField(max_length=20, verbose_name='Upload Method')),
            ],
        ),
    ]
