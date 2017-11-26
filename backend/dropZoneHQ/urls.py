"""DropZoneHQ URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.11/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
import sys

from django.conf import settings
from django.conf.urls.static import static
from django.views.generic import TemplateView
from django.conf.urls import url
from django.contrib import admin

sys.path.append('../')

from backend.datastore.views import *

urlpatterns = [
    url(r'^(?i)admin[/]?', admin.site.urls),
    url(r'^(?i)rigs/(?P<pk>[0-9]+)[/]?$', RigDetail.as_view()),
    url(r'^(?i)rigs/student[s]?/available-for-signout[/]?$', AvailableStudentRigList.as_view()),
    url(r'^(?i)rigs/tandem[s]?/available-for-signout[/]?$', AvailableTandemRigList.as_view()),
    url(r'^(?i)rigsheet[s]?/all[/]?$', EmployeeVsSignoutList.as_view()),
    url(r'^(?i)rigsheet[s]?/(?P<pk>[0-9]+)[/]?$', EmployeeVsSignoutDetail.as_view()),
    url(r'^(?i)rigsheet[s]?/student[s]?[/](?P<pk>[0-9]+)[/]?$', EmployeeVsSignoutStudentDetail.as_view()),
    url(r'^(?i)rigsheet[s]?/tandem[s]?[/](?P<pk>[0-9]+)[/]?$', EmployeeVsSignoutTandemDetail.as_view()),
    url(r'^(?i)rigsheet[s]?/student[s]?[/]?$', EmployeeVsSignoutStudentList.as_view()),
    url(r'^(?i)rigsheet[s]?/tandem[s]?[/]?$', EmployeeVsSignoutTandemList.as_view()),
    url(r'^(?i)employee[s]?/(?P<pk>[0-9]+)[/]?$', EmployeeDetail.as_view()),
    url(r'^(?i)employee[s]?[/]?$', EmployeeList.as_view()),
    url(r'^(?i)itemtype[s]?/(?P<pk>[0-9]+)[/]?$', ItemTypeDetail.as_view()),
    url(r'^(?i)itemtype[s]?[/]?$', ItemTypeList.as_view()),
    url(r'^(?i)item[s]?/(?P<pk>[0-9]+)[/]?$', AllItemDetail.as_view()),
    url(r'^(?i)item[s]?[/]?$', AllItemList.as_view()),
    url(r'^(?i)aad[s]?/(?P<pk>[0-9]+)[/]?$', AADDetail.as_view()),
    url(r'^(?i)aad[s]?[/]?$', AADList.as_view()),
    url(r'^(?i)container[s]?/(?P<pk>[0-9]+)[/]?$', ContainerDetail.as_view()),
    url(r'^(?i)container[s]?[/]?$', ContainerList.as_view()),
    url(r'^(?i)canopies/(?P<pk>[0-9]+)[/]?$', CanopyDetail.as_view()),
    url(r'^(?i)canopies[/]?$', CanopyList.as_view()),
    url(r'^(?i)canopies/reserve/(?P<pk>[0-9]+)[/]?$', ReserveCanopyDetail.as_view()),
    url(r'^(?i)canopies/reserve[/]?$', ReserveCanopyList.as_view()),
    url(r'^(?i)rental-items[s]?[/]?$', RentableItemList.as_view()),
    url(r'^(?i)rental[s]?/active[/]?$', ActiveRentalList.as_view()),
    url(r'^(?i)rental[s]?/(?P<pk>[0-9]+)[/]?$', RentalDetail.as_view()),
    url(r'^(?i)rental[s]?[/]?$', RentalList.as_view()),
	url(r'^(?i)rig_info[/]?', RigComponentDetailList.as_view()),
    url(r'^(?i)claim[s]?[/]?$', ClaimList.as_view()),
    url(r'^(?i)claim[s]?/warnings[/]?$', ClaimWarningList.as_view()),
    url(r'^(?i)claim[s]?/queue[/]?$', ClaimQueueList.as_view()),
    url(r'^(?i)claim[s]?/(?P<pk>[0-9]+)[/]?$', ClaimDetail.as_view()),
    url(r'^(?i)rental[s]?[/]?$', RentalList.as_view()),
    url(r'^.*/', TemplateView.as_view(template_name="index.html"), name='base'),
    url(r'^(?i)rental[s]?[/]?$', RentalList.as_view()),
    url(r'^(?i)login/$', loginDropzone, name='login'),
    url(r'^(?i)logout/$', logoutDropzone, name='logout'),
    url(r'^(?i)temp_reset/(?P<hash>\w+)/$', reset_url_dropzone, name="password_reset_temp"),
    url(r'^(?i)reset/$', password_reset_dropzone, name='password_reset'),
    url(r'^(?i)reset_employee/$',password_reset_employee, name='pin reset'),
    url(r'^(?i)create_dropzone/$',createDropzone,name='create_dropzone'),
    url(r'^(?i)dropzone/(?P<pk>[0-9]+)/create_employee/$',EmployeeView,name='create_employee'),
    url(r'^(?i)auth_employee/', authenticateUserPin, name='authenticate_user_pin'),
    url(r'^(?i)auth_name_dropzone/', authenticateNameDropzone, name='authenticate_name_dropzone')
    ] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
urlpatterns += [
    url(r'^.*/', TemplateView.as_view(template_name="index.html"), name='base')
    ]
