from django.conf.urls import url,include
from django.contrib import admin
from app import views as views
urlpatterns = [
    url(r'^$', views.main),
    url(r'^dining/', include('app.DiningServer.urls')),
    url(r'^nomal/', include('app.NomalServer.urls')),
    url(r'^admin/', admin.site.urls),
    url(r'^callback/', views.callback),
    url(r'^login/', views.login),

]
