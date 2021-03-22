import os,time,random
from werkzeug.utils import secure_filename
from flask import url_for
from uuid import uuid4
from pypinyin import lazy_pinyin
import base64
from urllib import request

class Upload:
    state_info = ''
    state_map = [  # 上传状态映射表，国际化用户需考虑此处数据的国际化
        "SUCCESS",  # 上传成功标记，在UEditor中内不可改变，否则flash判断会出错
        "文件大小超出 upload_max_filesize 限制",
        "文件大小超出 MAX_FILE_SIZE 限制",
        "文件未被完整上传",
        "没有文件被上传",
        "上传文件为空",
    ]

    state_error = {
        "ERROR_TMP_FILE": "临时文件错误",
        "ERROR_TMP_FILE_NOT_FOUND": "找不到临时文件",
        "ERROR_SIZE_EXCEED": "文件大小超出网站限制",
        "ERROR_TYPE_NOT_ALLOWED": "文件类型不允许",
        "ERROR_CREATE_DIR": "目录创建失败",
        "ERROR_DIR_NOT_WRITEABLE": "目录没有写权限",
        "ERROR_FILE_MOVE": "文件保存时出错",
        "ERROR_FILE_NOT_FOUND": "找不到上传文件",
        "ERROR_WRITE_CONTENT": "写入文件内容错误",
        "ERROR_UNKNOWN": "未知错误",
        "ERROR_DEAD_LINK": "链接不可用",
        "ERROR_HTTP_LINK": "链接不是http链接",
        "ERROR_HTTP_CONTENTTYPE": "链接contentType不正确"
    }

    # 初始化函数
    # 要处理的文件对象；处理该对象的配置参数；文件保存的目录
    def __init__(self, file, config, save_folder, __type='up_file'):
        self.file = file
        self.config = config
        self.save_folder = save_folder
        self.__type = __type
        if self.__type == 'remote':
            self.save_remote()
        elif self.__type == 'base64':
            self.up_base64()
        else:
            self.up_file()

    def save_remote(self):
        # 获取文件内容
        _file = request.urlopen(self.file).read()
        # 文件大小
        self.file_size = len(_file)
        # 原始文件名
        self.ori_name = self.config['oriName']
        # 文件后缀
        self.file_type = self.get_file_type()
        # 生成新的文件名含路径
        self.full_name = self.get_full_name()
        # 文件保存路径完整绝对路径
        self.file_path = self.get_file_path()
        # 判断文件大小是否超出限制
        if not self.check_size():
            self.state_info = self.get_error('ERROR_SIZE_EXCEED')
            return

        # 获取保存路径
        dir_name = os.path.dirname(self.file_path)
        # 判断保存路径是否存在
        if not os.path.exists(dir_name):
            # 创建保存路径，创建失败则报错
            try:
                os.makedirs(dir_name)
            except:
                self.state_info = self.get_error('ERROR_CREATE_DIR')
        # 判断保存路径如果不允许写入则直接报错
        elif not os.access(dir_name, os.W_OK):
            self.state_info = self.get_error('ERROR_DIR_NOT_WRITEABLE')
            return
        # 开始保存文件
        try:
            with open(self.file_path, 'wb') as f:
                f.write(_file)
            self.state_info = self.state_map[0]
        except:
            self.state_info = self.get_error('ERROR_FILE_MOVE')
            return
    def up_base64(self):
        im = base64.b64decode(self.file)
        # 文件大小
        self.file_size = len(im)
        # 原始文件名
        self.ori_name = self.config['oriName']
        # 文件后缀
        self.file_type = self.get_file_type()
        # 生成新的文件名含路径
        self.full_name = self.get_full_name()
        # 文件保存路径完整绝对路径
        self.file_path = self.get_file_path()

        # 判断文件大小是否超出限制
        if not self.check_size():
            self.state_info = self.get_error('ERROR_SIZE_EXCEED')
            return

        # 获取保存路径
        dir_name = os.path.dirname(self.file_path)
        # 判断保存路径是否存在
        if not os.path.exists(dir_name):
            # 创建保存路径，创建失败则报错
            try:
                os.makedirs(dir_name)
            except:
                self.state_info = self.get_error('ERROR_CREATE_DIR')
        # 判断保存路径如果不允许写入则直接报错
        elif not os.access(dir_name, os.W_OK):
            self.state_info = self.get_error('ERROR_DIR_NOT_WRITEABLE')
            return
        # 开始保存文件
        try:
            with open(self.file_path, 'wb') as f:
                f.write(im)
            self.state_info = self.state_map[0]
        except:
            self.state_info = self.get_error('ERROR_FILE_MOVE')
            return
    # 上传文件
    def up_file(self):
        '''
        上传文件的主处理方法
        :return:
        '''
        # 文件大小
        self.file_size = self.get_file_size()
        # 原始文件名
        self.ori_name = self.get_ori_name()
        # 文件后缀
        self.file_type = self.get_file_type()
        # 生成新的文件名含路径
        self.full_name = self.get_full_name()
        # 文件保存路径完整绝对路径
        self.file_path = self.get_file_path()

        # 判断文件大小是否超出限制
        if not self.check_size():
            self.state_info = self.get_error('ERROR_SIZE_EXCEED')
            return
        # 判断文件类型是否允许
        if not self.check_type():
            self.state_info = self.get_error('ERROR_TYPE_NOT_ALLOWED')
            return
        # 开始保存文件
        self.save_file()
    def get_ori_name(self):
        '''
        获取原始文件名（不支持中文，使用pypinyin将中文转为每个汉字首字母）
        :return:
        '''
        return secure_filename(''.join(lazy_pinyin(self.file.filename, style=4)))
    def get_file_size(self):
        '''
        获取文件大小(将指针移动到文件末尾，读取指针位置，即该文件的大小；
        获得文件大小后还将指针移动到文件开始位置)。
        :return: 文件大小
        '''
        self.file.seek(0, 2)
        file_size = self.file.tell()
        self.file.seek(0, 0)
        return file_size

    def save_file(self):
        # 获取保存路径
        dir_name = os.path.dirname(self.file_path)
        # 判断保存路径是否存在
        if not os.path.exists(dir_name):
            # 创建保存路径，创建失败则报错
            try:
                os.makedirs(dir_name)
            except:
                self.state_info = self.get_error('ERROR_CREATE_DIR')
        # 判断保存路径如果不允许写入则直接报错
        elif not os.access(dir_name, os.W_OK):
            self.state_info = self.get_error('ERROR_DIR_NOT_WRITEABLE')
            return
        # 开始保存文件
        try:
            self.file.save(self.file_path)
            self.state_info = self.state_map[0]



        except:
            self.state_info = self.get_error('ERROR_FILE_MOVE')
            return

    # 文件错误提示
    def get_error(self, error_code):
        '''
        上传错误输出
        :param error_code: 错误代码
        :return: 错误信息
        '''
        return self.state_error.get(error_code, '未知错误')

    # 获取文件后缀
    def get_file_type(self):
        '''
        获取文件类型
        :return:返回文件后缀包含.
        '''
        return '.%s' % self.ori_name.split('.')[-1].lower()

    # 生成新的文件名,含相对路径
    def get_full_name(self):
        '''
        按照配置文件规则生成文件新地址
        :return: 生成新的文件地址
        '''
        _format = self.config['pathFormat']
        # _format = _format.replace('{uuid}', str(uuid4()))
        _format = _format.replace("{yyyy}{mm}{dd}",time.strftime("%Y%m%d", time.localtime())).replace("{time}",str(int(time.time()))).replace("{rand:6}",str(random.randint(100000,999999)))



        # print("***")
        # print(_format )
        # print("***") 

        # 判断路径首字符是否是“/”，如果是则去除，便于拼接完整绝对路径
        _format = _format[1:-1] if _format[0] == '/' else _format
        return '%s%s' % (_format, self.get_file_type())

    # 获取文件路径
    def get_file_path(self):
        '''
        生成文件保存的完整绝对路径
        :return: 文件完整绝对路径
        '''
        return os.path.join(self.save_folder, self.full_name)

    # 验证文件类型是否允许
    def check_type(self):
        '''
        判断上传的文件后缀是否在配置文件允许的后缀列表中
        :return:
        '''
        return self.file_type in self.config['allowFiles']

    # 验证文件大小是否超出设定
    def check_size(self):
        '''
        判断文件大小是否超出配置文件中的文件大小单位：字节
        :return:
        '''
        return self.file_size <= self.config['maxSize']

    def get_file_info(self):
        return {
            'state': self.state_info,
            'url': url_for('static', filename=self.full_name, _external=True),
            'title': self.ori_name,
            'original': self.ori_name,
            'type': self.file_type,
            'size': self.file_size,
        }