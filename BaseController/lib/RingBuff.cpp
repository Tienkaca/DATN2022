// RingBuff.cpp : This file contains the 'main' function. Program execution begins and ends there.
//
#include "RingBuff.h"
RingBuff::RingBuff(uint16_t size)
{
	m_buff = new char[size] {'\0'};
	m_size = size;
}
RingBuff::~RingBuff()
{
	if (m_buff)
		delete[] m_buff;
	m_buff = nullptr;
}
char RingBuff::Get_c()
{
	int i = 0;
	char c = '\0';
	if (m_size > 0) {
		while (!c)
		{
			if (m_out == m_size) m_out = 0;
			c = m_buff[m_out];
			m_out++;
			i++;
			if (i > m_size)
				break;
		}

	}
	return c;
}
std::string RingBuff::Get_s(uint16_t len)
{
	uint16_t i = 0;
	char c = 0;
	std::string ret = "";
	while (i < len)
	{
		c = Get_c();
		if(c)
			ret.push_back(c);
		i++;

	}

	return ret;
}
std::string RingBuff::Get_Frame(char endKey)
{
	uint16_t i = 0,len = m_size;
	char c = 0;
	std::string ret = "";
	while (i < len)
	{
		c = Get_c();
		if (endKey == c)
			break;
		else if (c)
			ret.push_back(c);
		i++;

	}

	return ret;
}
void RingBuff::Put_c(char c)
{
	if (m_in <= m_size)
	{
		if (m_in == m_size) m_in = 0;
		m_buff[m_in] = c;
		m_in++;
	}
}
void RingBuff::Put_s(const std::string& s)
{
	for (auto& i : s)
		Put_c(i);
}
