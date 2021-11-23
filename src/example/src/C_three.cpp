#include <stdio.h>
#include <stdlib.h>
#include <ros/ros.h>
#include <iostream>
using namespace std;

class class_name
{     

     public:
            char id;
            int width;
            int height;
          
            int area(void)
            {    
              return width*height;
            }
};
class data
{
     public:
            float height;
            float weight;
            char ID;
            float BMI();
}member1;
float data::BMI()
{
     return weight/(height*height);
}

int main (int argc,char **argv)
{
      ros::init(argc,argv,"C_three");
      ros::NodeHandle nh;
     
      int a=0,b=0,c=0,d=0;
      for(int i=0;i<10;i++)
      {   
           a=b++;
           c=++d;
           printf("%d %d %d \n",i,a,c);
      }

      class_name size;
      size.id='A';
      size.width=10;
      size.height=20;

      printf("id=%c\n",size.id);
      printf("size=%d\n",size.area());
      
      member1.ID='A';
      member1.height=1.80;
      member1.weight=85;

      printf("ID=%C\n",member1.ID);
      printf("BMI=%f\n",member1.BMI());
      
      return 0;
}
