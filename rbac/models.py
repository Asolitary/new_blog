from django.db import models

# Create your models here.

class User(models.Model):
    '''用户表'''

    gender = (
        ('male','男'),
        ('female','女'),
    )

    name = models.CharField(max_length=128,unique=True)
    password = models.CharField(max_length=256)
    email = models.EmailField(unique=True)
    login_sta = models.BooleanField(default=False)
    login_lock = models.DateTimeField(blank=True,null=True)
    pwd_errnum = models.CharField(max_length=32,default='MA==')
    sex = models.CharField(max_length=32,choices=gender,default='男')
    c_time = models.DateTimeField(auto_now_add=True)
    last_edit = models.DateTimeField(auto_now=True)
    user_permission = models.ForeignKey("Permission",verbose_name='权限',on_delete=models.CASCADE)
    key = models.CharField(max_length=32)

    def __str__(self):
        return self.name

    class Meta:
        ordering = ['c_time']
        verbose_name = '用户'
        verbose_name_plural = '用户'
        db_table = 'user'


class Permission(models.Model):
    permission = (
        ('超级用户','root'),
        ('注册用户','user'),
        ('未注册用户','no_user'),
    )
    login_permission = models.CharField(max_length=32,choices=permission,default='user')

    def __str__(self):
        return self.login_permission

    class Meta:
        verbose_name = '权限'
        verbose_name_plural = '权限'
        db_table = 'permission'