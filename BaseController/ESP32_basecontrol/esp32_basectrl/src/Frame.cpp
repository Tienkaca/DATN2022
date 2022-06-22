// Frame.cpp : This file contains the 'main' function. Program execution begins and ends there.
//
#include "Frame.h"
Frame::Frame(uint16_t size,char endKey)
{
	m_buff = new char[size] {'\0'};
	m_frame = new char[size] {'\0'};
	m_size = size;
	m_endKey = '|';
}
Frame::~Frame()
{
	if (m_buff)
	{
		delete[] m_buff;
		delete[] m_frame;
	}
	m_buff = nullptr;
}
const char* Frame::Get_Frame(char endKey)
{
	return m_frame;
}
void Frame::Put_c(char c)
{
	if (m_endKey == c)
	{
		memset(m_frame, '\0',m_size);
		memcpy(m_frame, m_buff, m_size);
		memset(m_buff, '\0', m_size);
		m_in = 0;
		//std::cout << m_frame << std::endl;
	}
	else
	{
		if (m_in <= m_size)
		{
			if (m_in == m_size) m_in = 0;
			m_buff[m_in] = c;
			m_in++;
		}
	}
}
void Frame::Put_s(const char* s)
{
	for (int i = 0; i < strlen(s); i++)
	{
		Put_c(s[i]);
	}
}
