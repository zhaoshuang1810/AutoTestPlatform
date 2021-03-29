import os
import unittest

from configure.config import PROFILE_PATH, TestEnv
from testcase.com.apirun import ApiRun
from util.yamlfile import YamlReader, YamlWriter


class TestCom(unittest.TestCase):

	def test_token(self):
		params = {
			"body": {"phoneNumber": "aaKgL+P/3N1FGh1Ey+CZTw=="}
		}
		resp = ApiRun('phoneNumberDecode').execute(params, user='school')
		print(resp)
		params = {
			"query": {"phone": resp['decodePhoneNumber']}
		}
		resp = ApiRun('getToken').execute(params)
		print(resp)

	def test_info_update(self):
		user= 'yanjiao'
		resp = ApiRun('meInfo').execute(user=user)
		print(resp)
		USER_DATA = YamlReader(os.path.join(PROFILE_PATH, "userinfo.yaml")).data
		USER_DATA[TestEnv][user]["userId"] = resp.get("userId")
		USER_DATA[TestEnv][user]["studentId"] = resp.get("studentId")
		YamlWriter(os.path.join(PROFILE_PATH, "userinfo.yaml")).write(USER_DATA)

	def test_delete_user(self):
		user= 'yanjiao'
		resp = ApiRun('meInfo').execute(user=user)
		print(resp)
		USER_DATA = YamlReader(os.path.join(PROFILE_PATH, "userinfo.yaml")).data
		USER_DATA[TestEnv][user]["userId"] = resp.get("userId")
		USER_DATA[TestEnv][user]["studentId"] = resp.get("studentId")
		YamlWriter(os.path.join(PROFILE_PATH, "userinfo.yaml")).write(USER_DATA)
