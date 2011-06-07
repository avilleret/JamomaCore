/* 
 * TTNodeDirectory
 * Copyright © 2008, Théo de la Hogue & Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_NODE_DIRECTORY_H__
#define __TT_NODE_DIRECTORY_H__

#ifdef WIN_VERSION
 #pragma warning(disable:4083) //warning C4083: expected 'newline'; found identifier 's'
#endif // WIN_VERSION

#include "TTNode.h"
#include "TTNodeAddress.h"
#include "TTNodeAddressTable.h"
#include "TTObject.h"
#include "TTSymbol.h"
#include "TTValue.h"
#include "TTHash.h"
#include "TTList.h"
#include "TTMutex.h"

class TTNode;
typedef TTNode*	TTNodePtr;
class TTNodeAddress;
typedef TTNodeAddress* TTNodeAddressPtr;
class TTNodeDirectory;
typedef TTNodeDirectory* TTNodeDirectoryPtr;
class TTCallback;
typedef TTCallback* TTCallbackPtr;


/****************************************************************************************************/
// Class Specifications

/**
	We build a tree of TTNodes, and you can request a pointer for any TTNode, or add an observer to any TTNode, etc.
	
	Every time we create a TTNode (or a string passed to something somewhere?) then this gets added to the tree.  
	If a TTNode is specified, such as /degrade~/audio/mute, 
	and we assume degrade~ has been added to the tree but 'audio' hasn't, then 'audio' is added followed by adding 'mute', 
	so that the tree is properly completed.
	
	When a TTNode is requested, the tree is traversed to find the pointer for the TTNode.  
	After the traversal (assuming no wildcards) the pointer is returned and also stored 
	in a hash table so that future requests for that TTNode are faster.
	
	The case of wildcards is handled, because a request is cached (keyed on the request),
	and the value is a linked list of all of the matches.
	
*/

class TTFOUNDATION_EXPORT TTNodeDirectory : public TTBase
{
	
private:

	TTSymbolPtr		name;					///< the name of the tree
	TTNodePtr		root;					///< the root of the tree
	TTHashPtr		directory;				///< a pointer to a global hashtab which reference all osc address of the tree
	TTHashPtr		observers;				///< a pointer to a hashtab which register all life cycle observers below that node
											///< (address/relative/to/this/node, TTList of all observers below that address)
	TTMutexPtr		mutex;					///< a Mutex to protect the mObservers hash table.
	
public:
	
	/** Constructor */
	TTNodeDirectory (TTSymbolPtr aName);
	
	/** Destructor */
	virtual ~TTNodeDirectory ();

	/** Set the name of the TTNodeDirectory. 
		@param	newName				The name to set */
	TTErr			setName(TTSymbolPtr aname);

	/** Get the name of the TTNodeDirectory */
	TTSymbolPtr		getName();
	
	/** Get the root of the TTNodeDirectory */
	TTNodePtr		getRoot();
	
	/** Get the directory of the TTNodeDirectory */
	TTHashPtr		getDirectory();

	/**	Given a string with an OSC address, return a pointer to a TTNode.
	 @param	anAddress				The address string for which to find the TTNode.
	 @param	returnedTTNode			The .
	 @return						An error code. */
	TTErr			getTTNode(const char* anAddress, TTNodePtr *returnedTTNode);
	
	TTErr			getTTNode(TTNodeAddressPtr anAddress, TTNodePtr *returnedTTNode);
	
	/**	Find TTNodes by address
	 @param	anAddress				The address you wish to find, possibly including wildcards and instance names/numbers.
	 @param	returnedTTNodes			If non-null, a pointer will be set to the linked-list of TTNodes at the given OSC address pattern.
	 @param	firstReturnedTTNode		If non-null, the address of the first TTNode object pointer that is found for the given pattern is returned here.  
									The value of the pointer will be set upon return.
	 @return						An error code. */
	TTErr			Lookup(TTNodeAddressPtr anAddress, TTList& returnedTTNodes, TTNodePtr *firstReturnedTTNode);
	
	/**	Find TTNodes by testing each TTNodes below an address 
	 @param	whereToSearch			A TTNode list from where to start the research
	 @param testFunction			the test function have to take a TTNode as first argument, and a pointer to something as second argument (a structure for example) 
									it have to return a boolean (true means that the node is ok).
	 @param argument				argument for the testFunction
	 @param	returnedTTNodes			If non-null, a pointer will be set to the linked-list of TTNodes at the given OSC address pattern.
	 @param	firstReturnedTTNode		If non-null, the address of the first TTNode object pointer that is found for the given pattern is returned here.
									The value of the pointer will be set upon return.
	 @return						An error code. */
	TTErr			LookFor(TTListPtr whereToSearch, TTBoolean(testFunction)(TTNodePtr node, TTPtr args), void *argument, TTList& returnedTTNodes, TTNodePtr *firstReturnedTTNode);
	
