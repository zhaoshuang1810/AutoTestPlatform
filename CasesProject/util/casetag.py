import unittest
from enum import Enum

import ddt


class Tag(Enum):
	SMOKE = 1  # 冒烟用例
	FUNCTION = 2  # 功能用例 验证页面数据
	INTEGRATION = 3  # 集成用例 主要大流程
	DEBUG = 0  # 调试
	IGNORE = 99  # 忽略
	TEST = 10  # 测试环境可执行
	PROD = 20  # 生产环境可执行

	@staticmethod
	def add_tag(*tagNames):
		def wrap(func):
			values = []
			for name in tagNames:
				values.append(name.value)
			setattr(func, 'tag', values)
			return func

		return wrap

	@staticmethod
	def get_tag(classObject, caseName):
		func = getattr(classObject, caseName)
		tag = []
		if hasattr(func, "tag"):
			tag.extend(func.tag)
		return tag


@ddt.ddt
class A(unittest.TestCase):
	@Tag.add_tag(Tag.SMOKE, Tag.FUNCTION)
	@ddt.data({1: {"aa": "bb"}})
	def test_1(self, data):
		print(data)
		return 1


if __name__ == '__main__':
	className = "A"
	caseName = "test_1_1"
	print(dir(A))
	print(Tag.get_tag(A, "test_1_1"))
