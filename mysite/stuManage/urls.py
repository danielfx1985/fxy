from django.contrib import admin
from django.urls import path
from django.conf import settings
from django.conf.urls.static import static
from .views  import index ,addNewStu,add_newstu_success,student_info_ListView,searchStuInfo,export_xlsx,student_info_TableList,student_info_create,student_info_Update,student_info_Delete
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
    path('export_xlsx',export_xlsx,name='export_xlsx'),
   # static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
]