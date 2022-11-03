from django import forms
from .models import student_baseInfo,student_family,student_religionInfo,student_schoolIfo

class addBaseInfoForm(forms.ModelForm):
    class Meta:
        model=student_baseInfo
        fields=("name","minzu","birth_date","age","tel","adress")
        labels={
            "name":"姓名",
            "minzu":"民族",
            "birth_date": "出生日期",
            "age": "年龄",
            "tel": "电话",
            "adress": "地址",
        }

class addFamilyInfoForm(forms.ModelForm):
    class Meta:
        model=student_family
        fields=("student_id","relationship","name","minzhu","family_id","job_info","tel")
        labels={
            "student_id":"学生ID",
            "relationship":"关系",
            "name": "姓名",
            "minzhu": "民族",
            "family_id": "家庭ID",
            "job_info": "工作信息",
            "tel": "电话",
        }