from django.db import models

# Create your models here.
from django.db import models





class student_baseInfo(models.Model):
    def __str__(self):
        return self.name

    objects = models.Manager()
    name = models.CharField(max_length=500)#姓名
    minzu=models.CharField(max_length=50);#民族
    birth_date=models.DateTimeField()#出生日期
    age=models.IntegerField()#年龄
    tel=models.IntegerField()#联系电话
    adress=models.CharField(max_length=150)#地址
'''monk_photo=models.ImageField();#袈裟照
    photo = models.ImageField();  # 便装照
    ID_back_photo=models.ImageField(); #身份证背面
    ID_front_photo = models.ImageField();  # 身份证正面
    familyCard_photo= models.ImageField();  #户口本主页
    familyCard_self_photo = models.ImageField();  # 户口本本人页
    securty_agreement_photo=models.ImageField();  #学生安全协议
    '''

class student_religionInfo(models.Model):
    def __str__(self):
        return self.dhamma_name

    objects=models.Manager()
    dhamma_name=models.CharField(max_length=500)
    title2=models.CharField(max_length=50,default="沙马内拉")#教职身份
    teacher_id=models.IntegerField()#教职人员编号（无/输入）
    monk_date=models.DateTimeField()#出家年月（2000-01-01）
    monk_temple=models.CharField(max_length=500)#出家寺院
    sila_teacher=models.CharField(max_length=500)#戒师

class student_schoolIfo(models.Model):
    objects = models.Manager()
    grade=models.IntegerField()#年级
    base_id=models.IntegerField()#学号（国民教育）
    religion_id = models.IntegerField()#学号（宗教教育）
    study_level=models.CharField(max_length=500)#学历层次（中专/静修）
    student_type=models.CharField(max_length=500)#全日制、非全日制
    school_lenth=models.IntegerField()#学制
    enrol_date=models.DateTimeField()#入学日期
    middle_exam=models.BooleanField(default=True)#是否参加中考
    graduate_school=models.CharField(max_length=50)#毕业学校

class student_family(models.Model):
    objects = models.Manager()
    student_id=models.IntegerField()#学生ID
    relationship = models.CharField(max_length=50)  # 家属关系
    name=models.CharField(max_length=50)#家属姓名
    minzhu=models.CharField(max_length=50)#民族
    family_id=models.IntegerField()#家长ID
    job_info=models.CharField(max_length=50)#工作单位及职务
    tel=models.IntegerField()#联系方式（检测11位）

