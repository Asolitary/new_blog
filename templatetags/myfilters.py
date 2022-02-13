import re
from django import template

register = template.Library()

@register.filter(name="noImg")
def noimg(value):
    # print('111111',value)
    value = re.sub("<img.*/>",r"<i class='fa fa-spinner fa-spin fa-fw'></i>",value)
    # print('222222', value)
    return value


@register.filter(name="noHtml")
def filter_tags(htmlstr,num):
    str_first = re.sub('<.*?>', "", htmlstr)  # 匹配所有html标签并用“”代替

    str_enfin = str_first.replace('/n', "")  # 将换行符替换成空
    str_enfin = str_enfin[0:num] + '...'
    return str_enfin