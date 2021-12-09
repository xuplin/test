#! /usr/bin/env python
import rospy
rospy.init_node("lesson3")

tuple3=('a','b')
a=tuple3*2
print(a)

dict={'a':'apple','b':'banana','c':'cat'}
print(dict['a'])

x=('key1','key2','key3')
y=1
keydict=dict.fromkeys(x,y)
print(keydict)

del keydict['key1']
print(keydict)

keydict.clear()
print(keydict)

t=0
while 1:
  if t==5:
     break
  print(t)
  t+=1
    
