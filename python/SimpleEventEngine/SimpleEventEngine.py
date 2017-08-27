#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Author:  kerwin.cn@gmail.com
# Created Time:2017-08-26 20:16:21
# Last Change:  2017-08-26 20:50:21
# File Name: SampleEventEngine.py

from threading import Thread
import queue


class SimpleEventEngine:
    """
    事件驱动引擎
    事件驱动引擎中所有的变量都设置为了私有，这是为了防止不小心
    从外部修改了这些变量的值或状态，导致bug。

    变量说明
    __queue：私有变量，事件队列
    __active：私有变量，事件引擎开关
    __thread：私有变量，事件处理线程
    __timer：私有变量，计时器
    __handlers：私有变量，事件处理函数字典


    方法说明
    __run: 私有方法，事件处理线程连续运行用
    __process: 私有方法，处理事件，调用注册在引擎中的监听函数
    __onTimer：私有方法，计时器固定事件间隔触发后，向事件队列中存入计时器事件
    start: 公共方法，启动引擎
    stop：公共方法，停止引擎
    register：公共方法，向引擎中注册监听函数
    unregister：公共方法，向引擎中注销监听函数
    put：公共方法，向事件队列中存入新的事件

    事件监听函数必须定义为输入参数仅为一个event对象，即：

    函数
    def func(event)
        ...

    对象方法
    def method(self, event)
        ...

    """
    # ----------------------------------------------------------------------
    def __init__(self):
        """初始化事件引擎"""
        # 事件队列
        self.__queue = queue.Queue()

        # 事件引擎开关
        self.__active = False

        # 事件处理线程
        # 线程会持续运行
        self.__thread = Thread(target=self.__run)

        # 这里的__handlers是一个字典，用来保存对应的事件调用关系
        # 其中每个键对应的值是一个列表，列表中保存了对该事件进行监听的函数功能
        self.__handlers = {}

    # ----------------------------------------------------------------------
    def __run(self):
        """引擎运行"""
        # 如果引擎运行
        while self.__active is True:
            try:
                # 试着取出一个事件
                event = self.__queue.get(block=True, timeout=1)
                # 处理事件
                self.__process(event)
            except Exception as ex:
                print(ex)
                pass

    # ----------------------------------------------------------------------
    def __process(self, event):
        """处理事件"""
        # 检查是否存在对该事件进行监听的处理函数
        if event.type_ in self.__handlers:
            # 判断有监听这个事件，然后self.__handlers[event.type_]就是一个处理这个事件的函数列表
            # 若存在，则按顺序将事件传递给处理函数执行
            [handler(event) for handler in self.__handlers[event.type_]]

            # 以上语句为Python列表解析方式的写法，对应的常规循环写法为：
            # for handler in self.__handlers[event.type_]:
            #   handler(event)

    # ----------------------------------------------------------------------
    def start(self):
        """引擎启动"""
        # 将引擎设为启动
        self.__active = True

        # 启动事件处理线程
        self.__thread.start()

    # ----------------------------------------------------------------------
    def stop(self):
        """停止引擎"""
        # 将引擎设为停止
        self.__active = False

        # 等待事件处理线程退出
        self.__thread.join()

    # ----------------------------------------------------------------------
    def register(self, type_, handler):
        """注册事件处理函数监听"""
        # 尝试获取该事件类型对应的处理函数列表，若无则创建
        try:
            handlerList = self.__handlers[type_]
        except KeyError:
            handlerList = []
            self.__handlers[type_] = handlerList

        # 若要注册的处理器不在该事件的处理器列表中，则注册该事件
        if handler not in handlerList:
            handlerList.append(handler)
            # append就是添加到函数列表中

    # ----------------------------------------------------------------------
    def unregister(self, type_, handler):
        """注销事件处理函数监听"""
        # 尝试获取该事件类型对应的处理函数列表，若无则忽略该次注销请求
        try:
            handlerList = self.handlers[type_]

            # 如果该函数存在于列表中，则移除
            if handler in handlerList:
                handlerList.remove(handler)

            # 如果函数列表为空，则从引擎中移除该事件类型
            if not handlerList:
                del self.handlers[type_]
        except KeyError:
            pass

    # ----------------------------------------------------------------------
    def put(self, event):
        """向事件队列中存入事件"""
        self.__queue.put(event)


class Event:
    """事件对象"""

    # ----------------------------------------------------------------------
    def __init__(self, type_=None):
        """Constructor"""
        self.type_ = type_      # 事件类型
        self.dict_ = {}         # 字典用于保存具体的事件数据


def simpletest1(event):
    print("this is simmpletest1")
    print(event.dict_)


def simpletest2(event):
    print("this is simpletest2")

simpletesttype = "simpletest"


if __name__ == "__main__":
    # 定义引擎
    ee = SimpleEventEngine()
    # 注册一个事件和相应的处理函数
    ee.register(simpletesttype, simpletest1)
    ee.register(simpletesttype, simpletest2)
    # 启动引擎
    ee.start()
    # 这里发送一个事件
    ev = Event(simpletesttype)
    ev.dict_ = {
        "key": "value"
    }
    ee.put(ev)
    # 关闭引擎
    ee.stop()
