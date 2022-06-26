#include "ros/ros.h"
#include "geometry_msgs/Twist.h"

using namespace std;
#include <math.h>
#include <stdio.h>
#include <unistd.h>       // Used for UART
#include <sys/fcntl.h>    // Used for UART
#include <termios.h>      // Used for UART
#include <string>
// Define Constants
const char *uart_target = "/dev/ttyUSB0";
#define     NSERIAL_CHAR   256
#define     VMINX          1
#define     BAUDRATE       B115200


class Uart {
private:
  /* data */
  int fid;
public:
  unsigned char serial_message[NSERIAL_CHAR];


  Uart ();
  void sendUart(const char *msg);
  bool sendUart_fb(unsigned char *msg);
  void readUart();
  void closeUart();

};
#define MAX_SPEED (1.7 * 3.14) // RPM
#define L (0.176 / 2)  // 2L la khoang cach 2 banh dv  m
#define R (0.065 / 2)  // R la ban kinh banh xe   dv: m

/******** Cach su dung *******/
// truyen van toc goc 2 banh xe don vi rad*100/s (kieu int)
// truyen chuoi string frame:  vd:  100,200|
// 100 la toc do baanh trai, 200 la banh phai, ngan cach bang dau ",", ki tu ket thuc chuoi '|'
using namespace std;
float wL = 0;
float wR = 0;
int fd = -1;

Uart ser;
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
    ser.sendUart(str.c_str());
    //serialPuts(fd, str.c_str());
  }
}

int main(int argc, char **argv)
{
  // if ((fd = serialOpen("/dev/ttyUSB0", 115200)) < 0)
  // {
  //   ROS_INFO("Unable to open serial port!!!");
  // }

  ros::init(argc, argv, "listen_and_uart");
  ros::NodeHandle n;
  ros::Subscriber sub = n.subscribe("cmd_vel", 1000, chatterCallback);
  ros::spin();
  ser.closeUart();
  return 0;
}


Uart :: Uart (){
  int ii, jj, kk;

  // SETUP SERIAL WORLD

  struct termios  port_options;   // Create the structure

  tcgetattr(fid, &port_options);	// Get the current attributes of the Serial port


  //------------------------------------------------
  //  OPEN THE UART
  //------------------------------------------------
  // The flags (defined in fcntl.h):
  //	Access modes (use 1 of these):
  //		O_RDONLY - Open for reading only.
  //		O_RDWR   - Open for reading and writing.
  //		O_WRONLY - Open for writing only.
  //	    O_NDELAY / O_NONBLOCK (same function)
  //               - Enables nonblocking mode. When set read requests on the file can return immediately with a failure status
  //                 if there is no input immediately available (instead of blocking). Likewise, write requests can also return
  //				   immediately with a failure status if the output can't be written immediately.
  //                 Caution: VMIN and VTIME flags are ignored if O_NONBLOCK flag is set.
  //	    O_NOCTTY - When set and path identifies a terminal device, open() shall not cause the terminal device to become the controlling terminal for the process.fid = open("/dev/ttyTHS1", O_RDWR | O_NOCTTY | O_NDELAY);		//Open in non blocking read/write mode

  fid = open(uart_target, O_RDWR | O_NOCTTY );
  if (fid < 0)
    {
      ROS_INFO("Unable to open serial port!!!");
    }
  tcflush(fid, TCIFLUSH);
  tcflush(fid, TCIOFLUSH);

  usleep(1000000);  // 1 sec delay

  if (fid == -1)
  {
    printf("**Error - Unable to open UART**.  \n=>Ensure it is not in use by another application\n=>Ensure proper privilages are granted to accsess /dev/.. by run as a sudo\n");
  }

  //------------------------------------------------
  // CONFIGURE THE UART
  //------------------------------------------------
  // flags defined in /usr/include/termios.h - see http://pubs.opengroup.org/onlinepubs/007908799/xsh/termios.h.html
  //	Baud rate:
  //         - B1200, B2400, B4800, B9600, B19200, B38400, B57600, B115200,
  //           B230400, B460800, B500000, B576000, B921600, B1000000, B1152000,
  //           B1500000, B2000000, B2500000, B3000000, B3500000, B4000000
  //	CSIZE: - CS5, CS6, CS7, CS8
  //	CLOCAL - Ignore modem status lines
  //	CREAD  - Enable receiver
  //	IGNPAR = Ignore characters with parity errors
  //	ICRNL  - Map CR to NL on input (Use for ASCII comms where you want to auto correct end of line characters - don't use for bianry comms!)
  //	PARENB - Parity enable
  //	PARODD - Odd parity (else even)

  port_options.c_cflag &= ~PARENB;            // Disables the Parity Enable bit(PARENB),So No Parity
  port_options.c_cflag &= ~CSTOPB;            // CSTOPB = 2 Stop bits,here it is cleared so 1 Stop bit
  port_options.c_cflag &= ~CSIZE;	            // Clears the mask for setting the data size
  port_options.c_cflag |=  CS8;               // Set the data bits = 8
  port_options.c_cflag &= ~CRTSCTS;           // No Hardware flow Control
  port_options.c_cflag |=  CREAD | CLOCAL;                  // Enable receiver,Ignore Modem Control lines
  port_options.c_iflag &= ~(IXON | IXOFF | IXANY);          // Disable XON/XOFF flow control both input & output
  port_options.c_iflag &= ~(ICANON | ECHO | ECHOE | ISIG);  // Non Cannonical mode
  port_options.c_oflag &= ~OPOST;                           // No Output Processing

  port_options.c_lflag = 0;               //  enable raw input instead of canonical,

  port_options.c_cc[VMIN]  = VMINX;       // Read at least 1 character
  port_options.c_cc[VTIME] = 0;           // Wait indefinetly

  cfsetispeed(&port_options,BAUDRATE);    // Set Read  Speed
  cfsetospeed(&port_options,BAUDRATE);    // Set Write Speed

  // Set the attributes to the termios structure
  int att = tcsetattr(fid, TCSANOW, &port_options);

  if (att != 0 )
  {
    printf("\nERROR in Setting port attributes");
  }
  else
  {
    printf("\nSERIAL Port Good to Go.\n");
  }

  // Flush Buffers
  tcflush(fid, TCIFLUSH);
  tcflush(fid, TCIOFLUSH);

  usleep(500000);   // 0.5 sec delay


}

