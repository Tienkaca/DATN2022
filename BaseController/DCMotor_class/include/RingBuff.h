#ifndef RINGBUFF_H
#define RINGBUFF_H
//#include <string>
//#include <Arduino.h>
#define FRAME_SIZE 50
#include <stdint.h>
class RingBuff
{
	char* m_buff;
	uint16_t m_size;
	uint16_t m_in;
	uint16_t m_out;
public:
	char frame[FRAME_SIZE];
	RingBuff(uint16_t size = 300);
	~RingBuff();
	char Get_c();
	void Get_s(char* str,uint16_t len);
	const char* Get_Frame(char endKey = '|');
	void Put_c(char c);
	void Put_s(const char* s);
};

#endif
