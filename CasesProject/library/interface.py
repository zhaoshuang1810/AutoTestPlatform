# coding=utf-8
import json
import os
import re
import time
from io import BytesIO
from shlex import quote

import requests

from PIL import Image

from configure.config import LOG_PATH
from library.log import logger


class Interface(object):
	def __init__(self, mode, url, params):
		path = params.get("path", {})
		var_list = re.findall("{\w+}", url)
		for var in var_list:
			temp = var[1:-1]
			url = url.replace(var, str(path.get(temp)))
		self.mode = mode.lower()
		self.url = url
		self.header = params.get("header", {})
		self.query = params.get("query", {})
		self.body = params.get("body", {})
		self.file = params.get('file', "")
		if self.mode in ['post', 'put']:
			self.header['Content-Type'] = 'application/json'
		self.get_curl_data()
		self._requestData = ""

	@property
	def run(self):
		files = {'file': open(self.file, 'rb')} if self.file else None
		res = getattr(requests, self.mode)
		if files:
			response = res(self.url, self.body, files=files, headers=self.header, verify=False)
		else:
			if self.body:
				self.header['Content-Type'] = 'application/json'
			response = res(self.url, params=self.query, data=json.dumps(self.body), files=files, headers=self.header,
						   verify=False)

		self._requestData = self.get_response_data(response)
		return self._requestData

	def get_curl_data(self):
		parts = [
			('curl', None),
			('-X', self.mode.upper()),
		]
		if self.header:
			for k, v in sorted(self.header.items()):
				parts += [('-H', '{0}: {1}'.format(k, v))]
		if self.body:
			if self.file:
				parts += [('-F', "file={}".format(self.file))]
				for k, v in self.body.items():
					parts += [('-F', "{0}={1}".format(k, v))]
			else:
				parts += [('-d', json.dumps(self.body, ensure_ascii=False))]
		parts += [(None, self.url)]

		flat_parts = []
		for k, v in parts:
			if k:
				flat_parts.append(quote(k))
			if v:
				flat_parts.append(quote(v))

		curl = ' '.join(flat_parts)
		logger.info("{}  ".format(curl))
		logger.info("url????????? {} {} ".format(self.mode.upper(), self.url))
		if self.header:
			logger.info("header????????? {}  ".format(json.dumps(self.header, ensure_ascii=False)))
		if self.query:
			logger.info("query????????? {}  ".format(json.dumps(self.query, ensure_ascii=False)))
		if self.body:
			logger.info("body????????? {}  ".format(json.dumps(self.body, ensure_ascii=False)))
		if self.file:
			logger.info("file????????? {}  ".format(self.file))

	def get_response_data(self, response):

		logger.info("????????????????????? {} ms  ".format(response.elapsed.total_seconds() * 1000))
		logger.info("????????????????????? {}   ".format(response.status_code))
		try:
			resp_text = "image" if "image" in response.headers.get("Content-Type") else response.text
			content = os.path.join(LOG_PATH, time.strftime("image-%Y%m%d-%H%M%S", time.localtime()) + ".png")
			image = Image.open(BytesIO(response.content))
			image.save(content)
		# image.show()
		except:
			resp_text = response.text
			content = self._getRespContent(response.content)
		if isinstance(content, str):
			logger.info("?????????????????? {} ".format(content))
		else:
			logger.info("?????????????????? {} ".format(resp_text))
		return (response.status_code, content)

	def _getRespContent(self, content):
		try:
			content = json.loads(content)
		except:
			if isinstance(content, bytes):
				content = content.decode('utf-8')
		return content


if __name__ == '__main__':
	mode = 'post'
	url = 'http://r-bf-fe.jiayans.net:2002/api/payment/config/upload'
	params = {
		"header": {
			"Authorization": "Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjZXNoaWRlbmdsdSIsImNyZWF0ZWQiOjE2MTcxODI1MDM3MTYsImV4cCI6MTYxNzc4NzMwM30.Xr1DHvi7n_VINHfhHOZvmCTdLKtZE6_i3JLrrx6dhEvetImAHsU2jqzH9KSFoy49ihjintY3TL5mnB3ESD3GOg",
			"Content-Type": "multipart/form-data"},
		"path": {},
		"query": {},
		'body': {"channel": "JYWS"},
		"file": "C:\\Users\\Dell\\Desktop\\???????????????.png"
	}
	(code, resp) = Interface(mode, url, params).run
	print(code)
	print(resp)
