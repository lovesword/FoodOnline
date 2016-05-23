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
from django.contrib.auth import authenticate
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
def _index(request):
    request.session['user_type'] = 1
    return render(request, 'app/NomalServer/templates/index/index.html', {})

