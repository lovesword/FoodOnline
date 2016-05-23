from django.shortcuts import render
from django.http import HttpResponse,HttpResponseRedirect
from django.template import RequestContext, loader
from django.shortcuts import render_to_response
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django.contrib import auth
from django.db.models import Q
from werkzeug.security import generate_password_hash, check_password_hash


#易班授权登录
def callback(request):
    print request,request.GET.get('CODE'),
    return  HttpResponse(request.GET.get('code'))


def main(request):
    user_type=request.session.get('user_type')
    print user_type,user_type
    if not user_type:
        return render_to_response('app/templates/main.html')
    elif user_type==1:
        return HttpResponseRedirect('/nomal/')
    else:
        return HttpResponseRedirect('/dining/')

def login(request):
    user_type=request.session.get('user_type')
    if not user_type:
        return render_to_response('app/templates/main.html')
    elif user_type==1:
        return HttpResponseRedirect('/nomal/login/')
    else:
        return HttpResponseRedirect('/dining/login/')



