#! /usr/bin/env python
import rospy
rospy.init_node("hello_python_node")
print("account:iclab_xiao_ming\n")
x=raw_input("password:\n")
if x=="""aa""":
    print("welcome! user")
else:
    print("account password error,again")

from time import sleep
n=1
while 1:
 if n<10:
  sleep(1)
  print(n)
  n+=1
 else:
  sleep(1)
  print("time over")
  break
