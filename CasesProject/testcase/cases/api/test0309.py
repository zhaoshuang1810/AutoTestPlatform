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
					 "name": "????????????",  # ??????
					 "classificationIds": [2118],  # ??????
					 "coverImage": "https://r-exam-fe.ministudy.com/school/test/JYWS/shop/1594018025987.png",  # ??????
					 "shareImage": "https://r-exam-fe.ministudy.com/school/test/JYWS/shop/1589265902175.png",
					 "commodityImage": "https://r-exam-fe.ministudy.com/school/test/JYWS/shop/1589265897777.png,https://r-exam-fe.ministudy.com/school/test/JYWS/shop/1589265898166.png,https://r-exam-fe.ministudy.com/school/test/JYWS/shop/1589265899575.png",
					 "supplierId": "0",  # 0?????????
					 "resellerCommodityId": "",  # ??????????????????id
					 "beiJingResellerCommodityId": "",  # ??????????????????id
					 "agreementRuleType": 1010,  # ?????? ????????????  1000?????????,1005?????????,1010?????????,
					 "agreementRule": {"agreementRuleType": 1010, "periodTime": 120},
					 "originalPrice": 100000,  # ??????
					 "price": 100000,  # ??????
					 "costPrice": 100,  # ??????
					 "invoice": True,
					 "instalments": True,
					 "instalmentsPercent": 10,
					 "instalmentsType": "COOL,ZERO_SHOPPING,COFFEE",
					 "sortNumber": 1,
					 "initBuyerNumber": 1,
					 "tag": "??????",
					 "shopWindow": "YC",
					 "description": "????????????",  # ??????
					 "showApp": True,
					 "showMp": True,
					 "showPc": True,
					 "property": {"orderFlow": "standard"},  # standard????????????/fast????????????
					 "type": 2,
					 "resellerType": "youzan",
					 "imSupport": 0,  # ??????????????????:0 ????????????1??????
					 "changeClassSupport": 0,  # ??????????????????:0 ????????????1??????
					 },
			# "path": {"orderNumber": "20210310153800957Elu3IrREts"},
			# "query": {"planType": "MY_WRONG"}  # CHAPTER_PRACTICE("????????????"), ONLY_WRONG_PRACTICE("????????????"), MY_COLLECT("????????????"), MY_WRONG("????????????");
		}
		resp = ApiRun('commodityCreate').execute(params, user='school')
		print(resp)
