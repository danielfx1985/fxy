from django.db import models
from django.conf import settings
# Create your models here.
from django.db import models
import os

#_roles_path = os.path.join(_base_path, 'roles')




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
    born_place=models.CharField(max_length=150,default="城市")#户籍性质
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

class student_info(models.Model):
    #基本信息
    objects = models.Manager()
    name = models.CharField(max_length=500,default="艾叫")  # 姓名
    minzu = models.CharField(max_length=50,default="傣");  # 民族
    birth_date = models.DateTimeField()  # 出生日期
    age = models.IntegerField(default=18)  # 年龄
    tel = models.IntegerField(default=125)  # 联系电话
    adress = models.CharField(max_length=150,default="景洪")  # 地址
    # 宗教信息
    dhamma_name = models.CharField(max_length=500,default="都比")
    title2 = models.CharField(max_length=50, default="沙马内拉")  # 教职身份
    teacher_id = models.IntegerField(default=1)  # 教职人员编号（无/输入）
    monk_date = models.DateTimeField()  # 出家年月（2000-01-01）
    monk_temple = models.CharField(max_length=500,default="曼弄")  # 出家寺院
    sila_teacher = models.CharField(max_length=500,default="马哈国")  # 戒师
    # 学校信息
    grade = models.IntegerField(default=1)  # 年级
    base_id = models.IntegerField(default=1)  # 学号（国民教育）
    religion_id = models.IntegerField(default=1)  # 学号（宗教教育）
    study_level = models.CharField(max_length=500,default=1)  # 学历层次（中专/静修）
    student_type = models.CharField(max_length=500,default="全日制")  # 全日制、非全日制
    school_lenth = models.IntegerField(default=3)  # 学制
    enrol_date = models.DateTimeField()  # 入学日期
    middle_exam = models.BooleanField(default=True)  # 是否参加中考
    graduate_school = models.CharField(max_length=50)  # 毕业学校
    # 家庭信息

    relationship1 = models.CharField(max_length=50,default="")  # 家属关系1
    fml_name1=models.CharField(max_length=50,default="")#家属姓名1
    minzhu1=models.CharField(max_length=50,default="")#民族1
    #family_id=models.IntegerField()#家长ID1
    job_info1=models.CharField(max_length=50,default="")#工作单位及职务1
    fml_tel1=models.IntegerField(blank=True,null=True)#联系方式（检测11位）1

    relationship2 = models.CharField(max_length=50,default="",blank=True)  # 家属关系1
    fml_name2 = models.CharField(max_length=50,default="",blank=True)  # 家属姓名1
    minzhu2 = models.CharField(max_length=50,default="",blank=True)  # 民族1
    # family_id=models.IntegerField()#家长ID1
    job_info2 = models.CharField(max_length=50,default="",blank=True)  # 工作单位及职务1
    fml_tel2 = models.IntegerField(blank=True,null=True)  # 联系方式（检测11位）1


    relationship3 = models.CharField(max_length=50,default="",blank=True)  # 家属关系1
    fml_name3 = models.CharField(max_length=50,default="",blank=True)  # 家属姓名1
    minzhu3 = models.CharField(max_length=50,default="",blank=True)  # 民族1
    # family_id=models.IntegerField()#家长ID1
    job_info3 = models.CharField(max_length=50,default="",blank=True)  # 工作单位及职务1
    fml_tel3 = models.IntegerField(blank=True,null=True)  # 联系方式（检测11位）1

    relationship4 = models.CharField(max_length=50,default="",blank=True)  # 家属关系1
    fml_name4 = models.CharField(max_length=50,default="",blank=True)  # 家属姓名1
    minzhu4 = models.CharField(max_length=50,default="",blank=True)  # 民族1
    # family_id=models.IntegerField()#家长ID1
    job_info4= models.CharField(max_length=50,default="",blank=True)  # 工作单位及职务1
    fml_tel4 = models.IntegerField(null=True,blank=True)  # 联系方式（检测11位）1

    relationship5 = models.CharField(max_length=50,default="",blank=True)  # 家属关系1
    fml_name5 = models.CharField(max_length=50,default="",blank=True)  # 家属姓名1
    minzhu5 = models.CharField(max_length=50,default="",blank=True)  # 民族1
    # family_id=models.IntegerField()#家长ID1
    job_info5 = models.CharField(max_length=50,default="",blank=True)  # 工作单位及职务1
    fml_tel5 = models.IntegerField(blank=True,null=True)  # 联系方式（检测11位）1

    #文件

    jiasha_photo=models.ImageField( null=True,blank=True)
    clothes_photo = models.ImageField( null=True,blank=True)
    ID_f_photo = models.ImageField( null=True,blank=True)
    ID_b_photo = models.ImageField( null=True,blank=True)
    FamilyAc_m_photo = models.ImageField( null=True,blank=True)
    FamilyAc_p_photo = models.ImageField( null=True,blank=True)
    security = models.ImageField( null=True,blank=True)

class student_family(models.Model):
    objects = models.Manager()
    student=models.ForeignKey("student_info",on_delete=models.CASCADE)
    relationship = models.CharField(max_length=50)  # 家属关系
    name=models.CharField(max_length=50)#家属姓名
    minzhu=models.CharField(max_length=50)#民族
    #family_id=models.IntegerField()#家长ID
    job_info=models.CharField(max_length=50)#工作单位及职务
    tel=models.IntegerField()#联系方式（检测11位）

