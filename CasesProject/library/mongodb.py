import os
from pymongo import MongoClient

from configure.config import ENV_PATH, TestEnv
from util.yamlfile import YamlReader

project = YamlReader(os.path.join(ENV_PATH, TestEnv + ".yaml")).data


class OperationMongoDB(object):
	def __init__(self, name="MongoDB", db=None):
		project_db = project.get(name)
		host = project_db.get("host")
		port = project_db.get("port")
		self.db = project_db.get("name") if db is None else db
		username = project_db.get("username")
		password = project_db.get("password")
		self.conn_data = MongoClient(host=host, port=port, username=username, password=password)

	def select(self, table, **kwargs):
		u'''
		查询
		:param table:
		:param kwargs:
		:return:
		'''
		test_db = self.conn_data[self.db]
		one_result = test_db[table].find_one(kwargs)
		return one_result

	def delete(self, table, **kwargs):
		test_db = self.conn_data[self.db]
		one_result = test_db[table].delete_one(kwargs)
		return one_result

	def select_student_ranking_list(self):
		test_db = self.conn_data['school_jyws']
		result = test_db['student_profile'].find({"nickName": {"$ne": None}}).sort(
			[("credit", -1), ("learningDurationSum", -1), ("_id", 1)])
		data = []
		i = 0
		for r in result:
			i = i + 1
			r['sortNumber'] = i
			data.append(r)
		return data


if __name__ == '__main__':
	aa = OperationMongoDB().select_student_ranking_list()
	print(aa)
