import json
import os

# import javaobj.v2 as javaobj
import redis

from configure.config import ENV_PATH, TestEnv
from util.yamlfile import YamlReader

project = YamlReader(os.path.join(ENV_PATH, TestEnv + ".yaml")).data


class OperationRedis(object):
	def __init__(self, name="Redis",db=0):
		project_db = project.get(name)
		host = project_db.get("host")
		port = project_db.get("port")
		passwd = project_db.get("password")
		self.conn_data = redis.Redis(host=host, port=port, db=db, password=passwd)

	def delete_key(self, *args):
		u'''
		删除key的值
		:param args:
		:return:
		'''
		for key in args:
			self.conn_data.delete(key)

	def set_key(self, **kwargs):
		u'''
		设置
		:param kwargs:
		:return:
		'''
		for key, value in kwargs.items():
			self.conn_data.set(key, value)

	def get_key(self, *args):
		u'''
		获取
		:param args:
		:return: dict
		'''
		data = {}
		for key in args:
			try:
				value = self.conn_data.get(key)
			except:
				value = self.conn_data.hgetall(key)
				# print(value,type(value))
				for k, v in value.items():
					print(k, type(k))
				# print(javaobj.loads(k))
				# print(javaobj.loads(v))
			data[key] = value
		return data


if __name__ == '__main__':
	aa = OperationRedis(db=10).get_key("MY_PRISED_STUDENT_LIST:2020-07-02:1211329")
	print(aa)
	bb = aa['MY_PRISED_STUDENT_LIST:2020-07-02:1211329']
	bb = str(bb, encoding = "utf-8")
	bb = json.loads(bb)
	bb = json.loads(bb)
	print(type(bb))

	print(bb)
