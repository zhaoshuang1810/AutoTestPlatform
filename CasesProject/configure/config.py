import os

from util.yamlfile import YamlReader, YamlWriter

BASE_PATH = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
CONFIGURE_PATH = os.path.join(BASE_PATH, 'configure')
PROFILE_PATH = os.path.join(CONFIGURE_PATH, 'profile')
EXCEL_PATH = os.path.join(CONFIGURE_PATH, 'excel')
ENV_PATH = os.path.join(CONFIGURE_PATH, 'env')
LOG_PATH = os.path.join(BASE_PATH, 'log')
REPORT_PATH = os.path.join(BASE_PATH, 'report')
TEST_PATH = os.path.join(BASE_PATH, "testcase")

TestEnv = "test"


# 切换temp文件中的值
def swich_temp(**kwargs):
	file_path = os.path.join(CONFIGURE_PATH, "temp.yaml")
	data = YamlReader(file_path).data
	data.update(kwargs)
	YamlWriter(file_path).write(data)
	return data
