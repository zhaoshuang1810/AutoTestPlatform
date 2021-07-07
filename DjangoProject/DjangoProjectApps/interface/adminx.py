# Register your models here.
import copy

from django import forms
from django.core.exceptions import ValidationError

import xadmin
from interface import models
from xadmin import views


class GlobalSetting(object):
	# 设置base_site.html的Title
	site_title = "项目"
	# 设置base_site.html的Footer
	site_footer = '自动化测试工具'
	menu_style = "accordion"


xadmin.site.register(views.CommAdminView, GlobalSetting)


class BaseSetting(object):
	enable_themes = True  # 打开主题功能
	use_bootswatch = True  #


@xadmin.sites.register(models.VersionTest)
class VersionTestSetting(object):
	def queryset(self):
		# 列表只显示version__status=10的测试计划
		return models.VersionTest.objects.filter(version__status__exact=10)

	model_icon = 'fa fa-font'
	list_display = ['version', 'apitest3', 'apitest',  'result2', 'test_date', 'test_user', 'prod_user']
	search_fields = ('api__path', 'api__code', 'remark')
	list_filter = ('version', 'result', 'test_user', 'prod_user')
	list_editable = ['test_date', 'test_user', 'prod_user', 'remark']
	show_detail_fields = ['apitest']
	list_export = ('xls',)
	list_export_fields = (
		'version', 'apicode', 'api', 'apidesc', 'apitest2', 'result', 'test_date', 'test_user', 'prod_user', 'remark')


def apitest_status_update(modeladmin, request, queryset):
	# 状态置为1已归档
	queryset.update(status=1)


# 此指令的名称
apitest_status_update.short_description = '更新所选的测试点-置为已归档'


@xadmin.sites.register(models.ApiTest)
class ApiTestSetting(object):
	model_icon = 'fa fa-font'
	list_display = ['api', 'apidesc', 'desc', 'status', 'sort']
	search_fields = ('api__path', 'api__desc', 'desc')
	show_detail_fields = ['desc']
	list_editable = ['status', 'sort']
	list_per_page = 10
	actions = [apitest_status_update]


def api_copy(modeladmin, request, queryset):
	# 复制一条记录
	data = {
		'code': "",
		'mode': queryset.values()[0]['mode'],
		'path': queryset.values()[0]['path'],
		'desc': queryset.values()[0]['desc'],
		'domain_id': queryset.values()[0]['domain_id'],
		'basepath_id': queryset.values()[0]['basepath_id']
	}
	models.Api.objects.create(**data)


def versiontest_create(modeladmin, request, queryset):
	# 生成测试计划
	for i in range(len(queryset.values())):
		data = {
			"api_id": queryset.values()[i]['id'],
			"version_id": models.Version.objects.filter(status=10).all()[0].id
		}
		isrun = False
		try:
			models.VersionTest.objects.get(**data)
		except:
			isrun = True
		if isrun:
			models.VersionTest.objects.create(**data)


# 此指令的名称
api_copy.short_description = '复制-第1个所选的接口文档'
versiontest_create.short_description = '创建-所选接口文档的测试计划'


@xadmin.sites.register(models.Api)
class ApiSetting(object):
	def save_models(self):
		if 'update' in self.request.path:
			# code 为空时，可以修改
			if models.Api.objects.get(id=self.new_obj.id).code != "":
				# 当更新数据时code不能修改，修改会报500
				models.Api.objects.get(code=self.new_obj.code)
		super().save_models()

	model_icon = 'fa fa-font'
	list_display = ['code', 'desc', 'mode', 'path', 'basepath', 'apitag', 'api_url']
	search_fields = ("code", 'path', 'desc', 'basepath__test_path', 'filepath')
	list_filter = ('basepath',)
	list_display_links = ['desc']
	list_editable = ['basepath']
	list_per_page = 10

	actions = [api_copy, versiontest_create]


@xadmin.sites.register(models.Version)
class VersionSetting(object):
	model_icon = 'fa fa-font'
	list_display = ['name', 'version', 'status', 'remark']
	search_fields = ("name", 'version', 'remark')
	list_editable = ['status']
	list_per_page = 10


@xadmin.sites.register(models.Tag)
class TagSetting(object):
	model_icon = 'fa fa-font'
	list_display = ['name', 'desc']
	search_fields = ("name", 'desc')


@xadmin.sites.register(models.Domain)
class DomainSetting(object):
	model_icon = 'fa fa-font'
	list_display = ['code', 'test_host', 'prod_host']
	search_fields = ("code", 'test_host')


@xadmin.sites.register(models.BasePath)
class BasePathSetting(object):
	model_icon = 'fa fa-font'
	list_display = ['code', 'test_path', 'prod_path']
	search_fields = ("code", 'test_path')
