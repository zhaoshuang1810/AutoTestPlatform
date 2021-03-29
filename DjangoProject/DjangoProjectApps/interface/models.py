from django.db import models

# Create your models here.
from django.forms import ModelForm
from django.utils.html import format_html, format_html_join


class Domain(models.Model):
	id = models.AutoField(primary_key=True)
	create_date = models.DateTimeField(auto_now_add=True)
	edit_date = models.DateTimeField(auto_now=True)
	code = models.CharField(max_length=64, verbose_name="唯一标识", unique=True)
	test_host = models.CharField(max_length=128, verbose_name="测试环境")
	prod_host = models.CharField(max_length=128, verbose_name="生产环境")
	del_flag = models.IntegerField(default=0, editable=False)

	class Meta:
		verbose_name = "域名地址"
		verbose_name_plural = verbose_name
		ordering = ['id']

	def __str__(self):
		return "{}".format(self.code)


class BasePath(models.Model):
	id = models.AutoField(primary_key=True)
	create_date = models.DateTimeField(auto_now_add=True)
	edit_date = models.DateTimeField(auto_now=True)
	code = models.CharField(max_length=64, verbose_name="唯一标识", unique=True)
	test_path = models.CharField(max_length=128, verbose_name="测试环境")
	prod_path = models.CharField(max_length=256, verbose_name="生产环境")
	del_flag = models.IntegerField(default=0, editable=False)

	class Meta:
		verbose_name = "基础路径"
		verbose_name_plural = verbose_name
		ordering = ['test_path']

	def __str__(self):
		return self.test_path


class Tag(models.Model):
	id = models.AutoField(primary_key=True)
	create_date = models.DateTimeField(auto_now_add=True)
	edit_date = models.DateTimeField(auto_now=True)
	name = models.CharField(max_length=128, verbose_name="标签名称", unique=True)
	desc = models.TextField(max_length=1000, verbose_name="标签描述")
	del_flag = models.IntegerField(default=0, editable=False)

	class Meta:
		verbose_name = "接口标签"
		verbose_name_plural = verbose_name
		ordering = ['id']

	def __str__(self):
		return self.name


class Api(models.Model):
	id = models.AutoField(primary_key=True)
	create_date = models.DateTimeField(auto_now_add=True)
	edit_date = models.DateTimeField(auto_now=True)
	code = models.CharField(max_length=64, verbose_name="唯一标识", unique=True, help_text='创建后不可以修改', blank=True)
	mode_list = [
		("get", "get"),
		("post", "post"),
		("put", "put"),
		("delete", "delete"),
	]
	mode = models.CharField(max_length=20, default="get", verbose_name="请求方式", choices=mode_list)
	path = models.CharField(max_length=128, verbose_name="请求路径")
	desc = models.CharField(max_length=256, verbose_name="接口描述")
	domain = models.ForeignKey(Domain, verbose_name="域名地址")
	basepath = models.ForeignKey(BasePath, verbose_name="基础地址", blank=True, null=True)
	tag = models.ManyToManyField(Tag, verbose_name="接口标签", blank=True, null=True)
	filepath = models.CharField(max_length=256, verbose_name="接口文档地址", blank=True, null=True)
	remark = models.TextField(max_length=3000, verbose_name="备注", blank=True, null=True)
	del_flag = models.IntegerField(default=0, editable=False)

	def apitag(self):
		text = []
		for t in self.tag.all():
			text.append(t.name)
		return ",".join(text)

	def api_url(self):
		return format_html("<a href='{url}'target='_blank'>{url}</a>", url=self.filepath)

	apitag.short_description = '接口标签'
	api_url.short_description = '接口地址'

	class Meta:
		verbose_name = "接口文档"
		verbose_name_plural = verbose_name
		ordering = ['code']

	def __str__(self):
		text = "{}{}".format(self.mode.upper(), self.path)
		if self.basepath:
			text = "{}{}{}".format(self.mode.upper(), self.basepath.test_path, self.path)
		return text


