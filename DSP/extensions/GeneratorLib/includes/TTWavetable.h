/** @file
 *
 * @ingroup dspGeneratorLib
 *
 * @brief GeneratorLib: Generate a basic, cycling waveform using a wavetable.
 *
 * @details Wavetable is currently limited to using an internal buffer for managing its waveshape.  Shape options include sine, triangle and sawtooth.
 *
 * @see TTBuffer, TTSampleMatrix, TTMatrix, TTAudioSignal
 *
 * @authors Tim Place, Nathan Wolek
 *
 * @copyright Copyright © 2003-2013 by Timothy Place & Nathan Wolek @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_WAVETABLE_H__
#define __TT_WAVETABLE_H__


#include "TTDSP.h"
#include "TTBuffer.h"


/**	TTWavetable is a table-lookup oscillator. The wavetable is implemented as a TTBuffer. */ 
class TTWavetable : TTAudioObjectBase {
	TTCLASS_SETUP(TTWavetable)

protected:

	TTSymbol			mMode;
	TTFloat64			mFrequency;
	TTFloat64			mGain;
	TTFloat64			mLinearGain;
	TTSymbol			mInterpolation;	///< should be none, linear, or eventually something better...
	TTUInt32			mSize;			///< how many samples in the wave table
	TTFloat64			mIndex;
	TTFloat64			mIndexDelta;
	TTAudioBuffer		mInternalBuffer;
	TTSampleMatrixPtr	mWavetable;
	
	/**	This method gets called when the inherited sample-rate attribute is changed. */
	TTErr updateSampleRate(const TTValue&, TTValue&);
	
	/**	Process method 	*/
	TTErr processAsLFO(TTAudioSignalArrayPtr, TTAudioSignalArrayPtr outputs);

	/**	Process method 	*/
	TTErr processWithNoInterpolation(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	/**	Process method 	*/
	TTErr processWithLinearInterpolation(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	/**	Setter for the mode attribute. 
	 This is a symbol that names the waveform that fills the buffer.
	 If the symbol is the string "externalBuffer", then a second symbol names the buffer to use in the buffer hash.  */
	TTErr setMode(const TTValue& value);
	
	/**	Setter for the frequency attribute in Hz. */
	TTErr setFrequency(const TTValue& value);
	
	/**	Setter for the gain attribute in dB. */
	TTErr setGain(const TTValue& value);
	
	/**	Setter for the interpolation attribute. 
		This determines the process method that is used.  */
	TTErr setInterpolation(const TTValue& value);
	
	/**	Setter for the size attribute.  Size is set as the number of samples in the table.  */
	TTErr setSize(const TTValue& newSize);
};


#endif // __TT_WAVETABLE_H__
