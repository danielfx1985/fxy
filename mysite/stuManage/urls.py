from django.contrib import admin
from django.urls import path,re_path
from django.conf import settings
from django.conf.urls.static import static
from .views  import index ,addNewStu,add_newstu_success,student_info_ListView,searchStuInfo,export_xlsx,student_info_TableList,student_info_create,student_info_Update,student_info_Delete,stuInfoList_API,export_students_xls
from rest_framework import routers
from django.urls import include, path
stuInfo_list=stuInfoList_API.as_view(
    {'get':'list',
     'post':'create'}
)
router = routers.DefaultRouter()
router.register(r'stu_info', viewset=stuInfoList_API)

urlpatterns =[
    path('',index,name='index'),
    path('student_info/',student_info_ListView.as_view(),name='student_info'),
    path('student_info_table/',student_info_TableList,name='student_info_table'),
  #  path('add/',addNewStu,name='add'),
    path('add/',student_info_create.as_view(),name='add'),
    path('<pk>/update',student_info_Update.as_view(),name='update'),
    path('<pk>/delete',student_info_Delete.as_view(),name='delete'),
    path('add_newstu_success',add_newstu_success,name='add_newstu_success'),
    path('searchStu',searchStuInfo,name='searchStuInfo'),
    #path('<pk>/export_xlsx',export_xlsx,name='export_xlsx'),
    path('api/',include(router.urls)),

    path('<pk>/export_xls',export_students_xls,name='export_xls'),
  #  re_path('stu_info/',stuInfo_list),

   # static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
]