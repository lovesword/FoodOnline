# -*-coding:utf-8-*-
from functools import wraps
from django.http import HttpResponse,HttpResponseRedirect,Http404
from django.core.exceptions import ObjectDoesNotExist

def check_user_type(func):
    """
    不带参数的装饰器
    """
    @wraps(func)
    def returned_wrapper(request, *args, **kwargs):
        try:
            if request.path in ['/nomal','/nomal/','/dining','/dining/']:
                return func(request, *args, **kwargs)
            user_type = request.session.get('user_type')
            print  user_type
            if user_type and user_type==1 and request.path.find('/nomal')>=0:
                #request.session.set_expiry()
                return func(request, *args, **kwargs)
            elif user_type and user_type==2 and request.path.find('/dining')>=0:
                #del request.session['user_type']
                return func(request, *args, **kwargs)
            else:
                if user_type:
                    del request.session['user_type']
                #request.session.set_expiry('user_type')
                return HttpResponseRedirect('/')
        except ObjectDoesNotExist:
            raise Http404()
    return returned_wrapper

