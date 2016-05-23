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
from ...publicMethod import check_user_type
from ..models import DiningUsers
from ...models import Foods
# Create your views here.

# def test(request):
#     #return HttpResponse("欢迎光临 自强学堂!")
#     context = {'latest_question_list': {1:2}}
#     #return render(request, 'app/templates/test.html', context)
#     template = loader.get_template('test.html')
#     context = RequestContext(request, {
#         'latest_question_list': 12,
#     })
#     return HttpResponse(template.render(context))

@check_user_type
def foods(request):
    request.session['user_type'] = 2
    res = DiningUsers.objects.filter(is_deleted=0)
    return render(request, 'app/DiningServer/templates/index/foods.html', {'res':res})

@check_user_type
def foods_list(request):
    request.session['user_type'] = 2
    food_list=Foods.objects.filter(is_deleted=0,dining_id=81).order_by('create_time')
    return render(request, 'app/DiningServer/templates/index/foods_list.html', locals())

@check_user_type
def messages(request):
    request.session['user_type'] = 2
    res = DiningUsers.objects.filter(is_deleted=0)
    return render(request, 'app/DiningServer/templates/index/messages.html', {'res':res})

@check_user_type
def messages_list(request):
    request.session['user_type'] = 2
    res = DiningUsers.objects.filter(is_deleted=0)
    return render(request, 'app/DiningServer/templates/index/messages_list.html', {'res':res})

@check_user_type
def orders(request):
    request.session['user_type'] = 2
    res = DiningUsers.objects.filter(is_deleted=0)
    return render(request, 'app/DiningServer/templates/index/orders.html', {'res':res})

@check_user_type
def orders_list(request):
    request.session['user_type'] = 2
    res = DiningUsers.objects.filter(is_deleted=0)
    return render(request, 'app/DiningServer/templates/index/orders_list.html', {'res':res})

@check_user_type
def tab_webview_subpage_chat(request):
    request.session['user_type'] = 2
    return render(request, 'app/DiningServer/templates/index/tab_webview_subpage_chat.html')
#
# @check_user_type
# def pullrefresh_main(request):
#     request.session['user_type'] = 2
#     res = DiningUsers.objects.filter(is_deleted=0)
#     return render(request, 'app/DiningServer/templates/index/pullrefresh_main.html', {'res':res})

@check_user_type
def tab_webview_main(request):
    return render(request, 'app/DiningServer/templates/index/tab_webview_main.html', {})
#
# @check_user_type
# def tab_webview_subpage_about(request):
#     return render(request, 'app/DiningServer/templates/index/tab_webview_subpage_about.html', {})
#
# @check_user_type
# def tab_webview_subpage_chat(request):
#     return render(request, 'app/DiningServer/templates/index/tab_webview_subpage_chat.html', {})
#
# @check_user_type
# def tab_webview_subpage_contact(request):
#     return render(request, 'app/DiningServer/templates/index/tab_webview_subpage_contact.html', {})
#
# @check_user_type
# def tab_webview_subpage_setting(request):
#     return render(request, 'app/DiningServer/templates/index/tab_webview_subpage_setting.html', {})