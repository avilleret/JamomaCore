/*
 Jamoma Class for representing strings
 Copyright © 2012, Timothy Place & Théo Delahogue
 
 License: This code is licensed under the terms of the "New BSD License"
 http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_STRING_H__
#define __TT_STRING_H__

#include "TTBase.h"


/****************************************************************************************************/
// Class Specification

/**	The TTString class is used to represent a string.
	We cannot safely pass std::string across lib boundaries, particularly on Windows.
	We also don't want to simply pass naked C-Strings for a whole host of reasons.
	 
	In many cases we try to mimic the interface of std::string for ease of compatibility.
	 
	 
	FROM http://cboard.cprogramming.com/cplusplus-programming/86598-std-vector-char-vs-std-string.html
	1. std::string has a huge number of string-related functions which make it easy to manipulate strings.
	2. std::vector, on the other hand, is guaranteed to be contiguous in memory -- that is, &data[x + 1] = &data[x] + sizeof(data[x]).
		std::string has NO guarantee that it is contiguous in memory.
		So, for example, say you're using an API call that fills a character buffer. 
		You'd need to use the vector, not the string.

	@seealso TTSymbol
*/

// TODO : create a custom iterator
typedef char* TTStringIter;

class TTFOUNDATION_EXPORT TTString {

private:

	char	*mString;
	size_t	mSize;

public:

	/** Constructors */
	TTString(const char *aCString = "");
	TTString(const TTString& aTTString);
	TTString(const std::string& aStdString);
	
	/** Destructor */
	~TTString();

	/** Assign operators. */
	TTString& operator = (const char* aCString);
	TTString& operator = (const char aChar);
	TTString& operator = (const TTString& aTTString);
	TTString& operator = (const std::string& aStdString);

	///////////////
	// Iterators //
	///////////////

	TTStringIter begin() { return mString; };
	TTStringIter end() { return mString + mSize; };

	//////////////
	// Capacity //
	//////////////

	/** Find out the length of a string.  */
	size_t size() const;

	/** Find out the length of a string.  */
	size_t length() const;

	/** TODO : Return maximum size of string.  */
	//size_t max_size() const;

	/** Allocate  memory for the string. */
	void resize(size_t newSize);

	/** TODO : Return size of allocated storage. */
	//size_t capacity();

	/** TODO : Request a change in capacity */
	//size_t reserve(size_t n = 0);

	/** Clear string. */
	void clear();

	/** Test if string is empty. */
	bool empty();

	// because when size() == 0 there is still a char (null terminator) in the vector, we have to override this
	/** Test if string is empty. */
	bool empty() const;

	/** TODO : Shrink to fit. */
	//void shrink_to_fit();

	////////////////////
	// Element access //
	////////////////////

	// This avoids a warning in GCC 4.7 about ambiguity between using an int vs. a size_t where
	// the int could also be considered an index into a char array
	/** Get character of string. */
	char& operator[] (const int index);

	/** Get character in string */
	char& at(size_t index) const;

	///////////////
	// Modifiers //
	///////////////

	/** Append to string operator. */
	TTString& operator += (const char *aCString);

	/** Append to string operator. */
	TTString& operator += (TTString& aTTString);

	/** Append to string operator. */
	template<class T>
	TTString& operator += (const T& arg)
	{
		append(arg);
		return (*this);
	}

	/** Append to string operator. */
	TTString operator + (const char* arg);

	/** Append to string */
	TTString& append(const char *aCString, size_t length = 0);
	TTString& append(const char aChar);
	TTString& append(TTString aTTString);
	TTString& append(int anInt);
	TTString& append(unsigned int aUInt);
	TTString& append(float aFloat);
	TTString& append(double aDouble);

	/** TODO : Append character to string */
	//TTString& push_back(const char aChar);

	/** TODO : Assign content to string */
	//TTString& assign(const TTString& aTTString);

	/** TODO : Insert into string */
	//TTString& insert(size_t pos, const aTTString& str);

	/** TODO : Erase characters from string */
	//TTString& erase(size_t pos = 0, size_t len = npos);

	/** TODO : Replace portion of string */
	//TTString& replace(size_t pos, size_t len, const aTTString& str);

	/** TODO : Swap string values */
	//void swap (aTTString& str);

	/** TODO : Delete last character */
	//TTString& pop_back();

	////////////////////////
	// Strings operations //
	////////////////////////

	/** Return a pointer to the internal C-string */
	const char* c_str() const;

	/** Return a pointer to the internal C-string */
	const char* data();

	/** Return the index of the first instance of a specified char in the string.
	@param	aChar	The char for which to search
	@param	from	A position in the string from which to begin the search.  By default it starts at the beginning (0)
	*/
	size_t find_first_of(const char aChar, size_t from = 0);

