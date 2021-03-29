import time


class ComMethod(object):

	def __init__(self):
		pass

	def trans_time(self, var_time, timestamp=True, format="%Y-%m-%d %H:%M:%S"):
		u'''
		转换时间
		:param var_time: 时间变量
		:param timestamp: 否为转换为时间戳 True(字符串转换成时间戳) False(时间戳转换成字符串)
		:param format: 转换或要转换的形式
		:return:
		'''
		if not var_time:
			return ""
		if timestamp:
			temp = time.mktime(time.strptime(str(var_time), format))
			resp = int(temp * 1000)
		else:
			temp = int(float(var_time) / 1000)
			resp = time.strftime(format, time.localtime(temp))
		return resp

	def trans_time_format(self, var_time, format_before="%Y-%m-%d %H:%M:%S", format_after="%Y-%m-%d %H:%M:%S"):
		u'''
		转换时间
		:param var_time: 时间变量
		:param timestamp: 否为转换为时间戳
		:param format: 转换或要转换的形式
		:return:
		'''
		if var_time is None:
			return ""
		timestamp = time.mktime(time.strptime(str(var_time), format_before))
		resp = time.strftime(format_after, time.localtime(timestamp))
		return resp


	def get_timestr(self, format="%Y-%m-%d %H:%M:%S", **kwargs):
		u'''
		获取时间，字符串显示
		:param format:
		:return:
		'''
		# startTime 代表时间起点，默认为当前时间
		start_time = time.mktime(
			time.strptime(str(kwargs['startTime']), format)) if "startTime" in kwargs else time.time()
		# interval 代表时间间隔，正数为将来时间，负数为过去时间，默认值为0单位为s
		interval = kwargs.get('interval', 0)
		timestr = time.strftime(format, time.localtime(start_time + int(interval)))
		return timestr