	/**	Is there is one TTNode or more that respect a test below an address 
	 @param	whereToSearch			A TTNode list from where to start the research
	 @param testFunction			the test function have to take a TTNode as first argument, and a pointer to something as second argument (a structure for example) 
	 it have to return a boolean (true means that the node is ok).
	 @param argument				argument for the testFunction.
	 @param	isThere					a pointer will be set to true if there is one node that respect the testFunction.
	 @param	firstReturnedTTNode		If non-null, the address of the first TTNode object pointer that is found for the given pattern is returned here.
									The value of the pointer will be set upon return.
	 @return						An error code. */
	TTErr			IsThere(TTListPtr whereToSearch, bool(testFunction)(TTNodePtr node, void*args), void *argument, bool *isThere, TTNodePtr *firstTTNode);
	
	/**	Create a new TTNode, at the given location in the tree.
	 @param	anAddress				The address for which you wish to create a TTNode.
									The address may (optionally) include an instance name or number in the address of the terminal TTNode.
									If you specify an instance name/number that already exists, then returnedTTNode will be a pointer to
									the already existing TTNode upon return and no new TTNode will be created.
									If you do not specify an instance name/number, then one will be generated for you automatically.
	 @param	newObject				The object, if applicable, that is represented by this TTNode.
	 @param aContext				The context in which the object is.
	 @param	returnedTTNode			A pointer to the TTNode at the given address 
	 @param	nodeCreated				A boolean : true if a TTNode have been created, else false
	 @return						An error code. */
	TTErr			TTNodeCreate(TTNodeAddressPtr anAddress, TTObjectPtr newObject, void *aContext, TTNodePtr *returnedTTNode, TTBoolean *nodeCreated);
	
	/**	Remove a TTNodefrom the directory.
	 @param	anAddress				The address for which you wish to remove the TTNode.
									The address may (optionally) include an instance name or number in the address of the terminal TTNode.
	 @return						An error code. */
	TTErr			TTNodeRemove(TTNodeAddressPtr anAddress);
	
	/** Add a TTCallback as a life cycle observer of all nodes below this one
	 @param anAddress				an address to observe
	 @param observer				a TTCallbackPtr to add
	 @return						an error code */
	TTErr			addObserverForNotifications(TTNodeAddressPtr anAddress, const TTObject& anObserver);
	
	/** Remove a TTCallback as a life cycle observer of all nodes below this one
	 @param anAddress				an address
	 @param observer				a TTCallbackPtr to remove
	 @return						a kTTErrGeneric if there isn't observer */
	TTErr			removeObserverForNotifications(TTNodeAddressPtr anAddress, const TTObject& anObserver);
	
	/** Notify life cycle observers that something appends below this TTNode
	 @param data					an address where something append
	 @param aNode					a TTNodePtr where something append (NULL in case of destruction)
	 @param flag					a flag to notify about creation or destruction (or anything else)
	 @return						a kTTErrGeneric if there isn't observer	*/
	TTErr			notifyObservers(TTNodeAddressPtr anAddress, TTNodePtr aNode, TTNodeAddressNotificationFlag flag);
	
	TTErr			dumpObservers(TTValue& value);

};

/**	An test tool : test the type of the object stored inside the node. This method could be used as testFunction for the LookFor or IsThere methods.
 @param	node						A node
 @param args						An TTSymbolPtr argument for the type
 @return							true if the object have the correct type */
TTBoolean TTFOUNDATION_EXPORT testNodeObjectType(TTNodePtr n, TTPtr args);

/**	An test tool : test the context of the object stored inside the node. This method could be used as testFunction for the LookFor or IsThere methods.
 @param	node						A node
 @param args						An TTSymbolPtr argument for the type
 @return							true if the object have the correct context */
TTBoolean TTFOUNDATION_EXPORT testNodeContext(TTNodePtr n, TTPtr args);

/**	An test tool : test a node using a TTCallback. This method could be used as testFunction for the LookFor or IsThere methods.
 @param	node						A node
 @param args						A TTCallback argument
 @return							true if the TTCallback argument is replaced by kTTVal1 */
TTBoolean TTFOUNDATION_EXPORT testNodeUsingCallback(TTNodePtr n, TTPtr args);

/**	An test tool : test a node using a Criteria table.
	a Criteria table is a hash table of hash table containing <ObjectType, <AttributeName, Value>>
		- if the Attribute hash table is empty this means any object of the given type matches the test.
		- if a value is KTTValNone this means any value matches the test.
	This method could be used as testFunction for the LookFor or IsThere methods.
 @param	node						A node
 @param args						A TTHashPtr argument
 @return							true if the TTObject of thenode matches all criterias */
TTBoolean TTFOUNDATION_EXPORT testNodeUsingCriteria(TTNodePtr n, TTPtr args);

#endif // __TT_NODE_DIRECTORY_H__
