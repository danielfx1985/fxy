import requests
from django.shortcuts import render,redirect
from .forms import addBaseInfoForm,addFamilyInfoForm
# Create your views here.
from django.http import HttpResponse
from django.views import generic
from django.views.generic import TemplateView,ListView
from .models import student_baseInfo,student_family
def index(request):
    return HttpResponse("HELLO sutManage!")

def list(request):
    schoolIfo=student_baseInfo()

class BaseInfoListView(generic.ListView):
    model=student_baseInfo
    context_object_name='baseInfoList'
    template_name='stuManage/infoList.html'
   # def get_queryset(self):
      # return student_baseInfo.
def add(request):
    pass
def addNewStu(request):
    if request.method=="POST":
        form=addBaseInfoForm(request.POST)
        form2=addFamilyInfoForm(request.POST)
        if all([form.is_valid(),form2.is_valid()]):
            post=form.save()
            post=form2.save()
            form2.is_valid()
            return redirect('add_newstu_success')
            #return redirect('/stu/add_newstu_success')
    else:
        form=addBaseInfoForm()
        form2 = addFamilyInfoForm()
    return render(request,'stuManage/add_edit.html',{'form':form,'form2':form2})
def add_newstu_success(request):
    return  render(request,'stuManage/add_newstu_success.html')