# -*- coding: utf-8 -*-
from django.shortcuts import render
from django.http import HttpResponse,HttpResponseRedirect,HttpResponsePermanentRedirect
from django.template import RequestContext, loader
from django.shortcuts import render_to_response
from django.contrib import messages
from django.contrib.auth.models import User
from django.contrib import auth
from django.db import transaction
from django.db import IntegrityError
from django.contrib.auth import authenticate
from ...publicMethod import check_user_type
from ..models import NomalUsers
# Create your views here.

#登录
@check_user_type
def login(request):
    if request.method=="POST":
        username =  request.POST.get('username','')
        password =  request.POST.get('password','')
        user = authenticate(username=username, password=password)
        if user :
            auth.login(request, user)
            return HttpResponseRedirect("/nomal/index")
        else:
            messages.error(request, u'账号或者密码不正确.')
            return render_to_response("app/NomalServer/templates/auth/login.html",
                context_instance=RequestContext(request))
            #return render(request, 'app/templates/auth/login.html', context)

    return render(request, 'app/NomalServer/templates/auth/login.html')

#退出
def logout_view(request):
    auth.logout(request)
    return render(request, 'app/NomalServer/templates/auth/login.html')

#注册
@check_user_type
def register(request):
    if request.method=="POST":
        username =  request.POST.get('username','').strip()
        password =  request.POST.get('password','').strip()
        if username <>'' and password <>'':
            check_user = User.objects.filter(username=username)
            if check_user:
                messages.info(request, u'%s已经被注册！'%username)
                return render_to_response("app/NomalServer/templates/auth/register.html",context_instance=RequestContext(request))
            user= User(username=username,email='beginman@gmail.com',password=password)
            user.set_password(password)
            user.save()

            try:
                stuUser_=NomalUsers(user_id=user.id,phone_num=user.username,user_type=request.session.get('user_type'))
                stuUser_.save()
                #messages.info(request, '注册成功')
                #return render_to_response("app/NomalServer/templates/auth/login.html",context_instance=RequestContext(request))
                return render_to_response("app/NomalServer/templates/auth/login.html",{'username':username})
                #return HttpResponseRedirect('/nomal/login/',context)
            except Exception,e:
                print e
                user.delete()
                messages.error(request, e)
                transaction.rollback()
        else:
            messages.info(request, '信息不能为空')
    #return render_to_response("app/NomalServer/templates/auth/register.html",{})
    # template = loader.get_template('app/NomalServer/templates/auth/register.html')
    # context = RequestContext(request, {})
    # return HttpResponse(template.render(context))
    return render_to_response("app/NomalServer/templates/auth/register.html",context_instance=RequestContext(request))



