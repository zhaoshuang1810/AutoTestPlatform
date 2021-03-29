import logging
import time
from logging.handlers import TimedRotatingFileHandler
import os

from configure.config import PROFILE_PATH, LOG_PATH, TestEnv
from util.yamlfile import YamlReader

LOG_DATA = YamlReader(os.path.join(PROFILE_PATH, "basicinfo.yaml")).data.get("Log")


class Logger(object):
	def __init__(self, logger_name='project'):
		self.logger = logging.getLogger(logger_name)
		logging.root.setLevel(logging.NOTSET)
		self.log_file_name = "{}-{}{}.log ".format(TestEnv, LOG_DATA.get('file_name'), time.strftime('%m%d'))
		self.backup_count = LOG_DATA.get('backup')

		# 日志输出级别
		self.console_output_level = LOG_DATA.get('console_level')
		self.file_output_level = LOG_DATA.get('file_level')
		# 日志输出格式
		self.formatter = logging.Formatter(LOG_DATA.get('pattern'))

	def get_logger(self):
		"""在logger中添加日志句柄并返回，如果logger已有句柄，则直接返回"""
		if not self.logger.handlers:  # 避免重复日志
			console_handler = logging.StreamHandler()
			console_handler.setFormatter(self.formatter)
			console_handler.setLevel(self.console_output_level)
			self.logger.addHandler(console_handler)

			# 每天重新创建一个日志文件，最多保留backup_count份
			file_handler = TimedRotatingFileHandler(filename=os.path.join(LOG_PATH, self.log_file_name),
													when='D', interval=1, backupCount=self.backup_count,
													delay=True, encoding='utf-8'
													)
			file_handler.setFormatter(self.formatter)
			file_handler.setLevel(self.file_output_level)
			self.logger.addHandler(file_handler)
		return self.logger


logger = Logger(LOG_DATA.get("project_name")).get_logger()
