import os
os.environ['TF_CPP_MIN_LOG_LEVEL']='2'
import tensorflow as tf
hello = tf.constant('hello,Tensorflow')
sess=tf.Session()
print(sess.run(hello))
a=tf.constant(10)
b=tf.constant(20)
print(sess.run(a+b))
