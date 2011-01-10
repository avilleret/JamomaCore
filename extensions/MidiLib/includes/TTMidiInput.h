/* 
 * Midi Input Object
 * Copyright © 2011, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_MIDIINPUT_H__
#define __TT_MIDIINPUT_H__

#include "TTDSP.h"
#include "portmidi.h"


/**	TTMidiInput receives MIDI input from an external device.  
	It is a wrapper around the PortMidi library. 
 */

class TTMidiInput : TTObject {
	TTCLASS_SETUP(TTMidiInput)

public:
	
	TTSymbolPtr			mDevice;			///< attr: selected device name
	const PmDeviceInfo*	mDeviceInfo;		///< selected device info struct
	PmDeviceID			mID;				///< selected device ID number
	PortMidiStream*		mStream;			///< a descriptor for a MIDI device that is opened when the device is set
	TTThreadPtr			mPollingThread;		///< our loop that constantly polls for new input
	TTBoolean			mRunning;			///< should the thread be running?  If NO then the thread will know to abort itself
	TTListPtr			mCallbackObservers;
	
	
	TTErr addCallbackObserver(const TTValue& objectToReceiveNotifications);
	TTErr removeCallbackObserver(const TTValue& objectCurrentlyReceivingNotifications);

	TTErr getAvailableDeviceNames(TTValue& returnedDeviceNames);


	// Attribute Accessors
	TTErr setDevice(TTValue& newDeviceName);
};


#endif // __TT_MIDIINPUT_H__
