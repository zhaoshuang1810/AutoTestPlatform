import os
from copy import deepcopy
from datetime import datetime

from xlrd import open_workbook, xldate_as_tuple

from configure.config import EXCEL_PATH


class SheetTypeError(Exception):
	pass


class ExcelReader:
	"""
	读取excel文件中的内容。返回list。

	如：
	excel中内容为：
	| A  | B  | C  |
	| A1 | B1 | C1 |
	| A2 | B2 | C2 |

	如果 print(ExcelReader(excel, title_line=True).data)，输出结果：
	[{A: A1, B: B1, C:C1}, {A:A2, B:B2, C:C2}]

	如果 print(ExcelReader(excel, title_line=False).data)，输出结果：
	[[A,B,C], [A1,B1,C1], [A2,B2,C2]]

	可以指定sheet，通过index或者name：
	ExcelReader(excel, sheet=2)
	ExcelReader(excel, sheet='BaiDuTest')
	"""

	def __init__(self, excel, sheet=0, title_line=True, col_first=False):
		if os.path.exists(excel):
			self.excel = excel
		else:
			raise FileNotFoundError('文件不存在！')
		self.sheet = sheet
		self.title_line = title_line
		self.col_first = col_first
		self._data = list()

	@property
	def data(self):
		if not self._data:
			workbook = open_workbook(self.excel)
			if type(self.sheet) not in [int, str]:
				raise SheetTypeError('Please pass in <type int> or <type str>, not {0}'.format(type(self.sheet)))
			elif type(self.sheet) == int:
				s = workbook.sheet_by_index(self.sheet)
			else:
				s = workbook.sheet_by_name(self.sheet)

			if self.title_line:
				title = s.row_values(0)  # 首行为title
				for col in range(1, s.nrows):
					# 依次遍历其余行，与首行组成dict，拼到self._data中
					self._data.append(dict(zip(title, self._trans_cell_values(s,col))))

				if self.col_first:
					temp = {}
					for d in self._data:
						key = d[title[0]]
						temp[key] = d
					self._data = deepcopy(temp)
			else:
				for col in range(0, s.nrows):
					# 遍历所有行，拼到self._data中
					self._data.append(self._trans_cell_values(s,col))

				if self.col_first:
					temp = {}
					for d in self._data:
						key = d[0]
						temp[key] = d
					self._data = deepcopy(temp)
		return self._data

	def _trans_cell_values(self, sheet, col):
		u'''
		ctype： 0 empty,1 string, 2 number, 3 date, 4 boolean, 5 error
		:param sheet:
		:param col: 行数
		:return:
		'''
		col_values = sheet.row_values(col)
		temp = []
		for i in range(len(col_values)):
			ctype = sheet.cell(col, i).ctype  # 表格的数据类型
			cell = sheet.cell_value(col, i)
			if ctype == 2 and cell % 1 == 0:  # 如果是整形
				cell = int(cell)
			elif ctype == 3:
				# 转成datetime对象
				date = datetime(*xldate_as_tuple(cell, 0))
				cell = date.strftime('%Y-%d-%m %H:%M:%S')
			elif ctype == 4:
				cell = True if cell == 1 else False
			temp.append(cell)
		return temp


if __name__ == '__main__':
	excel = os.path.join(EXCEL_PATH, "datafile.xlsx")
	aa = ExcelReader(excel, sheet='test', title_line=True, col_first=True).data
	print(aa)
