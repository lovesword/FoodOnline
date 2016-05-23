from django.conf.urls import url
from . import views
from auth import views as auth_views
from personalCenter import views as  personalCenter_views
from index import views as  index_views
from seacher import views as  seacher_views


# urlpatterns = [
#     #首页
#     url(r'^$', index_views._index, name='/'),
#     url(r'^index/', index_views._index, name='index'),
#     ]
#
# urlpatterns += [
#     #搜索
#     url(r'^seacher/', seacher_views.seacher, name='seacher'),
# ]
#
# urlpatterns += [
#     #个人中心
#     url(r'^personalCenter/heart', personalCenter_views.heart, name='heart'),
#     url(r'^personalCenter/orders', personalCenter_views.orders, name='orders'),
#     url(r'^personalCenter/order_one', personalCenter_views.order_one, name='order_one'),
# ]
#
# urlpatterns += [
#     #登录注册
#     url(r'^login/', auth_views.login_, name='login'),
#     url(r'^register/', auth_views.register, name='register'),
# ]
