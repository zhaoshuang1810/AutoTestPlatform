from django.http import HttpResponse
from django.shortcuts import render, redirect

# Create your views here.

from frontpage.models import Users

import logging

logger = logging.getLogger('django')

global session
session = {}


def login(request):
	global session
	session = {}
	if request.method == "POST":
		username = request.POST.get("username")
		password = request.POST.get('password')
		token = request.POST.get('csrfmiddlewaretoken')
		users = Users.objects.filter(username=username, password=password)
		if users:
			if users[0].status == 1:
				session['token'] = token
				session['userId'] = users[0].id
				logger.info("登录成功：{}".format(session))
				return redirect('/index/')
			else:
				logger.info("用户已停用：{}".format(users[0]))
				return render(request, 'login.html')
		else:
			logger.info("用户名密码不正确：{}/{}".format(username, password))
			return render(request, 'login.html')
	else:
		return render(request, 'login.html')


def logout(request):
	global session
	logger.info("用户退出：userId = {}".format(session.get('userId')))
	session = {}
	return render(request, 'login.html')


def index(request):
	global session
	token = session.get('token')
	if token:
		return render(request, 'index.html')
	else:
		return render(request, 'login.html')
