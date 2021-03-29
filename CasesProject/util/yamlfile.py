import yaml
import os


class YamlReader:
	def __init__(self, yamlfile):
		if os.path.exists(yamlfile):
			self.yamlfile = yamlfile
		else:
			raise FileNotFoundError('文件不存在！')
		self._data = None

	@property
	def data(self):
		# 如果第一次调用data，读取yaml文档，否则直接返回之前保存的数据
		if not self._data:
			with open(self.yamlfile, 'rb') as file:
				self._data = list(yaml.safe_load_all(file))
		return self._data[0]


class YamlWriter:
	def __init__(self, yamlfile):
		if not os.path.exists(yamlfile):
			f = open(yamlfile, "w")
			f.close()
		self.yamlfile = yamlfile
		self._data = None

	def write(self, data):
		if not self._data:
			with open(self.yamlfile, 'rb') as file:
				self._data = list(yaml.safe_load_all(file))
		if len(self._data) == 0:
			self._data.append({})
		self._data[0].update(data)
		with open(self.yamlfile, 'w', encoding="utf-8") as file:
			yaml.safe_dump_all(self._data, file, encoding='utf-8', allow_unicode=True)


if __name__ == '__main__':

	data = YamlReader("test22.yaml").data
	print(data)

