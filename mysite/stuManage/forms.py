from django import forms
from .models import student_baseInfo,student_family,student_religionInfo,student_schoolIfo,student_info

class addBaseInfoForm(forms.ModelForm):
    class Meta:
        model=student_baseInfo
        fields=("id","name","minzu","birth_date","age","tel","adress")
        labels={
            "id": "id",
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
        fields=( "relationship","name","minzhu","job_info","tel")
        labels={

            "relationship":"关系",
            "name": "姓名",
            "minzhu": "民族",
            #"family_id": "家庭ID",
            "job_info": "工作信息",
            "tel": "电话",
        }
class addInfoForm(forms.ModelForm):
    class Meta:
        model=student_info
        fields=("__all__")
        labels={
            "name":"姓#--名",
            "minzu":"民族",
            "birth_date": "出生日期",
            "age": "年龄",
            "tel": "电话",
            "adress": "地址",
        }