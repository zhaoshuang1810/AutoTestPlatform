import math
import operator
import os
from functools import reduce

from PIL import Image

from library.log import logger


class DiffImage(object):
	def __init__(self, image_path1, image_path2):
		logger.info("图片1存放路径：%s", image_path1)
		logger.info("图片2存放路径：%s", image_path2)
		self.image_path1 = image_path1
		self.image_path2 = image_path2
		self.img1 = Image.open(image_path1)
		self.img2 = Image.open(image_path2)

	def image_contrast(self):
		h1 = self.img1.histogram()
		h2 = self.img2.histogram()
		result = math.sqrt(reduce(operator.add, list(map(lambda a, b: (a - b) ** 2, h1, h2))) / len(h1))
		return result


if __name__ == '__main__':
	img1 = "E:\AutoTest\AutoTestFrame\\testcase\\business\\app\screenshot\用户头像.png"
	img2 = "E:\\AutoTest\\AutoTestFrame\\testcase\\business\\app\image\用户头像.png"

	print(DiffImage(img1, img2).image_contrast())
