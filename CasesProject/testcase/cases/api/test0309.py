import time
import unittest

from testcase.com.apirun import ApiRun


class Test0309(unittest.TestCase):

	def test_2423(self):
		params = {
			"body": {
				"channel": "JYWS",
				"pageSize": 10000,
				"pageIndex": 1,
				"beginDate": "2021-03-10 00:00:00",
				"endDate": "2021-03-11 00:00:00",
				# "paymentType": 80
			}
		}
		resp = ApiRun('exportFinanceOrder').execute(params, user='school')
		time.sleep(1)
		params = {
			"path": {'code': resp['data']}
		}
		resp = ApiRun('exportTask').execute(params, user='school')
		print(resp)

	def test_2423_2(self):
		params = {
			"body": {
				"pageIndex": 1,
				"pageSize": 50,
				"channel": "JYWS",
				"paymentType": 80,
				"startPaymentDate": "2021-03-10 00:00:00",
				"endPaymentDate": "2021-03-11 00:00:00",
			}
		}
		resp = ApiRun('financeOrderSearch').execute(params, user='school')
		print(resp)

	def test_324(self):
		params = {
			"body": {
				"orderNumber": "",
				"frontNotifyUrl": "",
			}
		}
		resp = ApiRun('coolLoanApply').execute(params, user='jyws')
		print(resp)

	def test_324_2(self):
		params = {
			"body": {
				"commodityId": 2971,
				"commodityNum": 1,
				"discountCode": "",
				"instalments": True,

			}
		}
		resp = ApiRun('orderCreate').execute(params, user='jyws')
		print(resp)

	def test_324_3(self):
		params = {
			"body": {
				"type": "JYWS",
				"orderId": "20210310164130046gNJzbK1BrN",
			}
		}
		resp = ApiRun('orderPay').execute(params, user='jyws')
		print(resp)

	def test_324_4(self):
		params = {
			"body": {
				"orderNumber": "20210310164130046gNJzbK1BrN",
				"frontNotifyUrl": "http://www.frontNotifyUrl.com",
			}
		}
		resp = ApiRun('coolLoanApply').execute(params, user='jyws')
		print(resp)

	def test_324_0(self):
		params = {
			"body": {"resultCode": "SUCCESS", "totalFee": 50000, "paymentType": 60},
			"path": {"orderNumber": "20210310153800957Elu3IrREts"}
		}
		ApiRun('paymentNotify').execute(params, user='school')

	def test_test(self):
		params = {
			"body": {"channel": "JYWS",
					 "name": "名称必填",  # 必填
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
			# "path": {"orderNumber": "20210310153800957Elu3IrREts"},
			# "query": {"planType": "MY_WRONG"}  # CHAPTER_PRACTICE("章节练习"), ONLY_WRONG_PRACTICE("只做错题"), MY_COLLECT("我的收藏"), MY_WRONG("我的错题");
		}
		resp = ApiRun('commodityCreate').execute(params, user='school')
		print(resp)
