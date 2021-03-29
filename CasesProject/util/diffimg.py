import os

import cv2
import imutils
import numpy as np
from matplotlib import pyplot
from skimage.measure import compare_ssim

from library.log import logger


class DiffImage(object):
	def __init__(self, image_path1, image_path2):
		logger.info("图片1存放路径：%s", image_path1)
		logger.info("图片2存放路径：%s", image_path2)
		self.image_path1 = image_path1
		self.image_path2 = image_path2
		self.img1 = cv2.imread(image_path1)
		self.img2 = cv2.imread(image_path2)

	def show_diff_location(self, show=False):
		u'''
		标记两张图片不同的位置
		'''
		sp = self.img1.shape
		h = sp[0]
		w = sp[1]
		# 设置成同等大小
		image1 = cv2.resize(self.img1, (w, h), interpolation=cv2.INTER_CUBIC)
		image2 = cv2.resize(self.img2, (w, h), interpolation=cv2.INTER_CUBIC)
		gray1 = cv2.cvtColor(image1, cv2.COLOR_BGR2GRAY)
		gray2 = cv2.cvtColor(image2, cv2.COLOR_BGR2GRAY)
		# 计算两个灰度图像之间的结构相似度指数
		(score, diff) = compare_ssim(gray1, gray2, full=True)
		diff = (diff * 255).astype("uint8")
		print("SSIM:{}".format(score))
		# 找到不同点的轮廓以致于我们可以在被标识为“不同”的区域周围放置矩形
		thresh = cv2.threshold(diff, 0, 255, cv2.THRESH_BINARY_INV | cv2.THRESH_OTSU)[1]
		cnts = cv2.findContours(thresh.copy(), cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
		cnts = cnts[0] if imutils.is_cv2() else cnts[1]
		# 找到一系列区域，在区域周围放置矩形
		for c in cnts:
			(x, y, w, h) = cv2.boundingRect(c)
			cv2.rectangle(image1, (x, y), (x + w, y + h), (0, 0, 255), 2)
			cv2.rectangle(image2, (x, y), (x + w, y + h), (0, 0, 255), 2)
		# 用cv2.imshow 展现最终对比之后的图片， cv2.imwrite 保存最终的结果图片
		dir_image_path = self._get_diff_image_path()
		cv2.imwrite(dir_image_path[0], image1)
		cv2.imwrite(dir_image_path[1], image2)
		if show:
			cv2.imshow("diff_image1", image1)
			cv2.imshow("diff_image2", image2)
			cv2.waitKey(0)

	def _get_diff_image_path(self):
		diff_image_path = []
		for image_path in [self.image_path1, self.image_path2]:
			dir_image_path = os.path.dirname(image_path)
			image_name = "diff_" + image_path[len(dir_image_path) + 1:]
			diff_image_path.append(os.path.join(dir_image_path, image_name))
		return diff_image_path

	def classify_gray_hist(self, size=(256, 256), show=False):
		u'''
		最简单的以灰度直方图作为相似比较的实现   bins 取为16
		:param image_path1:
		:param image_path2:
		:param size:
		:param show:
		:return:
		'''
		image1 = cv2.resize(self.img1, size)
		image2 = cv2.resize(self.img2, size)
		degree = self._calculate(image1, image2, show=show)
		return degree

	def classify_hist_with_split(self, size=(256, 256), show=False):
		u'''
		通过得到每个通道的直方图来计算相似度
		:param size:
		:param show:
		:return:
		'''
		# 将图像resize后，分离为三个通道，再计算每个通道的相似值
		image1 = cv2.resize(self.img1, size)
		image2 = cv2.resize(self.img2, size)
		sub_image1 = cv2.split(image1)
		sub_image2 = cv2.split(image2)
		sub_data = 0
		for im1, im2 in zip(sub_image1, sub_image2):
			sub_data += self._calculate(im1, im2, show=show)
		sub_data = sub_data / 3
		return sub_data

	def classify_aHash(self):
		u'''
		平均哈希算法计算
		:param show:
		:return:
		'''
		image1 = cv2.resize(self.img1, (8, 8))
		image2 = cv2.resize(self.img2, (8, 8))
		gray1 = cv2.cvtColor(image1, cv2.COLOR_BGR2GRAY)
		gray2 = cv2.cvtColor(image2, cv2.COLOR_BGR2GRAY)
		hash1 = self._getHash(gray1)
		hash2 = self._getHash(gray2)
		return self._hamming_distance(hash1, hash2)

	def classify_pHash(self):
		u'''
		平均哈希算法计算,换算浮点型进行比较
		:param show:
		:return:
		'''
		image1 = cv2.resize(self.img1, (32, 32))
		image2 = cv2.resize(self.img2, (32, 32))
		gray1 = cv2.cvtColor(image1, cv2.COLOR_BGR2GRAY)
		gray2 = cv2.cvtColor(image2, cv2.COLOR_BGR2GRAY)
		# 将灰度图转为浮点型，再进行dct变换
		dct1 = cv2.dct(np.float32(gray1))
		dct2 = cv2.dct(np.float32(gray2))
		# 取左上角的8*8，这些代表图片的最低频率
		# 在python中进行掩码操作，可以直接这样取出图像矩阵的某一部分
		dct1_roi = dct1[0:8, 0:8]
		dct2_roi = dct2[0:8, 0:8]
		hash1 = self._getHash(dct1_roi)
		hash2 = self._getHash(dct2_roi)
		return self._hamming_distance(hash1, hash2)

	def _calculate(self, img1, img2, show):
		u'''
		计算单通道的直方图的相似值
		:param show:
		:return:
		'''
		hist1 = cv2.calcHist([img1], [0], None, [256], [0.0, 255.0])
		hist2 = cv2.calcHist([img2], [0], None, [256], [0.0, 255.0])
		if show:
			pyplot.plot(range(256), hist1, 'r')
			pyplot.plot(range(256), hist2, 'b')
			pyplot.show()
		# 计算直方图的重合度
		degree = 0
		for i in range(len(hist1)):
			if hist1[i] != hist2[i]:
				degree = degree + (1 - abs(hist1[i] - hist2[i]) / max(hist1[i], hist2[i]))
			else:
				degree = degree + 1
		degree = degree / len(hist1)
		return degree

	def _getHash(self, image):
		u'''
		输入灰度图，返回hash
		:param image:
		:return:
		'''
		avreage = np.mean(image)
		hash = []
		for i in range(image.shape[0]):
			for j in range(image.shape[1]):
				if image[i, j] > avreage:
					hash.append(1)
				else:
					hash.append(0)
		return hash

	def _hamming_distance(self, hash1, hash2):
		u'''
		计算汉明距离
		:param hash1:
		:param hash2:
		:return:
		'''
		num = 0
		for index in range(len(hash1)):
			if hash1[index] != hash2[index]:
				num += 1
		return num


if __name__ == '__main__':
	img1 = "E:\AutoTest\AutoTestFrame\\testcase\\business\\app\image\\aaaa.png"
	img2 = "E:\AutoTest\AutoTestFrame\\testcase\\business\\app\screenshot\\bbbb.png"

	core = DiffImage(img1, img2).classify_gray_hist()
	print(core,type(core))
	print(DiffImage(img1, img2).classify_hist_with_split())
	# print(DiffImage(img1, img2).classify_aHash())
	# print(DiffImage(img1, img2).classify_pHash())
	# DiffImage(img1, img2).show_diff_location()
