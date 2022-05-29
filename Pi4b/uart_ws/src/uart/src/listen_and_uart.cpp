#include "ros/ros.h"
#include "geometry_msgs/Twist.h"
#include <wiringPi.h>
#include <wiringSerial.h>
using namespace std;
int fd = -1;
const float l = 0.3,r = 0.03;

string str ="";
float vx,vy,theta;
void chatterCallback(const geometry_msgs::Twist::ConstPtr& msg)
{
    vx = msg->linear.x;
    vy = msg->linear.y;
    theta = msg->angular.z;
    float vLeft = vx + theta*l/2 ;
    float vRight = vx - theta*l/2;
    int wL = vLeft/(r*2*3.14)*60*100;
    int wR = vRight/(r*2*3.14)*60*100;

    str = to_string(wL) + string(",") + to_string(wR) + string("|") ;
    ROS_INFO("I heard: [%s]", str.c_str());
    if(fd >=0)
    {
      serialPuts(fd, str.c_str());
    }
    
}

int main(int argc, char **argv)
{
  if((fd = serialOpen ("/dev/ttyS0", 115200)) < 0 )
  {
    ROS_INFO("Unable to open serial port!!!");
  }
  
  ros::init(argc, argv, "listen_and_uart");
  ros::NodeHandle n;
  ros::Subscriber sub = n.subscribe("cmd_vel", 1000, chatterCallback);
  ros::spin();
  serialClose (fd) ;
  return 0;
}
