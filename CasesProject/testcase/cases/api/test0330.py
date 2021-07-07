import unittest

from testcase.com.apirun import ApiRun


class Test0330(unittest.TestCase):

	def test_2473_orderSearch2(self):
		params = {
			"query": {
				"channel": "JYWS",
				"pageIndex": 1,
				"pageSize": 10,
				"status": 15,
				"phoneNumber": "15510311810"
			}
		}
		resp = ApiRun('orderSearch2').execute(params, user='u263')
		print(resp)

	def test_2473_refundCreate(self):
		params = {
			"body": {"channel": "JYWS", "orderNumber": "20210406103909643SGpY7macF1"}
		}
		resp = ApiRun('refundCreate').execute(params, user='u263')
		print(resp)

	def test_2472_refundRuleDetail(self):
		params = {
			"path": {"mainOrderNumber": "20210408205718604lX4oy2zG62"},
			# "body": {"orderNumbers": ["20210402105934008Q1NtaOdezh"]}
		}
		resp = ApiRun('refundRuleDetail').execute(params, user='school')
		print(resp)

	def test_2473_refundCommit(self):
		params = {
			"path": {"id": 45},
			"body": {
				"submit": True,
				"refundReason": "退款原因3444",
				"firstLevelOperationUserEmail": "zs@sunlands.com",
				"consultationRecord": "11111111111",
				"consultationImages": "https://img0.baidu.com/it/u=2308190668,2968374054&fm=11&fmt=auto&gp=0.jpg",
				"realRefundFee": 1,
				"alipayAccount": "zs11@sunlands.com",
				"orderNumbers": []
			}
		}
		# params = {
		# 	"path": {"id": 24},
		# 	"body": {
		# 		"submit": False,
		# 		"refundReason": "撤销原因"
		# 	}
		# }
		resp = ApiRun('refundCommit').execute(params, user='u263')
		print(resp)

	def test_2470_refundAgree(self):
		params = {
			"path": {"id": 45},
			"body": {
				"agree": True,
				"remark": "圆润"
			}
		}
		resp = ApiRun('refundAgree').execute(params, user='u263')
		print(resp)

	def test_2469_refundFlowDetail(self):
		params = {
			"path": {"id": 21}
		}
		resp = ApiRun('refundFlowDetail').execute(params, user='u263')
		print(resp)

	def test_2468_refundDetail(self):
		params = {
			"path": {"id": 31}
		}
		resp = ApiRun('refundDetail').execute(params, user='school')
		print(resp)

	def test_2468_refundDetailInfo(self):
		params = {
			"path": {"id": 31}
		}
		resp = ApiRun('refundDetailInfo').execute(params, user='u263')
		print(resp)

	def test_2467_refundSearch(self):
		params = {
			"body": {"channel": "JYWS"}
		}
		resp = ApiRun('refundSearch').execute(params, user='u263')
		print(resp)

	def test_2762_xxxLoanApply(self):
		params = {
			"body": {"orderNumber": "20210413184759518hRqGFWQXrj", "successUrl": "http://wwww.baidu.com"}
		}
		resp = ApiRun('xxxLoanApply').execute(params, user='jyws')
		print(resp)

	def test_2763_xxxLoanApplyNotify(self):
		params = {
			"body": {"orderId": "O2104131722581393217949933072697", "noticeType": "1", "noticeCode": "1"}
		}
		resp = ApiRun('xxxLoanApplyNotify').execute(params, user='school')
		print(resp)

	def test_2767_orderCreate(self):
		params = {
			"body": {
				"commodityId": 3031,
				"commodityNum": 1,
				"discountCode": "",
				"instalments": True,
			}
		}
		resp = ApiRun('orderCreate').execute(params, user='jyws')
		print(resp)
		params = {
			"body": {
				"type": "JYWS",
				"orderId": resp['orderNumber'],
			}
		}
		resp = ApiRun('orderPay').execute(params, user='jyws')
		print(resp)

	def test_2767_orderCancel(self):
		params = {
			"path": {"orderNumber": "20210419204308548ck5Rhn9eqw"}
		}
		resp = ApiRun('orderCancel').execute(params, user='jyws')
		print(resp)
