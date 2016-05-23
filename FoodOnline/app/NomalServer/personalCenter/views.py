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


from django.contrib.auth import authenticate
# Create your views here.


@login_required
def index(request):
    #return HttpResponse("欢迎光临 自强学堂!")
    context = {'latest_question_list': {1:2}}
    return render(request, 'app/NomalServer/templates/index/index.html', context)

def orders(request):
    return render(request, 'app/NomalServer/templates/personalcenter/orders.html')
def order_one(request):
    return render(request, 'app/NomalServer/templates/personalcenter/order_one.html')
def heart(request):
    return render(request, 'app/NomalServer/templates/personalcenter/heart.html')
