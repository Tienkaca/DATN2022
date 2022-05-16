#ifndef RINGBUFF_H
#define RINGBUFF_H
#include <string>
class RingBuff
{
	char* m_buff;
	uint16_t m_size;
	uint16_t m_in;
	uint16_t m_out;
public:
	RingBuff(uint16_t size = 300);
	~RingBuff();
	char Get_c();
	std::string Get_s(uint16_t len);
	std::string Get_Frame(char endKey = '|');
	void Put_c(char c);
	void Put_s(const std::string& s);
};

#endif
