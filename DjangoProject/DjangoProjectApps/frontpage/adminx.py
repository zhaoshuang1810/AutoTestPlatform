from django.contrib import admin

# Register your models here.
import xadmin
from frontpage.models import Users


@xadmin.sites.register(Users)
class users_setting(object):
	list_display = ('id', 'username', 'status')
	list_display_links = ('username',)
	search_fields = ['username', 'id']
	list_per_page = 20
