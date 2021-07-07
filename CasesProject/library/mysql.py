import datetime
import json
import os
import re
import time

import pymysql
# import sqlsoup

from configure.config import ENV_PATH, TestEnv
from library.log import logger
from util.yamlfile import YamlReader


class OperationMysql(object):
	def __init__(self, name="DB", dbname='name'):
		file_path = os.path.join(ENV_PATH, TestEnv + ".yaml")
		project = YamlReader(file_path).data

		project_db = project.get(name)
		host = project_db.get("host")
		port = project_db.get("port")
		self.db = project_db.get(dbname)
		user = project_db.get("username")
		passwd = project_db.get("password")
		charset = project_db.get("charset")

		# self.django_engine = "mysql://" + user + ":" + passwd + "@" + host + ":" + port + "/" + self.db + "?charset=" + charset

		self.django_engine = "mysql://{}:{}@{}:{}/{}?charset=".format(user, passwd, host, port, self.db, charset)
		self.conn_data = {'host': host, 'port': int(port), 'db': self.db, 'user': user, 'passwd': passwd,
						  'charset': charset}

	def execute_sql(self, sql):  # 获取数据库的数据
		if not isinstance(sql, list):
			sql = [sql]
		logger.info("SQL语句：  %s", ";".join(sql))
		while (True):
			try:
				conn = pymysql.connect(**self.conn_data)
				break
			except:
				time.sleep(5)

		cur = conn.cursor()
		try:
			for s in sql:
				cur.execute(s)
				conn.commit()
			results = cur.fetchall()  # 搜取所有结果
			logger.info("执行结果：%s", str(results))
		finally:
			cur.close()
			conn.close()
		return results

	# def insert_table(self, table, **kwargs):
	# 	database = sqlsoup.SQLSoup(self.django_engine)
	# 	logger.info("表名：" + table + "   插入内容：" + ",".join(self.dict_trans_list(kwargs)))
	# 	getattr(database, table).insert(**kwargs)
	# 	database.commit()
	# 	logger.info("数据插入成功！ ")
	#
	# def update_table(self, table, condition=None, **kwargs):
	# 	if kwargs:
	# 		condition = " where " + " and ".join(self.dict_trans_list(condition)) if condition else ""
	# 		sql = "update " + table + " set " + ",".join(self.dict_trans_list(kwargs)) + condition
	# 		self.execute_sql(sql)
	# 		logger.info("数据更新成功！ ")
	#
	# def select_table(self, table, condition=None):
	# 	database = sqlsoup.SQLSoup(self.django_engine)
	# 	condition_str = " where " + " and ".join(self.dict_trans_list(condition)) if condition else ""
	# 	logger.info("SQL = ", "select * from " + table + condition_str)
	# 	query = getattr(database, table).filter_by(**condition).all()
	# 	logger.info("数据查询成功！")
	# 	return query
	#
	# def delete_table(self, table, condition):
	# 	sql = "delete from " + table + " where " + " and ".join(self.dict_trans_list(condition))
	# 	self.execute_sql(sql)
	# 	logger.info("数据删除成功！")
	#
	# def clear_table(self, *args):
	# 	sql_list = ["SET foreign_key_checks=0"]
	# 	for table in args:
	# 		sql_list.append("truncate table " + table)
	# 	sql_list.append("SET foreign_key_checks=1")
	# 	self.execute_sql(sql_list)
	# 	logger.info("数据清空成功！")
	#
	# def get_fields(self, table):
	# 	sql = "select COLUMN_NAME from information_schema.COLUMNS where table_schema='" + self.db + "' and table_name='" + table + "'"
	# 	query = self.execute_sql(sql)
	# 	fields = [q[0] for q in query]
	# 	logger.info("数据库表%s中字段有：%s", table, ",".join(fields))
	# 	return fields
	#
	# def get_id_data(self, table, id):
	# 	data = {}
	# 	fields = self.get_fields(table)
	# 	sql = "SELECT * FROM `{}` WHERE id ={}".format(table, id)
	# 	query = OperationMysql().execute_sql(sql)
	# 	if len(query) == 0:
	# 		raise Exception("数据库表{}中不存在id={}的数据".format(table, id))
	# 	for i in range(len(fields)):
	# 		key = fields[i]
	# 		value = query[0][i]
	# 		if isinstance(value, datetime.datetime) or isinstance(value, datetime.date):
	# 			value = str(value)
	# 		data[key] = value
	# 	logger.info("数据库表%s中id=%d的数据为：%s", table, id, json.dumps(data, ensure_ascii=False))
	# 	return data
	#
	# def get_increment_id(self, table):
	# 	sql = "SELECT auto_increment FROM information_schema.tables where table_schema='" + self.db + "' and table_name='" + table + "'"
	# 	query = self.execute_sql(sql)
	# 	return query[0][0]
	#
	# @staticmethod
	# def dict_trans_list(var_dict):
	# 	var_list = []
	# 	for key, value in var_dict.items():
	# 		if isinstance(value, int):
	# 			temp = key + "=" + str(value)
	# 		else:
	# 			if re.match("like", value):
	# 				temp = key + " " + value  # value = "like '%v%'"
	# 			elif re.match('!=', value):
	# 				temp = key + value
	# 			elif "\'" in value:
	# 				temp = key + '="' + value + '"'
	# 			elif "\\" in value:
	# 				value = value.replace('\\', '\\\\')
	# 				temp = '{}="{}"'.format(key, value)
	# 			else:
	# 				temp = key + "='" + value + "'"
	# 		var_list.append(temp)
	# 	return var_list
	#

if __name__ == '__main__':
	m = OperationMysql()
	sql = "SELECT order_number FROM orders WHERE market_channel in ('MP','APP') and student_id=2075032 ORDER BY create_date desc"
	print(m.execute_sql(sql))
