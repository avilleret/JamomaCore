/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief A Data Object
 *
 * @details Establishes a control point, which is to say a TTNode that is dramaticly expanded, for a model to get/set its state.
 *
 * @authors Théo de la Hogue
 *
 * @copyright © 2010, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TT_DATA_H__
#define __TT_DATA_H__

#include "TTModular.h"

/**	TTData establishes a control point, which is to say a TTNode that is dramaticly expanded, for a model to get/set its state.
 @details In Max the jcom.parameter, jcom.message and jcom.return externals are based on TTData
 */
class TTMODULAR_EXPORT TTData : public TTDataObjectBase
{
	TTCLASS_SETUP(TTData)
	
private:
	
	TTValue			mValue;						///< ATTRIBUTE: data's value
	TTValue			mValueDefault;				///< ATTRIBUTE: data's default value
	TTValue			mValueStepsize;				///< ATTRIBUTE: amount to increment or decrement by
	
	TTSymbol		mType;						///< ATTRIBUTE: type of this data's value
	TTValue			mTag;						///< ATTRIBUTE: tag list for this data
	TTInt32			mPriority;					///< ATTRIBUTE: does this data have a priority over other datas ?
	TTSymbol		mDescription;				///< ATTRIBUTE: text to describe the role of this data
	TTBoolean		mRepetitionsFilter;			///< ATTRIBUTE: is repetitions are filtered out ?
	TTBoolean		mActive;					///< ATTRIBUTE: this used by return only to stop sending values
	TTBoolean		mInitialized;				///< ATTRIBUTE: is the Value attribute has been initialized ?
	
	TTValue			mRangeBounds;				///< ATTRIBUTE: 
	TTSymbol		mRangeClipmode;				///< ATTRIBUTE: 
	
	TTBoolean		mDynamicInstances;			///< ATTRIBUTE: is the data can be dynamically instanciated
	TTValue			mInstanceBounds;			///< ATTRIBUTE: two TTValues for a range of dynamic instances (-1 = infini)

	TTSymbol		mRampDrive;					///< ATTRIBUTE: ramp mode
#ifndef TT_NO_DSP    
	TTSymbol		mRampFunction;				///< ATTRIBUTE: for setting the function used by the ramping
#endif
	TTValue			mRampFunctionParameters;	///< ATTRIBUTE: names of parameter's function
	TTBoolean		mRampStatus;				///< ATTRIBUTE: is the ramp running ?
	
	TTSymbol		mDataspace;					///< ATTRIBUTE: The dataspace that this data uses (default is 'none')
	TTSymbol		mDataspaceUnit;				///< ATTRIBUTE: The unit within the dataspace.
	TTObjectBasePtr	mDataspaceConverter;		///< Performs conversions from input unit to the data unit
	
	TTSymbol		mService;					///< how the data flows into our environnement :
												///<	as parameter : the data is in full access mode
												///<	as message : the data don't notify observers it's changing but the value is still returned to his owner
												///<	as return : the value is not returned to his owner anymore but the data notify observers it's changing
												///< Notice that in each case the value can be queried using a getAttributeValue method.
	
	TTCallbackPtr	mReturnValueCallback;		///< Callback to return back value to the owner of this data
	
	TTBoolean		mIsSending;					///< Flag to tell us if we are currently sending out our Value attribute

    TTObjectBasePtr mRamper;                    ///< Ramp object to ramp value

    TTMethodValue	commandMethod;              ///< a specific method depending on mType.
                                                ///< we need to wrap the call on specific command methods because a command can be parsed locally (so it have to be deleted after to not create memory leaks)
    
    TTAttributePtr  valueAttribute;             ///< cache value attribute for observer notification
    TTAttributePtr  initializedAttribute;       ///< cache value message for observer notification
    
