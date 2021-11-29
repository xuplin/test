#! /usr/bin/env python
import rospy
rospy.init_node("lesson2")


num=[]
for i in range(1,10,2):
   num=num+[i]
print(num)
print(max(num))
print(min(num))
print(sum(num))
