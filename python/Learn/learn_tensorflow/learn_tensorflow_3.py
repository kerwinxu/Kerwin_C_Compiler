# -*- coding: utf-8 -*-
"""
# Last Change:  2017-06-11 15:14:13
Created on Fri Jun  2 20:28:53 2017

@author: kerwin
"""
# 识别手写数字

import tensorflow as tf
import tensorflow.examples.tutorials.mnist.input_data as input_data

mnist = input_data.read_data_sets("MNIST_data/", one_hot=True)

# 建立抽象模型
#  z = Wx+b ：加权求和加上偏置量
#  a = softmax(z) ： 根据证据求概率
x = tf.placeholder(tf.float32, [None, 784])  # 输入占位符（输入的图片）
y = tf.placeholder(tf.float32, [None, 10])   # 输出占位符（预期输出）
W = tf.Variable(tf.zeros([784, 10]))         # 加权求和的
b = tf.Variable(tf.zeros([10]))              # 偏置量
a = tf.nn.softmax(tf.matmul(x, W) + b)       # a表示模型的实际输出

# 定义损失函数和训练方法
cross_entropy = tf.reduce_mean(-tf.reduce_sum(y * tf.log(a), reduction_indices=[1]))  # 损失函数为交叉熵
optimizer = tf.train.GradientDescentOptimizer(0.5)  # 梯度下降法，学习速率为0.5
train = optimizer.minimize(cross_entropy)  # 训练目标：最小化损失函数
# 可以看到这样以来，模型中的所有元素(图结构，损失函数，下降方法和训练目标)都已经包括在train里面。
# 我们可以把train叫做训练模型。

correct_prediction = tf.equal(tf.argmax(a, 1), tf.argmax(y, 1))
# ，tf.argmax表示找到最大值的位置(也就是预测的分类和实际的分类)，
# 然后看看他们是否一致，是就返回true,不是就返回false,这样得到一个boolean数组
accuracy = tf.reduce_mean(tf.cast(correct_prediction, tf.float32))
# tf.cast将boolean数组转成int数组，最后求平均值，得到分类的准确率(怎么样，是不是很巧妙)

# 如下是建立一个会话训练神经网络
sess = tf.InteractiveSession()               # 建立交互式会话
sess.run(tf.global_variables_initializer())  # 所有变量初始化
for i in range(1000):
    batch_xs, batch_ys = mnist.train.next_batch(100)    # 获得一批100个数据
    train.run({x: batch_xs, y: batch_ys})               # 给训练模型提供输入和输出

# 测试数据的
print(sess.run(accuracy, feed_dict={x: mnist.test.images, y: mnist.test.labels}))

# 如下是显示识别的和期望的数字。
x1, y1 = mnist.train.next_batch(20)
a1 = sess.run(a, feed_dict={x: x1})
print(sess.run(tf.argmax(a1, 1)))
print(sess.run(tf.argmax(y1, 1)))
