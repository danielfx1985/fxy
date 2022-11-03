from django.contrib import admin
from django.urls import path
from .views  import index ,BaseInfoListView,addNewStu,add_newstu_success
urlpatterns =[
    path('',index,name='index'),
    path('baseInfo/',BaseInfoListView.as_view(),name='baseInfo'),
    path('add',addNewStu,name='add'),
    path('add_newstu_success',add_newstu_success,name='add_newstu_success'),
]