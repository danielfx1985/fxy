from django.conf.urls.i18n import i18n_patterns
from django.contrib import admin
from django.urls import include, path
from . import views
urlpatterns = [
    # Change the admin prefix here to use an alternate URL for the
    # admin interface, which would be marginally more secure.
   path('video_upload/', views.homepage, name='video_upload'),  # 上传

]