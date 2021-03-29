from django.db import models

# Create your models here.

class Users(models.Model):
	id = models.AutoField(primary_key=True)
	create_date = models.DateTimeField(auto_now_add=True)
	edit_date = models.DateTimeField(auto_now=True)
	username =models.CharField(max_length=128,verbose_name="用户名称", unique=True)
	password = models.CharField(max_length=256,verbose_name="登录密码")
	status_list = [
		(0, "停用"),
		(1, "启用")
	]
	status = models.IntegerField(default=1, verbose_name="用户状态",choices=status_list)
	del_flag = models.IntegerField(default=0, editable=False)

	class Meta:
		verbose_name = "测试人员"
		verbose_name_plural = verbose_name
		ordering = ['id']

	def __str__(self):
		return self.username
