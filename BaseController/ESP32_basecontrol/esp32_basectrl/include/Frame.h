#ifndef FRAME_H
#define FRAME_H
//#include <string>
#include <Arduino.h>
#include <stdint.h>
class Frame
{
	char* m_buff;
	uint16_t m_size;
	uint16_t m_in;
	uint16_t m_out;
	char m_endKey;
public:
	char* m_frame;
	Frame(uint16_t size = 128,char endKey = '|');
	~Frame();
	const char* Get_Frame(char endKey = '|');
	void Put_c(char c);
	void Put_s(const char* s);
};

#endif
