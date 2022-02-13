from django.shortcuts import render,HttpResponse,redirect
from blog.models import Entry
from blog import models
from django.http import JsonResponse
from django.core.paginator import Paginator

# Create your views here.


def getPage(request,object):
    #每4个分一页
    paginator = Paginator(object,4)
    page_num = request.GET.get('page', 1)
    page_of_blogs = paginator.get_page(page_num)
    # 返回此页的对象列表
    # print('page_of_blogs',page_of_blogs)
    blog_page = page_of_blogs.number
    # 获取当前页码
    # print('blog_page',blog_page)
    blog_page_range = list(range(max(blog_page-2,1),blog_page))+list(range(blog_page,min(blog_page+2,paginator.num_pages)+1))
    #返回总页数
    # print('paginator.num_pages',paginator.num_pages)
    print("blog_page_range",blog_page_range)
    #添加省略页码标记
    if blog_page_range[0] -1 >= 2:
        blog_page_range.insert(0,'...')
    if paginator.num_pages - blog_page_range[-1] >= 2:
        blog_page_range.append('...')
    # 获取首页尾页
    if blog_page_range[0] != 1:
        blog_page_range.insert(0,1)
    if blog_page_range[-1] != paginator.num_pages:
        blog_page_range.append(paginator.num_pages)
    context = {}
    context['page_of_blogs'] = page_of_blogs
    context['blog_page_range'] = blog_page_range
    return context


def blog_content(request,id):
    blog = models.Entry.objects.filter(id=id).first()
    blog.visiting += 1
    blog.save()
    # print(blog.comment_set.all())
    blog_comment = blog.comment_set.all().order_by('create_time')
    # print(blog_comment)
    data = {
        'blog': blog,
        'blog_comment':blog_comment
    }
    return render(request,'blog_content.html',{'data':data})


def link(request):
    return render(request,'link.html')

def submit_content(request):
    if request.method == 'POST':
        res = {}
        try:
            username = request.session['username']
            content = request.POST.get('content')
            id = request.POST.get('id')
            user = models.User.objects.filter(name=username).first()
            blog = models.Entry.objects.filter(pk = id).first()
            blog_content = models.Comment.objects.create(name=user,
                                                         content=content,
                                                         blog=blog)
            blog_content.save()
            res['result'] = 1
            return JsonResponse(res, safe=False)
        except Exception as e:
            print(e)
            res['result'] = 0
            return JsonResponse(res, safe=False)

def blog_category(request,category):
    # print(category)
    categorys = models.Category.objects.all()
    if category == 'all':
        blogs = models.Entry.objects.all()
    else:
        blogs = models.Entry.objects.filter(category__name=category)
    page = getPage(request,blogs)
    blogs = page['page_of_blogs'].object_list
    data = {
        "categorys": categorys,
        "blogs":blogs,
        "page":page

    }
    return render(request,'category.html',{"data":data})


def blog_demo(request,html):
    html ='demo/' + html + '.html'
    return render(request,html)

