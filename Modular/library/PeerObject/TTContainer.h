/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief A Container object
 *
 * @details
 *
 * @authors Théo de la Hogue
 *
 * @copyright © 2010, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TT_CONTAINER_H__
#define __TT_CONTAINER_H__

#include "TTModular.h"

/** TTContainer ... TODO : an explanation
	In Max j.view and j.model are based on this class.
 
 */

class TTMODULAR_EXPORT TTContainer : public TTDataObjectBase
{
	TTCLASS_SETUP(TTContainer)
	
private:

	TTUInt8				mPriority;						///< ATTRIBUTE : does this container have a priority over other containers ?
	TTSymbol			mDescription;					///< ATTRIBUTE : a text label to describe the role of this container
    TTSymbol			mService;                       ///< ATTRIBUTE : a symbol used to type the container (this is mainly for Max to say if it is a view or a model)
	TTValue				mTag;							///< ATTRIBUTE : tag list for this container
	TTBoolean			mInitialized;					///< ATTRIBUTE : is it initialized ?
	TTAddress           mAddress;						///< ATTRIBUTE : the address of the container in the directory
	TTAddress           mAlias;							///< ATTRIBUTE : an alias address to retrieve the container using another address
	TTValue				mActivity;                      ///< ATTRIBUTE : a local value to allow observation of outputing data
    TTValue             mContent;                       ///< ATTRIBUTE : a local value to allow observation of all address handled by the container
	TTCallbackPtr		mReturnAddressCallback;			///< a way to return back address to the owner of this container
	TTCallbackPtr		mReturnValueCallback;			///< a way to return back value to the owner of this container
	TTHashPtr			mObjectsObserversCache;			///< a hash table containing all <relativeAddress : Objects, ValueObserver, InitializedObserver> for quick access
	TTCallbackPtr		mObserver;						///< a life cycle observer
	TTBoolean			mIsSending;						///< a flag to lock the object in case of infinite loop
    
    TTAttributePtr      activityAttribute;              ///< cache activity attribute for observer notification
    TTAttributePtr      contentAttribute;               ///< cache content attribute for observer notification
	
	/** */
	TTErr Send(TTValue& AddressAndValue, TTValue& outputValue);
	
	/** */
	TTErr Init();
    TTErr initNode(TTNodePtr aNode);
	
	/** */
	TTErr AliasRemove();
	
	/**  needed to be handled by a TTTextHandler */
	TTErr WriteAsText(const TTValue& inputValue, TTValue& outputValue);
	
	/** */
	TTErr setAddress(const TTValue& value);
	
	/** */
	TTErr setAlias(const TTValue& value);
	
	/**	Setter for mTag attribute. */
	TTErr setTag(const TTValue& value);
	
	/**	Setter for mPriority attribute. */
	TTErr setPriority(const TTValue& value);
	
	/** */
	TTErr bind();
	
	/** */
	TTErr unbind();
	
	/** cacheElement contains all info needed to handle all objects registered below this container in the directory 
		< object, observer1, observer2, node > */
	TTErr makeCacheElement(TTNodePtr aNode);
	TTErr deleteCacheElement(TTNodePtr aNode);
    TTErr updateContent();
	
	/** Generates table heading for Datas */
	void dataHeading(TTString *buffer);
	
	/** CSS definitions -- we include them in the html file itself so that we don't have problems with paths to external references */
	void cssDefinition(TTString *buffer);
	
	
	friend TTErr TTMODULAR_EXPORT TTContainerDirectoryCallback(TTPtr baton, TTValue& data);
	friend TTErr TTMODULAR_EXPORT TTContainerValueAttributeCallback(TTPtr baton, TTValue& data);
};

typedef TTContainer* TTContainerPtr;

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTContainerDirectoryCallback(TTPtr baton, TTValue& data);

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTContainerValueAttributeCallback(TTPtr baton, TTValue& data);

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTContainerInitializedAttributeCallback(TTPtr baton, TTValue& data);

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTBoolean TTMODULAR_EXPORT TTContainerTestObjectAndContext(TTNodePtr n, TTPtr args);

/** compare priority attribute of object's
 @param	v1							< relativeAddress, a pointer to a value containing a pointer to a TTObjectBase >
 @param	v2							< relativeAddress, a pointer to a value containing a pointer to a TTObjectBase >
 @return							is the priority of v1 is smaller than v2 (except if equal 0) ? */ 
TTBoolean TTMODULAR_EXPORT	TTContainerCompareObjectPriority(TTValue& v1, TTValue& v2);


#endif // __TT_CONTAINER_H__