class Version(models.Model):
	id = models.AutoField(primary_key=True)
	create_date = models.DateTimeField(auto_now_add=True)
	edit_date = models.DateTimeField(auto_now=True)
	name = models.CharField(max_length=20, verbose_name="项目名称")
	version = models.CharField(max_length=10, verbose_name="版本号")
	status = models.IntegerField(max_length=10, verbose_name="版本状态", default=10,
								 choices=[(10, "测试"), (20, "归档"), (30, "其他")])
	remark = models.TextField(max_length=1000, verbose_name="备注", blank=True, null=True)
	del_flag = models.IntegerField(default=0, editable=False)

	class Meta:
		verbose_name = "接口版本"
		verbose_name_plural = verbose_name
		ordering = ['-id']

	def __str__(self):
		return "{}_{}".format(self.name, self.version)


class ApiTest(models.Model):
	id = models.AutoField(primary_key=True)
	create_date = models.DateTimeField(auto_now_add=True)
	edit_date = models.DateTimeField(auto_now=True)
	api = models.ForeignKey(Api, verbose_name="接口")
	desc = models.TextField(max_length=1000, verbose_name="测试点")
	status = models.IntegerField(verbose_name='状态', default=0, choices=[(0, '待测试'), (1, '已归档')])
	sort = models.IntegerField(verbose_name='排序', default=10)
	remark = models.TextField(max_length=1000, verbose_name="备注", blank=True, null=True)
	del_flag = models.IntegerField(default=0, editable=False)

	def apidesc(self):
		return self.api.desc

	apidesc.short_description = '接口描述'

	class Meta:
		verbose_name = "接口测试点"
		verbose_name_plural = verbose_name
		ordering = ['api', 'sort', '-id']

	def __str__(self):
		return "{}：{}".format(self.api.code, self.desc)


class VersionTest(models.Model):
	id = models.AutoField(primary_key=True)
	create_date = models.DateTimeField(auto_now_add=True)
	edit_date = models.DateTimeField(auto_now=True)
	version = models.ForeignKey(Version, verbose_name="版本号", limit_choices_to={"status": 10})
	api = models.ForeignKey(Api, verbose_name="接口路径")
	result_list = [
		('pass', "通过"),
		('faild', '失败')
	]
	result = models.CharField(max_length=16, verbose_name='测试结果', blank=True, null=True, choices=result_list)
	test_date = models.DateField(verbose_name='提测时间', blank=True, null=True)
	test_user = models.CharField(max_length=16, verbose_name='测试人员', blank=True, null=True)
	prod_user = models.CharField(max_length=16, verbose_name='开发人员', blank=True, null=True)
	remark = models.TextField(max_length=1000, verbose_name="备注", blank=True, null=True)
	del_flag = models.IntegerField(default=0, editable=False)

	def apidesc(self):
		return self.api.desc

	def apicode(self):
		return self.api.code

	def apitest(self):
		# 列表显示字段
		apitest = ApiTest.objects.filter(api=self.api, status=0)
		text = []
		for i in range(len(apitest)):
			text.append((apitest[i].id, str(i + 1) + "、" + apitest[i].desc))
		return format_html_join('\n',
								"<div><a href='/xadmin/interface/apitest/{0}/detail' target='_blank'>{1}</a></div>",
								((t[0], t[1]) for t in text))

	def apitest2(self):
		# 导出字段
		apitest = ApiTest.objects.filter(api=self.api, status=0)
		text = []
		for i in range(len(apitest)):
			text.append("{}、{}".format(i + 1, apitest[i].desc))
		return "\n".join(text)

	def apitest3(self):
		# 跳转接口所有测试点
		return format_html(
			"""<div class="btn-group pull-right">
                <a data-res-uri="/xadmin/interface/api/{api_id}/detail/" data-edit-uri="/xadmin/interface/api/{api_id}/update/" class="details-handler" rel="tooltip" title="{api_desc}详情"><i class="fa fa-info-circle"></i></a></div>
			<div><a href='/xadmin/interface/apitest/?_rel_api__id__exact={api_id}' target='_blank'>{api_desc}</a></div>""",
			api_id=self.api.id, api_desc=self.api.code)

	apicode.short_description = '接口名称'
	apidesc.short_description = '接口描述'
	apitest.short_description = '接口测试点'
	apitest2.short_description = '接口测试点'
	apitest3.short_description = '接口'

	class Meta:
		verbose_name = "接口测试计划"
		verbose_name_plural = verbose_name
		ordering = ['version']

	def __str__(self):
		return "{}_{}".format(self.version.id, self.api.id)
