import os
from copy import deepcopy

from configure.config import PROFILE_PATH, TestEnv
from library.mysql import OperationMysql
from library.interface import Interface
from util.yamlfile import YamlReader
from library.log import logger

API_INFO = YamlReader(os.path.join(PROFILE_PATH, "apiinfo.yaml")).data
USER_DATA = YamlReader(os.path.join(PROFILE_PATH, "userinfo.yaml")).data.get(TestEnv)


class ApiRun(object):

	def __init__(self, name, code=200):
		sql = """
			SELECT a.id,a.MODE,a.path,a.DESC,b.test_path,b.prod_path,c.test_host,c.prod_host 
			FROM interface_api a INNER JOIN interface_basepath b ON a.basepath_id=b.id 
			INNER JOIN interface_domain c ON a.domain_id=c.id WHERE a.CODE='{}'""".format(name)
		results = OperationMysql('DjangoDB', 'name').execute_sql(sql)
		key_list = ['id', 'mode', 'path', 'desc', 'test_path', 'prod_path', 'test_host', "prod_host"]
		data = {}
		for i in range(len(key_list)):
			data[key_list[i]] = results[0][i]
		if TestEnv == 'test':
			data['url'] = "{}{}{}".format(data['test_host'], data['test_path'], data['path'])
		else:
			data['url'] = "{}{}{}".format(data['prod_host'], data['prod_path'], data['path'])
		sql = "SELECT a.name FROM interface_tag a INNER JOIN  interface_api_tag b on a.id=b.tag_id WHERE b.api_id={}".format(
			data['id'])
		results = OperationMysql('DjangoDB', 'name').execute_sql(sql)
		self.tags = [r[0] for r in results]
		self.mode = data['mode']
		self.url = data['url']
		self.code = code
		logger.info("执行接口：{} {}".format(name, data['desc']))

	def execute(self, params={}, user=None):
		logger.info("当前执行用户为：%s", user)
		run_data = API_INFO.get('Run')
		if 'header' not in params:
			header = {}
			if user is not None:
				header = {
					"Authorization": USER_DATA.get(user).get("token"),
				}
				if "app" in self.tags:
					subchannel = API_INFO.get('Client').get(run_data.get('Client')).get('subchannel')
					header.update(
						{
							"ReqChannel": API_INFO.get('Project').get(run_data.get('Project')).get("ReqChannel"),
							"appVersion": run_data.get("Version"),
							"subchannel": subchannel,
							"appDeviceType": "android",
							"deviceId": "12b1aaf9abb638c3"
						}
					)
			params['header'] = deepcopy(header)
		if 'app' in self.tags:
			app = API_INFO.get('Project').get(run_data.get('Project')).get('app')
			self.url = self.url.replace("{app}", app)
		(code, resp) = Interface(self.mode, self.url, params).run
		if self.code != code:
			message = "实际返回码为{}，应该为{}".format(code, self.code)
			logger.debug(message)
			assert False, message
		return resp


if __name__ == '__main__':
	params = {
		"path": {'orderNumber': '20210305185415871gDQwPNG9Oh'},
		"query": {},
		"body": {},
		"file": ""
	}
	ApiRun('orderDetail', code=201).execute(params, user='jyws')
