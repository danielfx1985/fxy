
from django.conf.urls.i18n import i18n_patterns
from django.contrib import admin
from django.urls import include, path
from . import views
urlpatterns = [
    # Change the admin prefix here to use an alternate URL for the
    # admin interface, which would be marginally more secure.
   path('uploader/', views.upload, name='upload'),  # 上传
    path('list/', views.list),  # 列表
    path('download/<id>', views.download, name='download'),  # 下载
    path('delete/<id>', views.delete, name='delete'),  # 删除
]