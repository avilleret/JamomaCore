/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief TTNodeInfo provides priority, tag and description for a node.
 *
 * @details ...
 *
 * @authors Théo de la Hogue
 *
 * @copyright © 2014, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTNodeInfo.h"

#define thisTTClass			TTNodeInfo
#define thisTTClassName		"NodeInfo"
#define thisTTClassTags		"node info"

TT_MODULAR_CONSTRUCTOR,
mTag(TTValue(kTTSym_none)),
mPriority(0),
mDescription(kTTSym_none)
{
	TT_ASSERT("Correct number of args to create TTNodeInfo", arguments.size() == 0);
	
	addAttributeWithSetter(Tag, kTypeLocalValue);
	addAttributeWithSetter(Priority, kTypeInt32);
	addAttributeWithSetter(Description, kTypeSymbol);
}

TTNodeInfo::~TTNodeInfo()
{
    ;
}

TTErr TTNodeInfo::setDescription(const TTValue& value)
{
    TTValue n = value;				// use new value to protect the attribute
    mDescription = value;
    
    this->notifyObservers(kTTSym_description, n);
	return kTTErrNone;
}

TTErr TTNodeInfo::setPriority(const TTValue& value)
{
    TTValue n = value;				// use new value to protect the attribute
    mPriority = value;
    
    this->notifyObservers(kTTSym_priority, n);
	return kTTErrNone;
}

TTErr TTNodeInfo::setTag(const TTValue& value)
{
	TTValue n = value;				// use new value to protect the attribute
	mTag = value;
	this->notifyObservers(kTTSym_tag, n);
	return kTTErrNone;
}

TTErr TTNodeInfo::notifyObservers(TTSymbol attrName, const TTValue& value)
{
	TTAttributePtr	anAttribute = NULL;
	TTErr			err;
	
	err = this->findAttribute(attrName, &anAttribute);
	
	if (!err)
		anAttribute->sendNotification(kTTSym_notify, value);	// we use kTTSym_notify because we know that observers are TTCallback
	
	return kTTErrNone;
}