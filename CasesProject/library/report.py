import os
from HTMLTestRunnerNew import HTMLTestRunner
import time

from configure.config import PROFILE_PATH, REPORT_PATH, TestEnv
from util.yamlfile import YamlReader

REPORT_DATA = YamlReader(os.path.join(PROFILE_PATH, "basicinfo.yaml")).data.get("Report")


class Report(object):
	def __init__(self):
		pass

	def run(self, suite):
		now = time.strftime('%m%d%H%M')
		name = REPORT_DATA.get("name")
		title = REPORT_DATA.get("title")
		description = REPORT_DATA.get("description")
		tester = REPORT_DATA.get("tester")
		# 定义报告存放路径
		filename = "{}-{}{}.html".format(TestEnv,name, now)
		filepath = os.path.join(REPORT_PATH, filename)
		fp = open(filepath, 'wb')
		# 定义测试报告
		runner = HTMLTestRunner(stream=fp, title=title, description=description, tester=tester)
		runner.run(suite)
		fp.close()  # 关闭报告文件
