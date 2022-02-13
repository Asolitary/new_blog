from django.shortcuts import render,HttpResponse,redirect
from blog import models
from .models import User,Permission
from django.http import JsonResponse
import base64
# Create your views here.


def index(request):
    return render(request,'index.html')

def blog_index(request):
    # request.session['username'] = ''
    blogs_top = models.Entry.objects.all().order_by('-visiting')[0:8]
    # print(blogs)
    blogs = models.Entry.objects.all().order_by('-created_time')[0:8]
    new_comment = models.Comment.objects.all().order_by('-create_time')[0:3]
    categorys = models.Category.objects.all()
    data = {
        "blogs_top": blogs_top,
        "blogs": blogs,
        "new_comment":new_comment,
        "categorys":categorys
    }
    return render(request,'article.html',{"data":data})


#登录
def login(request):
    if request.method == "GET":
        return render(request, 'login.html')
    elif request.method == "POST":
        res = {}
        username = request.POST.get('username')
        pwd = request.POST.get('password')
        try:
            user = User.objects.filter(name=username).first()
            if not user:
                res['result'] = 0
                return JsonResponse(res,safe=False)
            if user.password == pwd:
                if user.pwd_errnum:
                    user.pwd_errnum = "MA=="
                if user.login_lock:
                    user.login_lock = None
                user.save()
                request.session['user_id'] = user.pk
                request.session['username'] = user.name
                res['result'] = 1
            else:
                # print(1111)
                pwd_errnum = int(base64.b64decode(str(user.pwd_errnum))) + 1
                # print(pwd_errnum)
                user.pwd_errnum = base64.b64encode(str(pwd_errnum).encode('utf8')).decode('utf8')
                # print(user.pwd_errnum)
                user.save()
                res['result'] = 2
                # print(2222)
        except Exception as e:
            res['result'] = 9
        return JsonResponse(res, safe=False)


def login_out(request):
    request.session.flush()
    return redirect('/blog_index/')


def forget(request):
    if request.method == "GET":
        return render(request,'forget.html')
    if request.method == 'POST':
        username = request.POST.get('username')
        # username = request.POST.get('username')
        key = request.POST.get('key')
        res = {}
        user = User.objects.filter(name=username).first()
        if not user:
            res['result'] = 0
            return JsonResponse(res, safe=False)
        elif user.key != key:
            res['result'] = 1
            return JsonResponse(res, safe=False)
        else:
            res['result'] = 200
            return JsonResponse(res, safe=False)


def update_pwd(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        key = request.POST.get('key')
        password= request.POST.get('password')
        res = {}
        user = User.objects.filter(name=username).first()
        try:
            if user.key == key:
                if user.password != password:
                    user.password = password
                    user.save()
                    res['result'] = 0
                    return JsonResponse(res, safe=False)
                else:
                    res['result'] = 1
                    return JsonResponse(res, safe=False)
            else:
                res['result'] = 200
                return JsonResponse(res, safe=False)
        except Exception as e:
            res['result'] = 500
            return JsonResponse(res, safe=False)

#注册
def register(request):
    if request.method == "GET":
        return render(request,'register.html')
    if request.method == "POST":
        username = request.POST.get('username')
        password = request.POST.get('password')
        email = request.POST.get('email')
        key = request.POST.get('key')
        sex = request.POST.get('sex')
        res = {}
        # print(username,password,email,key,sex)
        user = User.objects.filter(name=username).first()
        getemail = User.objects.filter(email=email).first()
        if user:
            res['result'] = 1
            return JsonResponse(res, safe=False)
        elif getemail:
            res['result'] = 2
            return JsonResponse(res, safe=False)
        else:
            user_permission = Permission.objects.filter(login_permission='注册用户').first()
            # print(user_permission)
            new_user = User.objects.create(name=username,
                                       password=password,
                                       email=email,
                                       sex=sex,
                                       key=key,
                                       user_permission=user_permission)
            new_user.save()
            res['result'] = 0
            return JsonResponse(res, safe=False)
