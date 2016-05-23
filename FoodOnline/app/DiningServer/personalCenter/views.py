from django.shortcuts import render
from django.http import HttpResponse
from django.contrib.auth.decorators import login_required
from django.contrib import messages
from django.shortcuts import render_to_response
from django.template import RequestContext, loader
from django.core.paginator import Paginator
from ..models import DiningUsers
from ...publicMethod import check_user_type
from ...models import Foods
import time,datetime
import json
@check_user_type
def personalcenter(request):
    request.session['user_type'] = 2
    res = DiningUsers.objects.filter(is_deleted=0)
    return render(request, 'app/DiningServer/templates/personalCenter/personalcenter.html', {'res':res})

@check_user_type
def personalcenter_list(request):
    request.session['user_type'] = 2
    res = DiningUsers.objects.filter(is_deleted=0)
    return render(request, 'app/DiningServer/templates/personalCenter/personalcenter_list.html', {'res':res})

@login_required
def add_foods(request):
    request.session['user_type'] = 2
    dicts = {"key1": 1, "key2": 2, "key3": 3, }
    if request.method == 'POST':
        dining = DiningUsers.objects.filter(is_deleted=0,user_id=request.user.id).first()
        photo = request.POST.get('photo')
        name = request.POST.get('name')
        info = request.POST.get('info')
        dining_id = dining.user_id

        food = Foods(name=name,photo=photo,info=info,dining_id=dining_id,create_time=datetime.datetime.now(),is_deleted=0)
        food.save()
        messages.info(request, u'添加成功！')
        return render_to_response("app/DiningServer/templates/personalCenter/add_foods.html",{'dicts':dicts},context_instance=RequestContext(request))
    return render(request, 'app/DiningServer/templates/personalCenter/add_foods.html', {'dicts':dicts})

@login_required
def comp_dining_info(request):
    request.session['user_type'] = 2
    if request.method == 'POST':
        photo= request.POST.get('photo')
        address= request.POST.get('address')
        dining_info= request.POST.get('dining_info')
        dining_name= request.POST.get('dining_name')
        dining = DiningUsers.objects.filter(is_deleted=0,user_id=request.user.id).first()
        dining.photo = photo
        dining.address = address
        dining.dining_info = dining_info
        dining.dining_name = dining_name
        dining.save()
        messages.info(request, u'提交成功！')
        return render_to_response("app/DiningServer/templates/personalCenter/comp_dining_info.html",{},context_instance=RequestContext(request))
    return render(request, 'app/DiningServer/templates/personalCenter/comp_dining_info.html', {})


@login_required
def get_dining_foods(request,dining_id,pagnum):
    dining_id =int(dining_id)
    pagnum = int(pagnum)
    request.session['user_type'] = 2
    if request.method == 'GET':
        food_list=Foods.objects.filter(is_deleted=0,dining_id=dining_id).order_by('create_time')[pagnum*5:(pagnum+1)*5]
        dict_list = [{'photo':i.photo,'name':i.name,'dining_id':i.dining_id,'dining_name':i.dining.dining_name,'info':i.info,'create_time':str(i.create_time)} for i in food_list ]
        for i in food_list:
            print i.name
        return HttpResponse(json.dumps({'dict_list':dict_list,'length_':len(food_list)}), content_type="application/json")
    return HttpResponse(json.dumps({'dict_list':[],'length':0}), content_type="application/json")