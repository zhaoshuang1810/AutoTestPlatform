import os
from bs4 import BeautifulSoup


class HtmlReader:
	def __init__(self, htmlfile):
		if os.path.exists(htmlfile):
			self.htmlfile = htmlfile
		else:
			raise FileNotFoundError('文件不存在！')
		self._data = None

	@property
	def data(self):
		# 如果第一次调用data，读取html文档，否则直接返回之前保存的数据
		if not self._data:
			with open(self.htmlfile, 'rb') as file:
				self._data = file.readlines()
		return self._data[0]


if __name__ == '__main__':
	file = "sunlands.html"
	html_doc = HtmlReader(file).data
	soup = BeautifulSoup(html_doc, "lxml")
	print(soup.title.string)
	print(soup.find("meta", attrs={"name": "keywords"})["content"])
	print(soup.find_all("meta", attrs={"name": "description"})[0]["content"])
	print("==============")
	# print(soup.prettify())
