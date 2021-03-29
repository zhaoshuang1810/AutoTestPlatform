import unittest

from testcase.com.apirun import ApiRun


class Test0315(unittest.TestCase):

	def test_2433(self):
		params = {
			"body": {"channel": "JYWS",
					 "name": "建群0315-2",  # 必填
					 "classificationIds": [2118],  # 必填
					 "coverImage": "https://r-exam-fe.ministudy.com/school/test/JYWS/shop/1594018025987.png",  # 必填
					 "shareImage": "https://r-exam-fe.ministudy.com/school/test/JYWS/shop/1589265902175.png",
					 "commodityImage": "https://r-exam-fe.ministudy.com/school/test/JYWS/shop/1589265897777.png,https://r-exam-fe.ministudy.com/school/test/JYWS/shop/1589265898166.png,https://r-exam-fe.ministudy.com/school/test/JYWS/shop/1589265899575.png",
					 "supplierId": "0",  # 0是自营
					 "resellerCommodityId": "",  # 武汉加盐商品id
					 "beiJingResellerCommodityId": "",  # 北京加盐商品id
					 "agreementRuleType": 1010,  # 必填 规则类型  1000：永久,1005：固定,1010：周期,
					 "agreementRule": {"agreementRuleType": 1010, "periodTime": 120},
					 "originalPrice": 100000,  # 必填
					 "price": 100000,  # 必填
					 "costPrice": 100,  # 必填
					 "invoice": True,
					 "instalments": True,
					 "instalmentsPercent": 10,
					 "instalmentsType": "COOL,ZERO_SHOPPING,COFFEE",
					 "sortNumber": 1,
					 "initBuyerNumber": 1,
					 "tag": "小课",
					 "shopWindow": "YC",
					 "description": "描述必填",  # 必填
					 "showApp": True,
					 "showMp": True,
					 "showPc": True,
					 "property": {"orderFlow": "standard"},  # standard标准支付/fast快速支付
					 "type": 2,
					 "resellerType": "youzan",
					 "imSupport": 0,  # 是否支持群聊:0 不支持，1支持
					 "changeClassSupport": 0,  # 是否支持调班:0 不支持，1支持
					 },
		}
		resp = ApiRun('commodityCreate').execute(params, user='school')
		print(resp)

	def test_2433_2(self):
		params = {
			"body": {"channel": "JYWS",
					 "name": "建群0315-1",  # 必填
					 "classificationIds": [2118],  # 必填
					 "coverImage": "https://r-exam-fe.ministudy.com/school/test/JYWS/shop/1594018025987.png",  # 必填
					 "shareImage": "https://r-exam-fe.ministudy.com/school/test/JYWS/shop/1589265902175.png",
					 "commodityImage": "https://r-exam-fe.ministudy.com/school/test/JYWS/shop/1589265897777.png,https://r-exam-fe.ministudy.com/school/test/JYWS/shop/1589265898166.png,https://r-exam-fe.ministudy.com/school/test/JYWS/shop/1589265899575.png",
					 "supplierId": "0",  # 0是自营
					 "resellerCommodityId": "",  # 武汉加盐商品id
					 "beiJingResellerCommodityId": "",  # 北京加盐商品id
					 "agreementRuleType": 1010,  # 必填 规则类型  1000：永久,1005：固定,1010：周期,
					 "agreementRule": {"agreementRuleType": 1010, "periodTime": 120},
					 "originalPrice": 100000,  # 必填
					 "price": 100000,  # 必填
					 "costPrice": 100,  # 必填
					 "invoice": True,
					 "instalments": True,
					 "instalmentsPercent": 10,
					 "instalmentsType": "COOL,ZERO_SHOPPING,COFFEE",
					 "sortNumber": 1,
					 "initBuyerNumber": 1,
					 "tag": "小课",
					 "shopWindow": "YC",
					 "description": "描述必填",  # 必填
					 "showApp": True,
					 "showMp": True,
					 "showPc": True,
					 "property": {"orderFlow": "standard"},  # standard标准支付/fast快速支付
					 "type": 2,
					 "resellerType": "youzan",
					 "imSupport": 1,  # 是否支持群聊:0 不支持，1支持
					 "changeClassSupport": 1,  # 是否支持调班:0 不支持，1支持
					 "id": 2980
					 },
			"path": {'id': 2980}
		}
		resp = ApiRun('commodityEdit').execute(params, user='school')
		print(resp)

	def test_2433_3(self):
		params = {
			"body": {
				"channel": "JYWS",
				"pageIndex": 1,
				"pageSize": 10,
				"allShopWindow": True,
				"imSupport": 1,  # 是否支持群聊:0 不支持，1支持
				"changeClassSupport": 1,  # 是否支持调班:0 不支持，1支持
			},
		}
		resp = ApiRun('commoditySearch').execute(params, user='school')
		print(resp)

	def test_2436(self):
		params = {
			"body": {"channel": "JYWS",
					 "name": "zs",
					 "username": "test1111",
					 "password": "test1111",
					 "roleIds": [2],
					 "masterTeacherIds": [8377],
					 "channelIds": [43],
					 "status": 10,
					 "headImageUrl": "https://r-exam-fe.jiayans.net/school/test/JYWS/cms/1615450446836.png",
					 "gender": 2,
					 "email": "zs@163.com",
					 "phoneNumber": "15510311111",
					 },

		}
		resp = ApiRun('userCreate').execute(params, user='school')
		print(resp)

	def test_2436_2(self):
		params = {
			"body": {"channel": "JYWS",
					 "name": "zs",
					 "username": "test1111",
					 "password": "test1111",
					 "roleIds": [2],
					 "masterTeacherIds": [8377],
					 "channelIds": [43],
					 "status": 10,
					 "headImageUrl": "https://r-exam-fe.jiayans.net/school/test/JYWS/cms/1615450446836.png",
					 "gender": 2,
					 "email": "zs@163.com",
					 "phoneNumber": "15510311111",
					 },
			"path": {'userId': 249}
		}
		resp = ApiRun('userEdit').execute(params, user='school')
		print(resp)

	def test_2436_3(self):
		params = {
			"path": {'userId': 249}
		}
		resp = ApiRun('userDetail').execute(params, user='school')
		print(resp)

	def test_2436_4(self):
		params = {
			"path": {'userIds': "249,248"}
		}
		resp = ApiRun('userDetailBatch').execute(params, user='school')
		print(resp)

	def test_2436_5(self):
		params = {
			"body": {'name': "zs"}
		}
		resp = ApiRun('userSearch').execute(params, user='school')
		print(resp)

	def test_2436_6(self):
		params = {
			"query": {'userName': 'test1111', 'password': "test1111"}
		}
		resp = ApiRun('userFind').execute(params, user='school')
		print(resp)

	def test_2435(self):
		params = {
			"body": {
				"channel": "JYWS",
				"pageIndex": 1,
				"pageSize": 10
			}
		}
		resp = ApiRun('groupUserWaitList').execute(params, user='school')
		print(resp)

	def test_2438(self):
		params = {
			"query": {"shopWindow": "EX"}  # EX / PU
		}
		resp = ApiRun('classificationList').execute(params, user='jyws')
		print(resp)

	def test_326(self):
		params = {
			"query": {
				"shareType": "SHARE_EXAM",  # 分享类型 分享题库传 SHARE_EXAM
				"shareId": "SHARE_EXAM",  # 分享题库传 SHARE_EXAM
			}
		}
		resp = ApiRun('share').execute(params, user='jyws')
		print(resp)

	def test_326_2(self):
		params = {
			"body": {
				"code": "-1054012404",  # 分享类型 分享题库传 SHARE_EXAM
				"type": "SHARE_EXAM",  # 分享类型 分享题库传 SHARE_EXAM
			}
		}
		resp = ApiRun('shareConsume').execute(params, user='jyws2')
		print(resp)

	def test_328(self):
		params = {
			"query": {
				"type": "SHARE_EXAM",  # 分享类型 分享题库传 SHARE_EXAM
				"targetId": "SHARE_EXAM",  # 分享类型 分享题库传 SHARE_EXAM
			}
		}
		resp = ApiRun('shareConsumeSuccessList').execute(params, user='jyws')
		print(resp)

	def test_326_21(self):
		params = {
			"body": {
				"code": "1620265706",  # 分享类型 分享题库传 SHARE_EXAM
				"type": "SHARE_FREE_PU",  # 分享类型 分享题库传 SHARE_EXAM
			}
		}
		resp = ApiRun('shareConsume').execute(params, user='yanjiao')
		print(resp)

	def test_328_1(self):
		params = {
			"query": {
				"type": "SHARE_FREE_PU",  # 分享类型 分享题库传 SHARE_EXAM
				"targetId": "2982",  # 分享类型 分享题库传 SHARE_EXAM
			}
		}
		resp = ApiRun('shareConsumeSuccessList').execute(params, user='jyws')
		print(resp)