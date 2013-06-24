/** @file
 *
 * @ingroup dspSoundFileLib
 *
 * @brief Tests for the #TTSoundfile class
 *
 * @details Tests the core functions of the TTSoundfile class in order to ensure that things are working after a build. It also demostrate how to make calls to common methods within the class.@n 
 * IMPORTANT NOTE: Because POSIX filepaths will be specific to your system, it is important to change the TESTFILE definitions in this file to match a local absolute address. The related TEST definitions should also be set to match the attribution of the file which can be obtained via your sound file editor of choice. 
 *
 * @authors Nathan Wolek
 *
 * @copyright Copyright © 2013 by Nathan Wolek @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTSoundfile.h"
#include "TTUnitTest.h"

/* 
 #define TESTFILE "/Users/nathanwolek/Desktop/geese_clip.aif"
 #define TESTNUMCHANNELS 2
 #define TESTSAMPLERATE 44100
 #define TESTDURATIONINSAMPLES 88202
 #define TESTDURATIONINSECONDS 2.00004535
 #define TESTTITLE ""
 #define TESTARTIST ""
 #define TESTDATE ""
 #define TESTANNOTATION ""
 */

/* */
 #define TESTFILE "/Volumes/Storage/Audio/200604femf15/pitched/ding_b2.aiff"
#define TESTNUMCHANNELS 1
#define TESTSAMPLERATE 44100
#define TESTDURATIONINSAMPLES 39493
#define TESTDURATIONINSECONDS 0.89553288
#define TESTTITLE ""
#define TESTARTIST ""
#define TESTDATE ""
#define TESTANNOTATION ""
/* */

/*
 #define TESTFILE "/Volumes/Storage/Audio/200604femf15/ambience/street.aiff"
 #define TESTNUMCHANNELS 1
 #define TESTSAMPLERATE 44100
 #define TESTDURATIONINSAMPLES 4750848
 #define TESTDURATIONINSECONDS 107.728980
 #define TESTTITLE "UF Street"
 #define TESTARTIST "MPG"
 #define TESTDATE "2006"
 #define TESTANNOTATION ""
 */

TTErr TTSoundfile::test(TTValue& returnedTestInfo)
{
    int errorCount = 0;
    int testAssertionCount = 0;
    
    {
        
        
		TTTestLog("\n");
		TTTestLog("Testing TTSoundfile Basics...");
		
		TTSoundfilePtr soundfile = NULL;
		TTErr err;
		
        // TEST 0: instantiate the object to a pointer
        TTBoolean result0 = { TTObjectBaseInstantiate("soundfile", (TTObjectBasePtr*)&soundfile, kTTValNONE) == kTTErrNone};
        
		TTTestAssertion("instantiates successfully",
						result0,
						testAssertionCount,
						errorCount);
        
        // TEST 1: set the filepath
        TTBoolean result1 = { soundfile->setFilePath(TT(TESTFILE)) == kTTErrNone };
        
        TTTestAssertion("setFilePath operates successfully",
                        result1,
                        testAssertionCount,
                        errorCount);
        
        // TEST 2: reports correct number of channels
        TTRowID return2 = soundfile->getNumChannels();
        TTBoolean result2 = { return2 == TESTNUMCHANNELS };
        
        TTTestAssertion("reports the correct number of channels",
                        result2,
                        testAssertionCount,
                        errorCount);
        
        if(!result2)
        {
            TTTestLog("Expected a value of %i, but returned value was %i", TESTNUMCHANNELS, return2);
        }
        
        // TEST 3: reports correct sample rate
        TTFloat64 return3 = soundfile->getSampleRate();
        TTBoolean result3 = TTTestFloatEquivalence(return3, TESTSAMPLERATE, true, 0.0000001);
        
        TTTestAssertion("reports the correct sample rate",
                        result3,
                        testAssertionCount,
                        errorCount);
        
        if(!result3)
        {
            TTTestLog("Expected a value of %f, but returned value was %f", TESTSAMPLERATE, return3);
        }
        
        // TEST 4: reports correct duration in samples
        TTColumnID return4 = soundfile->getLengthInSamples();
        TTBoolean result4 = { return4 == TESTDURATIONINSAMPLES };
        
        TTTestAssertion("reports the correct duration in samples",
                        result4,
                        testAssertionCount,
                        errorCount);
        
        if(!result4)
        {
            TTTestLog("Expected a value of %i, but returned value was %i", TESTDURATIONINSAMPLES, return4);
        }
        
        // TEST 5: reports correct duration in seconds
        TTFloat64 return5 = soundfile->getLengthInSeconds();
        TTBoolean result5 = TTTestFloatEquivalence(return5, TESTDURATIONINSECONDS, true, 0.0000001);
        
        TTTestAssertion("reports the correct duration in seconds",
                        result5,
                        testAssertionCount,
                        errorCount);
        
        if(!result5)
        {
            TTTestLog("Expected a value of %f, but returned value was %f", TESTDURATIONINSECONDS, return5);
        }
        
        TTTestLog("\n");
		TTTestLog("Testing TTSoundfile Metadata...");
        
        // TEST 6: reports correct title from metadata
        TTSymbol return6 = soundfile->getTitle();
        
        TTTestLog("Expected metadata title:");
        TTTestLog(TESTTITLE);
        TTTestLog("Returned metadata title:");
        TTTestLog(return6.c_str());
        
        // TEST 7: reports correct artist from metadata
        TTSymbol return7 = soundfile->getArtist();
        
        TTTestLog("Expected metadata artist:");
        TTTestLog(TESTARTIST);
        TTTestLog("Returned metadata artist:");
        TTTestLog(return7.c_str());
        
        // TEST 8: reports correct title from metadata
        TTSymbol return8 = soundfile->getDate();
        
        TTTestLog("Expected metadata date:");
        TTTestLog(TESTDATE);
        TTTestLog("Returned metadata date:");
        TTTestLog(return8.c_str());
        
        // TEST 9: reports correct artist from metadata
        TTSymbol return9 = soundfile->getAnnotation();
        
        TTTestLog("Expected metadata comment:");
        TTTestLog(TESTANNOTATION);
        TTTestLog("Returned metadata comment:");
        TTTestLog(return9.c_str());
        
        TTTestLog("\n");
		TTTestLog("Testing peek method on first 10 sample values...");
        
        TTSampleValue return10;
        TTErr error10;
        
        for (int channel=0;channel<return2;channel++)
        {
            TTTestLog("Channel %i", channel);
            for (int sample=0;sample<10;sample++)
            {
                error10 = soundfile->peek(sample,channel,return10);
                if (error10 == kTTErrNone)
                {
                    TTTestLog("peek sample %i returned the value %f", sample, return10);
                } else {
                    TTTestLog("peek returned an error for sample %i", sample);
                }
            }
        }
        
        
    }
    
    return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
