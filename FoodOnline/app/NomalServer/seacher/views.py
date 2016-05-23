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


def seacher(request):
    return render(request, 'food_online/templates/seacher/seacher.html')


