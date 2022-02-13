from django.urls import path,include,re_path
from blog import views

urlpatterns = [
    re_path('blog_content/(\d+)', views.blog_content),
    path('link/', views.link),
    path('submit_content/', views.submit_content),
    re_path('blog_category/(.*)', views.blog_category),
    re_path('blog_demo/(.*)', views.blog_demo),
]
