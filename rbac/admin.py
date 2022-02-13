from django.contrib import admin
from . import models

# Register your models here.

class UserAdmin(admin.ModelAdmin):
    list_display = ['name', 'password', 'email', 'login_sta', 'login_lock','pwd_errnum','sex','last_edit','c_time','user_permission',]
    ordering = ["-c_time"]

admin.site.register(models.User,UserAdmin)
admin.site.register(models.Permission)