    TTFloat64       externalRampTime;           ///< only usefull for external ramp drive
	
	
	/** Prepares a command to update the value of TTValue. 
	 @param[in] inputValue	A command to update the value of #TTData. The command might set value, specify a unit for it, and also request that the change happens as a ramp. If this is a single #TTDictionary, it is passed directly on to the appropriate command for the #TTData type (decimal, integer, etc..), else it is first converted to a #TTDictionary before being passed on.
	 @param[out outputValue	This is not being used.
	 @return #TTErrorNone if the method executes successfully, else an error code.
	 @see #TTDataParseCommand
	 */
    TTErr       Command(const TTValue& inputValue, TTValue& outputValue);
    
	
	TTErr       NoneCommand(const TTValue& inputValue, TTValue& outputValue);
    TTErr       GenericCommand(const TTValue& inputValue, TTValue& outputValue);
    TTErr       BooleanCommand(const TTValue& inputValue, TTValue& outputValue);
    TTErr       IntegerCommand(const TTValue& inputValue, TTValue& outputValue);
    TTErr       DecimalCommand(const TTValue& inputValue, TTValue& outputValue);
    TTErr       ArrayCommand(const TTValue& inputValue, TTValue& outputValue);
    TTErr       StringCommand(const TTValue& inputValue, TTValue& outputValue);
	
	/**	Getter and Setter for mValue attribute (Setter methods are typed) */
	TTErr       getValue(TTValue& value);
    
	TTErr       setNoneValue(const TTValue& value);
    TTErr       setBooleanValue(const TTValue& value);
    TTErr       setGenericValue(const TTValue& value);
    TTErr       setIntegerValue(const TTValue& value);
    
    /** Private method that sets the internal value attribute.
    @param[in]         The new value that the attribute is to be set to.
    @return            #TTErrorNone if the method executed successfully, elseway an error code.
    */
    TTErr       setDecimalValue(const TTValue& value);
    TTErr       setArrayValue(const TTValue& value);
    TTErr       setStringValue(const TTValue& value);
    
    /** */
	TTBoolean	checkBooleanType(const TTValue& value);
    TTBoolean	checkIntegerType(const TTValue& value);
    TTBoolean	checkDecimalType(const TTValue& value);
    TTBoolean	checkArrayType(const TTValue& value);
    TTBoolean	checkStringType(const TTValue& value);
    
    /* */
    TTBoolean	clipValue();
    
    /* */
    TTErr       returnValue();
    
    /** Initialize the value with default value */
	TTErr       NoneInit();
    TTErr       GenericInit();
    TTErr       BooleanInit();
    TTErr       IntegerInit();
    TTErr       DecimalInit();
    TTErr       ArrayInit();
    TTErr       StringInit();
    
    /** Ramper messages */
    TTErr       RampSet(const TTValue& inputValue, TTValue& outputValue);
    TTErr       RampTarget(const TTValue& inputValue, TTValue& outputValue);
    TTErr       RampGo(const TTValue& inputValue, TTValue& outputValue);
    TTErr       RampSlide(const TTValue& inputValue, TTValue& outputValue);
    
    /**	Increment mValue attribute (and ramp this incrementation)
     It depends on the command size :
     1		: 1 incrementation step
     3		: 1 incrementation step + ramp ramptime
     default	: no value or wrong value
	 */
	TTErr       Inc(const TTValue& inputValue, TTValue& outputValue);
	
	/**	Decrement mValue attribute (and ramp this decrementation)
     It depends on the command size :
     1		: 1 decrementation step
     3		: 1 decrementation step + ramp ramptime
     default	: no value or wrong value
	 */
	TTErr       Dec(const TTValue& inputValue, TTValue& outputValue);

	/**	Getter and Setter for mValueDefault attribute. */
	TTErr       getValueDefault(TTValue& value);
	TTErr       setValueDefault(const TTValue& value);
	
	/**	Setter for mValueStepsize attribute. */
	TTErr       getValueStepsize(TTValue& value);
	TTErr       setValueStepsize(const TTValue& value);
	
