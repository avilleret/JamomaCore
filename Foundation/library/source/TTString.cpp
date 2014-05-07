/* 
	Jamoma Class for representing strings
	Copyright © 2012, Timothy Place
	
	License: This code is licensed under the terms of the "New BSD License"
	http://creativecommons.org/licenses/BSD/
 */

#include "TTString.h"
#include "MersenneTwister.h"

void TTString::random()
{
	MTRand			twister;
	unsigned int	i = twister.randInt();
	char			s[16];
		
	snprintf(s, 16, "j%u", i);
	s[15] = 0;
	(*this) = s;
}

TTString::TTString(const char *aCString) 
{
	mString = NULL; 
	mSize = 0; 
	operator = (aCString);
	//TTLogDebug("TTString NEW %p %s\n", this, aCString);
}

TTString::TTString(const TTString& aTTString)
{
	mString = NULL;
	mSize = 0;
	operator = (aTTString);
}

TTString::TTString(const std::string& aStdString)
{
	mString = NULL;
	mSize = 0;
	operator = (aStdString.c_str());
}

TTString::~TTString()
{
	if (mString)
		delete[] mString;
}

TTString& TTString::operator = (const char* aCString)
{
	if (!aCString)
	{
		clear();
		return *this;
	}

	int len = strlen(aCString);

	if (len < mSize)
		strcpy(mString, aCString);
	else
	{
		if (mString)
		{
			delete[] mString;
			mString = NULL;
		}

		mSize = len + 1;
		mString = new char[mSize];

		if (!mString)
			mSize = 0;
		else
			strcpy(mString, aCString);
	}

	return *this;
}

TTString& TTString::operator = (const char aChar)
{
	mString = NULL;
	mSize = 1;
	mString = new char[mSize];
	mString[0] = aChar;
	return *this;
}

TTString& TTString::operator = (const TTString& aTTString)
{
	mString = NULL; 
	mSize = 0;
	return operator = (aTTString.mString);
}

TTString& TTString::operator = (const std::string& aStdString)
{
	mString = NULL;
	mSize = 0;
	return operator = (aStdString.c_str());
}

size_t TTString::size() const
{
	return strlen(mString);
}

size_t TTString::length() const
{
	return size();
}

void TTString::resize(size_t newSize)
{
	char *oldString = mString;

	mSize = newSize;
	mString = new char[newSize];

	if (!mString)
	{
		if (oldString)
			delete[] oldString;
		mSize = 0;
		return;
	}

	if (oldString)
	{
		strcpy(mString, oldString);
		delete[] oldString;
	}
	else
		mString[0] = '\0';
}

void TTString::clear()
{
	resize(0); // we call this instead of clear() on the vector because when we are empty we still have a string with 1 NULL termination char
}

bool TTString::empty()
{
	if (size() < 2) // empty means we have only 1 char (a NULL terminator)
		return true;
	else
		return false;
}

bool TTString::empty() const
{
	return size() == 0;
}

char& TTString::operator[] (const int index)
{
	return this->at(index);
}

char& TTString::at(size_t index) const
{
	return mString[index];
}

TTString& TTString::operator += (const char *aCString)
{
	int len = size() + strlen(aCString);

	if (len >= mSize)
		resize(len + 1);

	strcat(mString, aCString);

	return *this;
}

TTString& TTString::operator += (TTString& aTTString)
{
	return operator += (aTTString.mString);
}

TTString TTString::operator + (const char* arg)
{
	TTString result(*this);	// Make a copy of myself
	result += arg;			// Use += to add arg to the copy.
	return result;
}

TTString& TTString::append(const char *str, size_t length)
{
	return operator += (str);
}

TTString& TTString::append(const char aChar)
{
	char s[2];

	snprintf(s, 2, "%c", aChar);
	return append(s);
}

TTString& TTString::append(TTString aTTString)
{
	return append(aTTString.mString);
}

TTString& TTString::append(int anInt)
{
	char s[16];

	snprintf(s, 16, "%i", anInt);
	return append(s);
}

TTString& TTString::append(unsigned int aUInt)
{
	char s[16];

	snprintf(s, 16, "%u", aUInt);
	return append(s);
}

TTString& TTString::append(float aFloat)
{
	char s[16];

	snprintf(s, 16, "%f", aFloat);
	return append(s);
}

TTString& TTString::append(double aDouble)
{
	char s[16];

	snprintf(s, 16, "%lf", aDouble);
	return append(s);
}

const char* TTString::c_str() const
{
	return mString;
}

const char* TTString::data()
{
	return mString;
}

size_t TTString::find_first_of(const char aChar, size_t from)
{
	TTBoolean	found = NO;
	size_t		i;

	for (i = from; i<size(); i++) {
		if (at(i) == aChar) {
			found = YES;
			break;
		}
	}
	if (found)
		return i;
	else
		return -1;
}

size_t TTString::find_last_of(const char aChar)
{
	TTBoolean	found = NO;
	size_t		i, j;

	j = size() - 1;

	for (i = 0; i<size(); i++) {
		if (at(j) == aChar) {
			found = YES;
			break;
		}
		else {
			j--;
		}
	}
	if (found)
		return j;
	else
		return -1;
}

TTString TTString::substr(size_t pos, size_t n) const
{
	TTString	substring;
	size_t		i;

	if (pos + n > size())		// If the size is too large and thus the range extends past the end of the string...
		n = size() - pos;		// we limit the range to end at the end of the string.

	substring.resize(n);
	for (i = 0; i < n; i++) {
		substring[i] = mString[pos + i];
		if (pos + i >= size())
			break;
	}
	return substring;
}

bool TTString::operator == (const char *aCString) const
{
	return strcmp(mString, aCString) == 0;
}

bool TTString::operator == (TTString aTTString) const
{
	return operator == (aTTString.mString);
}

bool TTString::operator != (const char *aCString) const
{
	return !(mString == aCString);
}

bool TTString::operator != (TTString aTTString) const
{
	return !operator == (aTTString.mString);
}

TTBoolean TTString::toTTInt32(TTInt32& convertedInt) const
{
	char * pEnd;

	convertedInt = strtol(c_str(), &pEnd, 10);
	return *pEnd == 0;
}

TTBoolean TTString::toTTUInt32(TTUInt32& convertedUInt) const
{
	char * pEnd;

	convertedUInt = strtoul(c_str(), &pEnd, 10);

	// is the last letter is a 'u' ?
	return *pEnd == 'u' && pEnd == (c_str() + length() - 1);
}

TTBoolean TTString::toTTFloat32(TTFloat32& convertedFloat) const
{
	char * pEnd;

	convertedFloat = strtod(c_str(), &pEnd);
	return *pEnd == 0;
}
