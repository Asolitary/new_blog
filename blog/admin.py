from django.contrib import admin
from . import models

# Register your models here.


class EntryAdmin(admin.ModelAdmin):
    list_display = ['title','id','author','visiting','created_time','modifyed_time','标签']

    def 标签(self, obj):
        return [tag.name for tag in obj.tags.all()]

    filter_horizontal = ('tags',)
    ordering = ["-created_time"]


class CommentAdmin(admin.ModelAdmin):
    list_display = ['name','id','content','blog','create_time']
    ordering = ["-create_time"]


admin.site.register(models.Category)
admin.site.register(models.Tag)
admin.site.register(models.Comment,CommentAdmin)
admin.site.register(models.Entry,EntryAdmin)