void Uart :: sendUart(const char *msg){
  //--------------------------------------------------------------
  // TRANSMITTING BYTES
  //--------------------------------------------------------------
  unsigned char tx_buffer[20];
  unsigned char *p_tx_buffer;

  p_tx_buffer = &tx_buffer[0];

  // so that i have the number of bytes to write
  // by doing p_tx - tx
  for (int i = 0; i < 20; i++) {
    *p_tx_buffer++ = msg[i];
  }
  //printf("%x%x%x%x%x\n",p_tx_buffer[0],p_tx_buffer[1],p_tx_buffer[2],p_tx_buffer[3],p_tx_buffer[4]);
  printf("fid 1=%d\n", fid );

  if (fid != -1)
  {
    int count = write(fid, &tx_buffer[0], (p_tx_buffer - &tx_buffer[0]));		//Filestream, bytes to write, number of bytes to write

    usleep(1000);   // .001 sec delay

    printf("Count = %d\n", count);

    if (count < 0)  printf("UART TX error\n");
  }

  usleep(1000000);  // 1 sec delay


}

bool  Uart :: sendUart_fb(unsigned char *msg){
  //--------------------------------------------------------------
  // TRANSMITTING BYTES WITH LOGICAL FEED BACK
  //--------------------------------------------------------------
  unsigned char tx_buffer[20];
  unsigned char *p_tx_buffer;

  p_tx_buffer = &tx_buffer[0];

  // so that i have the number of bytes to write
  // by doing p_tx - tx
  for (int i = 0; i < 20; i++) {
    *p_tx_buffer++ = msg[i];
  }
  //printf("%x%x%x%x%x\n",p_tx_buffer[0],p_tx_buffer[1],p_tx_buffer[2],p_tx_buffer[3],p_tx_buffer[4]);
  printf("fid 1=%d\n", fid );
  

  if (fid != -1)
  {
    int count = write(fid, &tx_buffer[0], (p_tx_buffer - &tx_buffer[0]));		//Filestream, bytes to write, number of bytes to write

    usleep(1000);   // .001 sec delay

    printf("Count = %d\n", count);

    if (count < 0)  
    {
	    printf("UART TX error\n");
	    return false;
    }
    return true;
  }
  else
  {
	  return false;
  }

  usleep(1000000);  // 1 sec delay


}
void Uart :: readUart(){

  //--------------------------------------------------------------
  // RECEIVING BYTES - AND BUILD MESSAGE RECEIVED
  //--------------------------------------------------------------
  unsigned char rx_buffer[VMINX];
  bool          pickup = true;
  int ii;
  int           rx_length;
  int           nread = 0;

  tcflush(fid, TCIOFLUSH);

  usleep(1000);   // .001 sec delay

  printf("Ready to receive message.\n");


  for (ii=0; ii<NSERIAL_CHAR; ii++)  serial_message[ii]=' ';


  while (pickup && fid != -1)
  {
    nread++;

    rx_length = read(fid, (void*)rx_buffer, VMINX);   // Filestream, buffer to store in, number of bytes to read (max)

    printf("Event %d, rx_length=%d, Read=%s\n",  nread, rx_length, rx_buffer );

    if (rx_length < 0)
    {
      //An error occured (will occur if there are no bytes)
    }

    if (rx_length == 0)
    {
      //No data waiting
    }

    if (rx_length>=0)
    {
      if (nread<=NSERIAL_CHAR){
        serial_message[nread-1] = rx_buffer[0];   // Build message 1 character at a time
        printf("%x ",serial_message[nread-1]);
      }

      if (rx_buffer[0]=='#')   pickup=false;                               // # symbol is terminator
    }
  }

  printf("\nMessage Received:");

}

void Uart :: closeUart(){
  //-------------------------------------------
  //  CLOSE THE SERIAL PORT
  //-------------------------------------------
  close(fid);
}

