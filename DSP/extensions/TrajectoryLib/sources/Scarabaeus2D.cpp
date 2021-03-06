/** @file
 *
 * @ingroup dspTrajectoryLib
 *
 * @brief Scarabaeus Function Unit for Jamoma DSP
 *
 * @details see http://mathworld.wolfram.com/Scarabaeus.html for details @n
 * 
 * @authors Nils Peters
 *
 * @copyright Copyright © 2011 by Nils Peters @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "Scarabaeus2D.h"


#define thisTTClass			Scarabaeus2D
#define thisTTClassName		"scarabaeus.2D"
#define thisTTClassTags		"audio, trajectory, 2D"


TT_AUDIO_CONSTRUCTOR
{   addAttribute(A,				kTypeFloat64);
	addAttribute(B,				kTypeFloat64);

	
	setAttributeValue(TT("a"),	0.6);
	setAttributeValue(TT("b"),	0.4);

	
	setProcessMethod(processAudio);
//	setCalculateMethod(calculateValue);
}


Scarabaeus2D::~Scarabaeus2D()
{
	;
}

//TTErr Scarabaeus2D::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
//{
//	y = x;
//	return kTTErrNone;
//}


TTErr Scarabaeus2D::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&		out = outputs->getSignal(0);
	TTUInt16			numOutputChannels = out.getNumChannelsAsInt();
	
	if (numOutputChannels != 2) {
		TTValue v = 2;		
		out.setMaxNumChannels(v);
		out.setNumChannels(v);		
	}
	
	TTAudioSignal&		in0 = inputs->getSignal(0);
	TTUInt16			 vs = in0.getVectorSizeAsInt();
	
	TTSampleValuePtr	inSampleX			= in0.mSampleVectors[0];
	TTSampleValuePtr	outSampleX    		= out.mSampleVectors[0];
	TTSampleValuePtr	outSampleY			= out.mSampleVectors[1];
    TTFloat64 phi, r;
	
	for (int i=0; i<vs; i++) {	
		
		phi = inSampleX[i] * kTTPi; // 0 .. 2Pi
		r = mB * cos(2*phi) - mA * cos(phi); 
		
		outSampleX[i] = sin(phi) * r;
		outSampleY[i] = cos(phi) * r;

	}
return kTTErrNone;
}
