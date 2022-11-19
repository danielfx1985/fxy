import requests
from django.shortcuts import render,redirect
from django_tables2 import SingleTableView
import django_tables2 as tables
from django_tables2.export.views import ExportMixin
from django_tables2.export.export import TableExport
from .forms import addBaseInfoForm,addFamilyInfoForm,addInfoForm
# Create your views here.
from django.http import HttpResponse
from django.views import generic
from django.views.generic import TemplateView,ListView
from .tables import StuInfoTable
from .models import student_baseInfo,student_family,student_religionInfo,student_schoolIfo,student_info
import logging
from rest_framework import serializers,viewsets,generics
from rest_framework.views import APIView
from .serializers import student_info_serializer
from django.http import Http404
logger = logging.getLogger(__name__)
def index(request):
    return  render(request,'stuManage/index.html')

def list(request):
    schoolIfo=student_baseInfo()

class student_info_ListView(generic.ListView):
    model=student_info
    context_object_name='student_info'
    template_name='stuManage/infoList.html'

#class stuInfo_viewSet(viewsets.ModelViewSet):
 #   queryset = student_info.objects.all()
  #  serializer_class = student_info_serializer

class stuInfoList_API(viewsets.ModelViewSet):
    queryset = student_info.objects.all()
    serializer_class = student_info_serializer



class student_info_Update(generic.UpdateView):
    model=student_info
    form_class = addInfoForm
 #   context_object_name='student_info_update'
   # fields = "__all__"
    template_name='stuManage/infoUpate.html'
    success_url = "/stu/add_newstu_success"
class student_info_Delete(generic.DeleteView):
    model=student_info
    template_name = 'stuManage/deleting.html'
    print("deleting")
 #   context_object_name='student_info_update'
    fields = "__all__"
   # template_name='stuManage/infoUpate.html'
    success_message = "Deleted Successfully"
    success_url = "/stu/add_newstu_success"

class student_info_create(generic.CreateView):

    model=student_info
    form_class = addInfoForm
   # fields = "__all__"
    #print("sss")


 #   context_object_name='student_info_create'
    template_name='stuManage/infoCreate.html'
    success_url = "/stu/add_newstu_success"
    def form_invalid(self, form):
        logger.info('form_valid called')
        form.instance.user = self.request.user
        return super(student_info_create, self).form_valid(form)
    def form_valid(self, form):
        logger.info('form_valid called')
        form.instance.user = self.request.user
        return super(student_info_create, self).form_valid(form)
def student_info_TableList(request):

    table=StuInfoTable(student_info.objects.all())
   # template_name='stuManage/infoTableList.html'
    return render(request,"stuManage/infoTableList.html",{"table":table})


   # def get_queryset(self):
      # return student_baseInfo.
def add(request):
    pass
'''def addNewStu(request):
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
  #  return render(request,'stuManage/add_edit.html',{'form':form,'form2':form2})
    return render(request, 'stuManage/infoAdd.html', {'form': form, 'form2': form2})
def add_newstu_success(request):
    return  render(request,'stuManage/add_newstu_success.html')
'''
def addNewStu(request):
    if request.method=="POST":
        form=addInfoForm(request.POST)

        form2=addFamilyInfoForm(request.POST)
        if  all([form.is_valid(),form2.is_valid()]):

            post=form.save()
            post2=form2.save()
           # form2.is_valid()
            return redirect('add_newstu_success')
        else:
            for field in form2:
                print("Field Error:", field.name,  field.errors)
            #return redirect('/stu/add_newstu_success')
    else:
        form=addInfoForm()
        form2 = addFamilyInfoForm()
    return render(request,'stuManage/infoCreate.html',{'form':form,'form2':form2})


def add_newstu_success(request):
    return  render(request,'stuManage/add_newstu_success.html')

def searchStuInfo(request):
    q=request.GET.get('q')
    error_msg=''
    print('q',q)
    if not q:
        error_msg = '请输入关键词'
        return HttpResponse("请输入关键词!")
    stuInfo=student_info.objects.filter(name__icontains=q)

    return render(request, 'stuManage/infoList.html', {'student_info': stuInfo})

'''
class TableView(ExportMixin, tables.SingleTableView):
    table_class = MyTable
    model = student_info
    template_name = "django_tables2/bootstrap.html"
    '''
def export_xlsx(request):
    export_format = request.GET.get('_export', None)

    if TableExport.is_valid_format(export_format):
        table = student_info
        exporter = TableExport(export_format, table)
        return exporter.response('table.{}'.format(export_format))