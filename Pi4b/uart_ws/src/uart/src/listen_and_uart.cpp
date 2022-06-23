#include "ros/ros.h"
#include "geometry_msgs/Twist.h"
#include <wiringPi.h>
#include <wiringSerial.h>
#include <math.h>
#define MAX_SPEED (1.7 * 3.14) // RPM
#define L (0.176 / 2)
#define R (0.065 / 2)

using namespace std;
float wL = 0;
float wR = 0;
int fd = -1;

string str = "";
float vx, vy, theta;
float mapSpeed(float w);
void calVel(float vx, float vy);
float mapSpeed(float w)
{
  if (fabs(w) > MAX_SPEED)
  {
    if (w > 0)
      return MAX_SPEED;
    else if (w < 0)
      return -MAX_SPEED;
    else
      return 0;
  }
  return w;
}
void calVel(float vx, float theta)
{
  wL = (vx - theta * L) / R;
  wR = (vx + theta * L) / R;
  wL = mapSpeed(wL) * 100;
  wR = mapSpeed(wR) * 100;
}
void chatterCallback(const geometry_msgs::Twist::ConstPtr &msg)
{
  vx = msg->linear.x/2.5;
  vy = msg->linear.y;
  theta = 3*msg->angular.z;

  calVel(vx, theta); //

  str = to_string((int)wL) + string(",") + to_string((int)wR) + string("|"); // anguler velocity rad/s
  ROS_INFO("I heard: [%s]", str.c_str());
  if (fd >= 0)
  {
    serialPuts(fd, str.c_str());
  }
}

int main(int argc, char **argv)
{
  if ((fd = serialOpen("/dev/ttyUSB0", 115200)) < 0)
  {
    ROS_INFO("Unable to open serial port!!!");
  }

  ros::init(argc, argv, "listen_and_uart");
  ros::NodeHandle n;
  ros::Subscriber sub = n.subscribe("cmd_vel", 1000, chatterCallback);
  ros::spin();
  serialClose(fd);
  return 0;
}
