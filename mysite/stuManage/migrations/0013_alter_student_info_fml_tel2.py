# Generated by Django 4.1.2 on 2022-11-09 10:40

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('stuManage', '0012_alter_student_info_fml_tel2'),
    ]

    operations = [
        migrations.AlterField(
            model_name='student_info',
            name='fml_tel2',
            field=models.IntegerField(blank=True, null=True),
        ),
    ]
