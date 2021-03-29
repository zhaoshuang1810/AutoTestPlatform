"""
邮件类。用来给指定用户发送邮件。可指定多个收件人，可带附件。
"""
import os
import re
import smtplib
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from socket import gaierror, error
import time

from configure.config import PROFILE_PATH, REPORT_PATH
from util.yamlfile import YamlReader
from library.log import logger

file_path = os.path.join(PROFILE_PATH, "basicinfo.yaml")
MAIL_DATA = YamlReader(file_path).data.get("Mail")
REPORT_DATA = YamlReader(file_path).data.get("Report")


class Email:
	def __init__(self):
		"""初始化Email
		:param title: 邮件标题，必填。
		:param message: 邮件正文，非必填。
		:param path: 附件路径，可传入list（多附件）或str（单个附件），非必填。
		:param server: smtp服务器，必填。
		:param sender: 发件人，必填。
		:param password: 发件人密码，必填。
		:param receiver: 收件人，多收件人用“；”隔开，必填。
		"""
		self.title = MAIL_DATA.get('title')
		self.message = MAIL_DATA.get('message')
		self.files = REPORT_PATH
		self.msg = MIMEMultipart('related')
		self.server = MAIL_DATA.get('server')
		self.sender = MAIL_DATA.get('sender')
		self.receiver = MAIL_DATA.get('receiver')
		self.password = MAIL_DATA.get('password')
		# 设置报告文件保存路径
		now = time.strftime('%Y%m%d')
		name = REPORT_DATA.get("name")
		filename = "{}-{}.html".format(name, now)
		self.reportpath = os.path.join(REPORT_PATH, filename)

	def _attach_file(self, att_file):
		"""将单个文件添加到附件列表中"""
		att = MIMEText(open(self.reportpath, 'rb').read(), 'bsae64', 'utf-8')
		att["Content-Type"] = 'application/octet-stream'
		file_name = re.split(r'[\\|/]', att_file)
		filename = file_name[-1] + '.html'
		att["Content-Disposition"] = 'attachment; filename="%s"' % filename
		self.msg.attach(att)
		logger.info('attach file {}'.format(att_file))

	def send(self):
		self.msg['Subject'] = self.title
		self.msg['From'] = self.sender
		self.msg['To'] = self.receiver

		# 邮件正文
		if self.message:
			self.msg.attach(MIMEText(self.message, "html", "utf-8"))

		# 添加附件，支持多个附件（传入list），或者单个附件（传入str）
		if self.files:
			if isinstance(self.files, list):
				for f in self.files:
					self._attach_file(f)
			elif isinstance(self.files, str):
				self._attach_file(self.files)

		# 连接服务器并发送
		try:
			smtp_server = smtplib.SMTP(self.server)  # 连接sever
		except (gaierror and error) as e:
			logger.exception('发送邮件失败,无法连接到SMTP服务器，检查网络以及SMTP服务器. %s', e)
		else:
			try:
				smtp_server.login(self.sender, self.password)  # 登录
			except smtplib.SMTPAuthenticationError as e:
				logger.exception('用户名密码验证失败！%s', e)
			else:
				smtp_server.sendmail(self.sender, self.receiver.split(';'), self.msg.as_string())  # 发送邮件
			finally:
				smtp_server.quit()  # 断开连接
				logger.info('发送邮件"{0}"成功! 收件人：{1}。如果没有收到邮件，请检查垃圾箱，'
							'同时检查收件人地址是否正确'.format(self.title, self.receiver))


if __name__ == '__main__':  # 用于调试
	Email().send()
