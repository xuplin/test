#! /usr/bin/env python
import rospy
rospy.init_node("lesson4")
#1
def subtract(x1,x2):
  result =x1-x2
  print(result)


a=10
b=5
subtract(a,b)
#2
def interest(interest_type,subject):
 print("i like"+interest_type+"activity")
 print("in"+interest_type+"activity,i mostlike"+subject)

interest(interest_type='move',subject='basketball')
interest(subject='basketball',interest_type='move')
#3
def list_trans(num):
 a=list(range(len(num)))
 for i in range(len(num)):
   num[i]=num[i]+30
 
number=[0,20,40]
list_trans(number)
print(number)
#4
"""def build_member(name,gender,tel):
  member={'Name':name,'Gender':gender}
  if tel:
    member['tel']=tel
  return member

member_name=input("enter your name:")
member_gender=input("enter your gender:")
member_tel=input("enter your tel:")
print(build_member(member_name,member_gender,member_tel))"""
#test
def robot(dictr,angle):
    rob={'Dictr':dictr,'Angle':angle}

rob_dictr=input("go or back:(1,0)")
if rob_dictr:
  rob_angle=int(input("left or right:(20<x<80)"))
if rob_angle<20:
  rob['Angle']=right
if rob_angle>80:
  rob['Angle']=left
else:
  rob['Dictr']=go
print(robot(rob_dictr,rob_angle))


