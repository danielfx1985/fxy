# Generated by Django 4.1.2 on 2022-11-09 09:52

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('stuManage', '0007_alter_student_info_fml_name5_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='student_info',
            name='fml_name1',
            field=models.CharField(default='', max_length=50),
        ),
        migrations.AlterField(
            model_name='student_info',
            name='fml_name2',
            field=models.CharField(blank=True, default='', max_length=50),
        ),
        migrations.AlterField(
            model_name='student_info',
            name='fml_name3',
            field=models.CharField(blank=True, default='', max_length=50),
        ),
        migrations.AlterField(
            model_name='student_info',
            name='fml_name4',
            field=models.CharField(default='', max_length=50),
        ),
        migrations.AlterField(
            model_name='student_info',
            name='fml_tel3',
            field=models.IntegerField(blank=True, default=134),
        ),
        migrations.AlterField(
            model_name='student_info',
            name='fml_tel4',
            field=models.IntegerField(blank=True, default=122),
        ),
        migrations.AlterField(
            model_name='student_info',
            name='job_info1',
            field=models.CharField(default='', max_length=50),
        ),
        migrations.AlterField(
            model_name='student_info',
            name='job_info2',
            field=models.CharField(blank=True, default='', max_length=50),
        ),
        migrations.AlterField(
            model_name='student_info',
            name='job_info3',
            field=models.CharField(blank=True, default='', max_length=50),
        ),
        migrations.AlterField(
            model_name='student_info',
            name='job_info4',
            field=models.CharField(blank=True, default='', max_length=50),
        ),
        migrations.AlterField(
            model_name='student_info',
            name='minzhu1',
            field=models.CharField(default='', max_length=50),
        ),
        migrations.AlterField(
            model_name='student_info',
            name='minzhu2',
            field=models.CharField(blank=True, default='', max_length=50),
        ),
        migrations.AlterField(
            model_name='student_info',
            name='minzhu3',
            field=models.CharField(blank=True, default='', max_length=50),
        ),
        migrations.AlterField(
            model_name='student_info',
            name='minzhu4',
            field=models.CharField(default='', max_length=50),
        ),
        migrations.AlterField(
            model_name='student_info',
            name='relationship1',
            field=models.CharField(default='', max_length=50),
        ),
        migrations.AlterField(
            model_name='student_info',
            name='relationship2',
            field=models.CharField(blank=True, default='', max_length=50),
        ),
        migrations.AlterField(
            model_name='student_info',
            name='relationship3',
            field=models.CharField(blank=True, default='', max_length=50),
        ),
        migrations.AlterField(
            model_name='student_info',
            name='relationship4',
            field=models.CharField(blank=True, default='', max_length=50),
        ),
    ]
