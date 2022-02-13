from django.urls import path,include,re_path
from rbac import views

urlpatterns = [
    re_path(r'^$', views.index),
    path('index/', views.index),
    path('blog_index/', views.blog_index),
    path('login/', views.login),
    path('login_out/', views.login_out),
    path('forget/', views.forget),
    path('register/', views.register),
    path('update_pwd/', views.update_pwd),
]