#! /usr/bin/env python
import rospy
import random

rospy.init_node("list_node")
a=random.randint(0,255)
n=3
one=[[[None for i in range(n)]for j in range(n)]for k in range(n)]
two=[[[None for i in range(n)]for j in range(n)]for k in range(n)]
thr=[[[None for i in range(n)]for j in range(n)]for k in range(n)]
for i in range(n):
 for j in range(n):
  for k in range(n):
   a=random.randint(0,255)
   thr[i][j][k]=a
   one[i][j][k]=a
   if(a<125):
    one[i][j][k]=0
   else:
    one[i][j][k]=1
print(two)
print(thr)
print(one)
num=[]
print("enter three number:")
for i in range(3):
  x=(input('number='))
  num+=[x]
num.sort()
print(num)