	/** Return the index of the last instance of a specified char in the string.
	@param	aChar	The char for which to search
	*/
	size_t find_last_of(const char aChar);

	/** Returns a string object with its contents initialized to a substring of the current object.
	@param pos	Position of a character in the current string object to be used as starting character for the substring.
	@param n 	Length of the substring.
	*/
	TTString substr(size_t pos = 0, size_t n = 1) const;

	/** Comparison operator. */
	bool operator == (const char *aCString) const;

	/** Comparison operator. */
	bool operator == (TTString aTTString) const;

	/** Comparison operator. */
	bool operator != (const char *aCString) const;

	/** Comparison operator. */
	bool operator != (TTString aTTString) const;
	
	/** Cast to a C-string. */
	operator const char*() const
	{
		return mString;
	}
	
	// NOTE: we do not export TTString because it is defined in a header as a subclass of a stl template
	// but we do want to export this method, which is not defined inline so that we don't pick up a direct
	// dependency on Mersenne Twister
	/** Replace contents with a pseudo-random string. */
	void random();
	
//	TTBoolean toTTInt32( const TTString & str, TTInt32 & convertedInt )
	TTBoolean toTTInt32(TTInt32& convertedInt) const;
    
    //	TTBoolean toTTUInt32( const TTString & str, TTInt32 & convertedUInt )
	TTBoolean toTTUInt32(TTUInt32& convertedUInt) const;
	
	/*	note : isTTFloat32 works only because the TTInt32 case is matched before
	 see in TTValue::fromString method
	 */
//	TTBoolean toTTFloat32( const TTString & str, TTFloat32 & convertedFloat )
	TTBoolean toTTFloat32(TTFloat32& convertedFloat) const;

};



/** Expose TTString for use in std output streams. */
template <class charT, class traits>
std::basic_ostream <charT, traits>& operator<< (std::basic_ostream <charT, traits>& stream, const TTString& aString)
{
	return stream << aString.c_str();
}


// Only providing this for use in the Foundation itself at the moment
// (on OS 10.8 with Xcode 4.4 and compiling with clang for the Ruby extension, this code cause compile problems)
#ifdef TTFOUNDATION_EXPORTS

	
/** Provide overload of std::hash so that TTString can be used the same as std::string for std::map et al. */

#if defined( __clang__ )

// GCC and Clang provide different (cryptic) ways of adding custom types to the c++ hashing classes
// The GCC version is based on code from StackOverflow
// The Clang version is based on the code for std::string from libc ( on the mac these are installed @ /usr/lib/c++/v1/ )

#include <functional>
namespace std
{
	
	template <>
	//struct hash<TTString> : public __hash_base<size_t, TTString>
	struct hash<TTString> //: public __hash_node<size_t, TTString>
	{
		public:
#if defined( TT_PLATFORM_LINUX )
		size_t operator()(const TTString& __val) const
{
TTLogError("uh oh -- this functions doesn't work compiled with clang on ubuntu!");
}
#else
		size_t operator()(const TTString& __val) const _NOEXCEPT
		{
			return __do_string_hash(__val.data(), __val.data() + __val.size());
		}
#endif
	};
}

#elif defined( TT_PLATFORM_WIN )
//namespace std 
//{
//    namespace tr1 
//    { 
//        template <> 
//        struct hash<TTString> : public unary_function<TTString, size_t>
//        { 
//			public:
//				size_t operator()(const TTString& self) const
//				{
//					size_t hashkey = std::hash(self.c_str(), self.size());
//					cout << "HASH: " << self.c_str() << " with size: " << self.size() << " = " << hashkey << endl;
//					return hashkey;
//				}
//			};
//    } 
//}
namespace std
{
	template <> 
	struct hash<TTString>
	{ 
	public:
		size_t operator()(const TTString& self) const
		{
			size_t hashkey = std::hash<std::string>()(self.c_str());
			cout << "HASH: " << self.c_str() << " with size: " << self.size() << " = " << hashkey << endl;
			return hashkey;
		}
	};
}

#else // gcc 4.7

namespace std
{
	template <>
	struct hash<TTString>
	{
		public:
		
			size_t operator()(const TTString& self) const
			{
				size_t hashkey = std::_Hash_impl::hash(self.data(), self.size());
				//cout << "HASH: " << self.data() << " with size: " << self.size() << " = " << hashkey << endl;
				return hashkey;
			}
	
	};
}

#endif // ifdef clang etc...

#endif // TTFOUNDATION_EXPORTS



#endif // __TT_STRING_H__