	/**	Setter for mType attribute. */
	TTErr       setType(const TTValue& value);
	
	/**	Setter for mTag attribute. */
	TTErr       setTag(const TTValue& value);
	
	/**	Setter for mRepetitionsFilter attribute. */
	TTErr       setRepetitionsFilter(const TTValue& value);
	
	/**	Setter for mActive attribute. */
	TTErr       setActive(const TTValue& value);
	
	/**	Setter for mRangeBounds attribute. */
	TTErr       setRangeBounds(const TTValue& value);
	
	/**	Setter for mRangeClipmode attribute. */
	TTErr       setRangeClipmode(const TTValue& value);
	
	/**	Setter for mInstanceBounds attribute. */
	TTErr       setInstanceBounds(const TTValue& value);

	/**	Setter for mRampDrive attribute. */
	TTErr       setRampDrive(const TTValue& value);
#ifndef TT_NO_DSP	
	/**	Setter for mRampFunction attribute. */
	TTErr       setRampFunction(const TTValue& value);
#endif
	/**	Setter for mDataspace attribute. */
	TTErr       setDataspace(const TTValue& value);
	
	/**	Setter for mDataspaceUnit attribute. */
	TTErr       setDataspaceUnit(const TTValue& value);
    
    /**	Setter for mDescription attribute. */
	TTErr       setDescription(const TTValue& value);
    
    /**	Setter for mPriority attribute. */
	TTErr       setPriority(const TTValue& value);
	
	/**  needed to be handled by a TTTextHandler */
	TTErr       WriteAsText(const TTValue& inputValue, TTValue& outputValue);
    
	TTErr		convertUnit(const TTValue& inputValue, TTValue& outputValue);
	TTErr		notifyObservers(TTSymbol attrName, const TTValue& value);
    
    TTErr		rampSetup();
	friend void TTMODULAR_EXPORT TTDataRampCallback(void *o, TTUInt32 n, TTFloat64 *v);
};
typedef TTData* TTDataPtr;


/** Parse command like < value (unit) (ramp ramptime) >
	@details It depends on the command size :
	- 1		: 1 value @n
	- 2		: 2 values || 1 value + unit @n
	- 3		: 3 values || 2 values + unit || 1 value + ramp ramptime @n
	- X		: X values || X-1 values + unit || X-2 values + ramp ramptime || X-3 values + unit + ramp ramptime 
 @return	A dictionary with one or more keys: It always has a value. If it is ramping, it also has a ramp key, and if it has a unit, it also has a unit key.
 */


/** Format the command to update the value of #TTData as a #TTDictionary. When updating the value we can make use of the #TTDapaspaceLib to provide new value with various measurement units, and we can set it to ramp (ease) to the new value over time making use of #TTDataRamp.
 @param[in] input		A #TTVaue containing one or more elements, taking the form of @n
	< value (unit:optional) (ramp ramptime : optional) >
	@n
	Interprtation of the command depends on the command size : @n
	@n
	@n When parsing, we check how many elements we have, and interprete as follows:
		- 1 element:	A new value @n
		- 2 elements:	An array of 2 values OR
						one value and a unit @n
		- 3 elements:	An array of 3 values OR
						a array of 2 values and a unit OR
						a single value, the "ramp" symbol and a ramp time @n
		- X elements:	An array of X values OR
						an array of X-1 values and a unit OR
						an array of X-2 values, the "ramp" symbol and a ramp time OR
						X-3 values, a unit, the "ramp" string and a ramp time.
 @param[out] outputValue	This is not being used.
 @return #TTErrorNone if the method executes successfully, else an error code.
 */
TTDictionaryBasePtr	TTMODULAR_EXPORT TTDataParseCommand(const TTValue& command);


/**
 @param	baton						..
 @param	data						..
 @return							an error code */
void TTMODULAR_EXPORT TTDataRampCallback(void *o, TTUInt32 n, TTFloat64 *v);


#endif // __TT_DATA_H__
