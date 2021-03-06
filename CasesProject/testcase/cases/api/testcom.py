import os
import time
import unittest

from configure.config import PROFILE_PATH, TestEnv
from testcase.com.apirun import ApiRun
from util.yamlfile import YamlReader, YamlWriter

API_INFO = YamlReader(os.path.join(PROFILE_PATH, "apiinfo.yaml")).data
Project = API_INFO.get('Run').get("Project")
channel = API_INFO.get('Project').get(Project).get('channel')


class TestCom(unittest.TestCase):

	def test_token(self):
		params = {
			"body": {"phoneNumber": "aaKgL+P/3N1FGh1Ey+CZTw=="}
		}
		resp = ApiRun('phoneNumberDecode').execute(params, user='school')
		print(resp)
		phone = resp['decodePhoneNumber']
		params = {
			"query": {"phone": "15510311810"}
		}
		resp = ApiRun('getToken').execute(params)
		print(resp)

	def test_info_update(self):
		user = 'jyws2'
		resp = ApiRun('meInfo').execute(user=user)
		print(resp)
		USER_DATA = YamlReader(os.path.join(PROFILE_PATH, "userinfo.yaml")).data
		USER_DATA[TestEnv][user]["userId"] = resp.get("userId")
		USER_DATA[TestEnv][user]["studentId"] = resp.get("studentId")
		YamlWriter(os.path.join(PROFILE_PATH, "userinfo.yaml")).write(USER_DATA)

	def test_delete_user(self):
		params = {
			"query": {"userId": 138568}
		}
		resp = ApiRun('deleteUserIds').execute(params=params)
		print(resp)

	def test_create_commodity_tp(self):
		user = "school"
		name = "zs勿动-分付君分期"
		params = {
			"body": {
				"channel": channel,
				"name": "{}-教学计划".format(name),
				"categoryId": 1923,
				"standardPeopleNumber": 100,
				"classModeCode": "1001",
				"supportGiving": "false",
				"supplierId": "0",
				"tag": "",
				"introduction": "简介",
				"specialtyId": 1574,
				"coverImage": "https://r-exam-fe.ministudy.com/school/test/JYWS/teaching/1606707941652.png",
				"teachingPlanImage": "",
				"salesLabel": {
					"originalPrice": 1000000,
					"price": 10000,
					"costPrice": 100
				},
				"agreementRuleType": 1000,
				"agreementRule": {
					"agreementRuleType": 1000
				},
				"property": {},
				"teachingPlanSubjects": [
					{
						"subjectId": 1325,
						"name": "初级会计实务",
						"sortNumber": 0
					}
				],
				"type": 1
			}
		}
		resp = ApiRun('teachingPlanCreate').execute(params=params, user=user)
		tpId = resp['id']
		params = {
			"body": {
				"channel": channel,
				"beginDate": time.strftime("%Y-%m-%d %H:%M:%S"),
				"teachingPlanId": tpId,
				"name": "{}-学习班".format(name),
				"assistantId": None
			}
		}
		resp = ApiRun('learningClassCreate').execute(params=params, user=user)
		params = {
			"body": {
				"channel": channel,
				"name": "{}-商品".format(name),
				"classificationIds": [2079],
				"coverImage": "https://r-exam-fe.ministudy.com/school/test/JYWS/teaching/1606707941652.png",
				"shareImage": "",
				"commodityImage": "",
				"supplierId": "0",
				"agreementRuleType": 1000,
				"agreementRule": {
					"agreementRuleType": 1000
				},
				"originalPrice": 1000000,
				"price": 10000,
				"costPrice": 1,
				"tag": "",
				"description": "简介",
				"property": {},
				"invoice": False,
				"changeClassSupport": 0,
				"imSupport": 0,
				"instalments": "false",
				"instalmentsType": "",
				"showApp": True,
				"showMp": True,
				"showPc": True,
				"type": 1,
				"resellerType": "youzan"
			}
		}
		resp = ApiRun('commodityCreate').execute(params=params, user=user)
		commodityId = resp['id']
		params = {
			"path": {"id": commodityId},
			"body": [
				{"resourceId": tpId, "id": commodityId, "resourceType": "TEACHING_PLAN", "channel": channel}
			]
		}
		resp = ApiRun('commodityAddItem').execute(params=params, user=user)
		params = {
			"path": {"id": commodityId}
		}
		resp = ApiRun('commodityPublish').execute(params=params, user="school")

	def test_create_commodity_coupon(self):
		user = "school"
		name = "zs勿动-0元"
		params = {
			"body": {
				"channel": channel,
				"discountType": 10,  # 10优惠卷 20定金卷
				"name": "{}-优惠卷".format(name),
				"fullPrice": 10000,  # 满额
				"discountPrice": 20000,  # 减额
				"term": 10,  # 有效期：10：固定20：动态
				"termTime": None,
				"startDate": time.strftime("%Y-%m-%d %H:%M:%S"),
				"endDate": time.strftime("%Y-%m-%d %H:%M:%S", time.localtime(time.time() + 60 * 60 * 24 * 30)),
				"type": 10,  # 10全场卷 15单品卷
			}
		}
		resp = ApiRun('couponCreate').execute(params=params, user=user)
		couponId = resp['id']
		params = {
			"body": {
				"channel": channel,
				"name": "{}-商品".format(name),
				"classificationIds": [2079],
				"coverImage": "https://r-exam-fe.ministudy.com/school/test/JYWS/teaching/1606707941652.png",
				"shareImage": "",
				"commodityImage": "",
				"supplierId": "0",
				"agreementRuleType": 1000,
				"agreementRule": {
					"agreementRuleType": 1000
				},
				"originalPrice": 1000000,
				"price": 10000,
				"costPrice": 1,
				"tag": "",
				"description": "简介",
				"property": {},
				"invoice": False,
				"changeClassSupport": 0,
				"imSupport": 0,
				"instalments": "false",
				"instalmentsType": "",
				"showApp": True,
				"showMp": True,
				"showPc": True,
				"type": 1,
				"resellerType": "youzan"
			}
		}
		resp = ApiRun('commodityCreate').execute(params=params, user=user)
		commodityId = resp['id']
		params = {
			"path": {"id": commodityId},
			"body": [
				{"resourceId": couponId, "id": commodityId, "resourceType": "COUPON", "channel": channel}
			]
		}
		resp = ApiRun('commodityAddItem').execute(params=params, user=user)
		params = {
			"path": {"id": commodityId}
		}
		resp = ApiRun('commodityPublish').execute(params=params, user="school")

	def test_create_order(self):
		params = {
			"body": {
				"commodityId": 3102,
				"commodityNum": 1,
				# "discountCode": "788a8b1291830996",
				"instalments": True,
			}
		}
		resp = ApiRun('orderCreate').execute(params, user='jyws')
		print(resp)
		params = {
			"body": {
				"type": channel,
				"orderId": resp['orderNumber'],
			}
		}
		resp = ApiRun('orderPay').execute(params, user='jyws')
		print(resp)

	def test_pay_order(self):
		params = {
			"body": {
				"type": channel,
				"orderId": "20210602134539930qY8h8598dA",
			}
		}
		resp = ApiRun('orderPay').execute(params, user='jyws')
		print(resp)

	def test_cancel_order(self):
		params = {
			"path": {"orderNumber": "202105261119532628khxP1mXTa"}
		}
		resp = ApiRun('orderCancel').execute(params, user='jyws2')
		print(resp)

	def test_payment_success(self):
		params = {
			"body": {
				"resultCode": "SUCCESS",
				"totalFee": 59900,
				"paymentType": 110
			},
			"path": {"orderNumber": "20210610110257377AMS6LUS86S"}
		}
		resp = ApiRun('paymentNotify').execute(params=params, user="school")
		print(resp)

	def test_attendanceRecord(self):
		for i in range(10):
			params = {
				"body": {
					"teachingPlanId": 997,
					"learningClassId": 6235,
					"theLessonId": 956984,
					# "finalPosition": 0+i*5   # 回放和点播课节才有该字段
				},
				# "header": {
				# 	"Authorization": "eyJhbGciOiJIUzUxMiJ9.eyJwIjoiTlNZQiIsInN0dWRlbnRJZCI6MTIxNTg3MCwicyI6bnVsbCwiYyI6MTYyMjcwMzM5MTQ3MiwiZSI6MTYyMzk5OTM5MTQ3MiwiaSI6MTM4NjMwLCJuaSI6IjYwYWIwZjMyNDk5ZjcwMDAwMTg4NDMxZiJ9.vI98YSpp8bJ51zzyrn0k_LdYPE-V92R4PjfJk9J5JBkZXZNyYziO52HtwdxYiobfxpelqTFZx9kDDQQxNHRbUA",
				# 	"ReqChannel": "nsyb", "appVersion": "1.0.0", "appDeviceType": "h5_play",
				# 	"Content-Type": "application/json"}

			}
			resp = ApiRun('attendanceRecord', 201).execute(params=params, user="jyws")
			print(resp)
			time.sleep(5)
