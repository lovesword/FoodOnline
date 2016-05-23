# -*- coding: utf-8 -*-
from django.conf.urls import url
from auth import views as auth_views
from personalCenter import views as personalCenter_views
from index import views as index_views
from seacher import views as seacher_views

urlpatterns = [    
    #首页
    url(r'^$', index_views.foods, name='/'),
    url(r'^foods/', index_views.foods, name='foods'),
    url(r'^index/', index_views.foods, name='index'),
    url(r'^messages/', index_views.messages, name='messages'),
    url(r'^orders/', index_views.orders, name='orders'),
    url(r'^tab_webview_subpage_chat/', index_views.tab_webview_subpage_chat, name='tab_webview_subpage_chat'),
    url(r'^tab_webview_main/', index_views.tab_webview_main, name='tab_webview_main'),

    ]



urlpatterns += [
    #个人中心
    url(r'^personalcenter/', personalCenter_views.personalcenter, name='personalcenter'),
    url(r'^add_foods/', personalCenter_views.add_foods, name='add_foods'),
    url(r'^comp_dining_info/', personalCenter_views.comp_dining_info, name='comp_dining_info'),
    url(r'^get_dining_foods/(\d+)/(\d+)/$', personalCenter_views.get_dining_foods, name='get_dining_foods'),




]

urlpatterns += [
    #登录注册

    url(r'^login/', auth_views.login, name='login'),
    url(r'^register/', auth_views.register, name='register'),
]

urlpatterns += [
    url(r'^foods_list/', index_views.foods_list, name='foods_list'),
    url(r'^messages_list/', index_views.messages_list, name='messages_list'),
    url(r'^orders_list/', index_views.orders_list, name='orders_list'),
    url(r'^personalcenter_list/', personalCenter_views.personalcenter_list, name='personalcenter_list'),

]