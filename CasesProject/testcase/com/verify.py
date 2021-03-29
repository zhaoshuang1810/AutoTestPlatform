import json
import unittest

from library.log import logger


class Verify(unittest.TestCase):

	def assertApiCode(self, code, except_code):
		error = "断言失败：接口返回状态码应该为 {}".format(except_code)
		if code == except_code:
			logger.info("断言成功： 接口返回状态码为 %s", except_code)
		else:
			logger.debug(error)
		self.assertTrue(code == except_code, error)

	def assertValueTrue(self, value, message):
		error = " 断言失败：{}".format(message)
		if value:
			logger.info("断言成功： %s", message.replace("应该", ""))
		else:
			logger.debug(error)
		self.assertTrue(value, error)

	def assertNumbers(self, number, condition, name=""):
		con_dict = {"gt": "大于", "gte": "大于等于", "lt": "小于", "lte": "小于等于", "eq": "等于", "ne": "不等于"}
		temp = condition.partition("_")
		con = temp[0] if temp[0] in con_dict else "gt"
		value = int(temp[2]) if temp[2] else 0
		message = "{}数量(长度)为： {} ，应该{} {}".format(name, number, con_dict.get(con), value)
		result = True
		if con == "gt":
			result = number > value
		elif con == "gte":
			result = number >= value
		elif con == "gte":
			result = number >= value
		elif con == "lt":
			result = number < value
		elif con == "lte":
			result = number <= value
		elif con == "eq":
			result = number == value
		elif con == "ne":
			result = number != value
		else:
			pass
		self.assertValueTrue(result, message)

	def assertRespValue(self, resp, **kwargs):
		for key, except_value in kwargs.items():
			value = resp.get(key)
			message = "字段 {} = {} ，应该等于 {} ".format(key, value, except_value)
			self.assertValueTrue(value == except_value, message)

	def assertRestListIds(self, resp, ids, exist, assert_info):
		self.assertValueTrue(isinstance(resp, list), "断言的返回值应该是数组")
		key = assert_info.get("key", "")
		name = assert_info.get("name", "")
		if exist is None:
			self.assertValueTrue(len(ids) == len(resp), "ids长度应该与返回值长度相等")
			for i in range(len(ids)):
				message = "第{}个{}id应该为{}".format(i, name, ids[i])
				self.assertValueTrue(resp[i].get(key) == ids[i], message)
		else:
			resp_ids = [c.get(key) for c in resp]
			for i in range(len(ids)):
				if exist is True:
					message = "{}id={}应该在返回值中存在".format(name, ids[i])
					self.assertValueTrue(ids[i] in resp_ids, message)
				else:
					message = "{}id={}不应该在返回值中存在".format(name, ids[i])
					self.assertValueTrue(ids[i] not in resp_ids, message)

	def assertRespListOne(self, resp, valueInfo, unique_key):
		u'''
		断言数组中某个字段
		:param resp:
		:param valueInfo:
		:param unique_key:
		:return:
		'''
		self.assertValueTrue(isinstance(resp, list), "断言的返回值应该是数组")
		result = False
		for c in resp:
			if c.get(unique_key) == valueInfo.get(unique_key):
				result = True
				self.asserDictData(c, valueInfo)
		self.assertValueTrue(result, "{}={}应该存在返回值中".format(unique_key, valueInfo.get(unique_key)))

	def asserListData(self, resp, assert_info):
		self.assertValueTrue(isinstance(resp, list), "数据返回值应该是数组")
		self.assertValueTrue(isinstance(assert_info, list), "断言期望值应该是数组")
		message = "数据返回值长度应该与期望值相等\nresp:{}\nassert:{}".format(json.dumps(resp, ensure_ascii=False),
															   json.dumps(assert_info, ensure_ascii=False))
		self.assertValueTrue(len(resp) == len(assert_info), message)
		for i in range(len(assert_info)):
			if isinstance(assert_info[i], list):
				self.asserListData(resp[i], assert_info[i])
			elif isinstance(assert_info[i], dict):
				self.asserDictData(resp[i], assert_info[i])
			else:
				message = "第{}个元素的值={}，应该为{}".format(i, resp[i], assert_info[i])
				self.assertValueTrue(resp[i] == assert_info[i], message)

	def asserDictData(self, resp, assert_info):
		self.assertValueTrue(isinstance(resp, dict), "数据返回值应该是字典")
		self.assertValueTrue(isinstance(assert_info, dict), "断言期望值应该是字典")
		for key, value in assert_info.items():
			if isinstance(value, list):
				self.asserListData(resp.get(key), value)
			elif isinstance(value, dict):
				self.asserDictData(resp.get(key), value)
			else:
				message = "字段{}的值={}，应该为{}".format(key, resp.get(key), value)
				self.assertValueTrue(value == resp.get(key), message)
