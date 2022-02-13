from django.db import models
from rbac.models import User
from ckeditor_uploader.fields import RichTextUploadingField
from datetime import datetime

# Create your models here.

class Category(models.Model):
    name = models.CharField('分类',max_length=128)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = '博客分类'
        verbose_name_plural = verbose_name
        db_table = 'category'


class Tag(models.Model):
    name = models.CharField('标签', max_length=128)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = '博客标签'
        verbose_name_plural = verbose_name
        db_table = 'tag'



class Entry(models.Model):
    title = models.CharField('文章标题',max_length=128)
    author = models.ForeignKey(User,verbose_name='作者',on_delete=models.CASCADE)
    img = models.ImageField(upload_to='blog_img/%Y/%m/%d/',null=True,blank=True,verbose_name='博客配图')
    body = RichTextUploadingField(verbose_name='正文')
    visiting = models.PositiveIntegerField('访问量', default=0)
    abstract = models.TextField('摘要',max_length=256,null=True,blank=True)
    category = models.ManyToManyField('Category',verbose_name='博客分类')
    tags = models.ManyToManyField('Tag',verbose_name='标签')
    created_time = models.DateTimeField('创建时间',auto_now_add=True)
    modifyed_time = models.DateTimeField('修改时间',auto_now_add=True)


    def __str__(self):
        return self.title

    class Meta:
        ordering = ['-created_time']
        verbose_name = '博客正文'
        verbose_name_plural = verbose_name
        db_table = 'entry'

    #body的值改变才会更新修改时间
    def __init__(self, *args, **kwargs):
        super(Entry, self).__init__(*args, **kwargs)
        #先把原来的body设置为一个私有属性
        self._body = self.body

    def save(self, *args, **kwargs):
        #修改后要保存时，传过来的body和保存的原来的body对比
        if self._body != self.body:
            self.modifyed_time = datetime.now()
        super(Entry, self).save(*args, **kwargs)


class Comment(models.Model):

    name = models.ForeignKey(User, on_delete=models.CASCADE,verbose_name='评论者')
    content = models.CharField(verbose_name='内容', max_length=300)
    create_time = models.DateTimeField(verbose_name='创建时间', auto_now_add=True)
    blog = models.ForeignKey('Entry', on_delete=models.CASCADE,verbose_name='博客')

    class Meta:
        ordering = ['-create_time']
        verbose_name = '博客评论'
        verbose_name_plural = verbose_name
        db_table = 'comment'

    def __str__(self):
        return self.content[:10]


