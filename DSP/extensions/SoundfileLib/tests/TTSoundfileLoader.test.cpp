/** @file
 *
 * @ingroup dspSoundFileLib
 *
 * @brief Tests for the #TTSoundfileLoader class
 *
 * @details Tests the core functions of the TTSoundfileLoader class in order to ensure that things are working after a build. It also demostrate how to make calls to common methods within the class.@n 
 * IMPORTANT NOTE: Because POSIX filepaths will be specific to your system, this test will attempt to find the path to the SoundfileLib extension using the TTFoundationBinaryPath environment variable. If you wish to test with a different sound file, you will need to place in that extension folder and change the relevant macros in the header of this class.
 *
 * @authors Nathan Wolek
 *
 * @copyright Copyright © 2013 by Nathan Wolek @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTSoundfileLoader.h"
#include "TTUnitTest.h"

/*
 
 It is possible to change the target sound file for this test using the macros below.
 Both sound files are included in the Jamoma respository at the following path:
 {JAMOMA_ROOT}/Core/DSP/extensions/SoundfileLib/
 
 The test should look for the named TESTFILE at this path.
 
 */

/* */
 #define TESTFILE "geese_clip.aif"
 #define TESTNUMCHANNELS 2
 #define TESTSAMPLERATE 44100
 #define TESTDURATIONINSAMPLES 88202
 #define TESTDURATIONINSECONDS 2.00004535
 #define TESTTITLE ""
 #define TESTARTIST ""
 #define TESTDATE ""
 #define TESTANNOTATION ""
/* */

/* 
#define TESTFILE "ding_b2.aiff"
#define TESTNUMCHANNELS 1
#define TESTSAMPLERATE 44100
#define TESTDURATIONINSAMPLES 39493
#define TESTDURATIONINSECONDS 0.89553288
#define TESTTITLE ""
#define TESTARTIST ""
#define TESTDATE ""
#define TESTANNOTATION ""
 */

TTErr TTSoundfileLoader::test(TTValue& returnedTestInfo)
{
    int errorCount = 0;
    int testAssertionCount = 0;
    
    // assemble the full path of the target sound file
    
    TTString testSoundPath = TTFoundationBinaryPath;
    int pos = testSoundPath.find_last_of('/');
    testSoundPath = testSoundPath.substr(0,pos+1);
    testSoundPath += TESTFILE;
    
    std::cout << "We will be using the following path for testing: " << testSoundPath << "\n";
    
    try {
        
		TTTestLog("\n");
		TTTestLog("Testing TTSoundfileLoader Basics...");
		
        // TEST 0: establish our objects & pointers
        TTObject* testTargetMatrix = new TTObject("samplematrix");
        TTObject* testNonSampleMatrix = new TTObject("delay");
        TTObjectBase* objectBasePtrToSampleMatrix;
        TTObjectBase* ptrToNonSampleMatrix;
        
        // TEST 1: set the filepath
        TTBoolean result1 = { this->setFilePath(TT(testSoundPath)) == kTTErrNone };
        
        TTTestAssertion("setFilePath operates successfully",
                        result1,
                        testAssertionCount,
                        errorCount);
        
        // TEST 2: set up the samplematrix first
        int channelsSend = 1;           // compiler complained about TTInt32 being ambiguous here
        int lengthSend = 22050;         // compiler complained about TTInt32 being ambiguous here
        testTargetMatrix->set("numChannels", channelsSend);
        testTargetMatrix->set("lengthInSamples", lengthSend);
        
        TTInt32 channelsReturn, lengthReturn;
        
        testTargetMatrix->get("numChannels", channelsReturn);
        testTargetMatrix->get("lengthInSamples", lengthReturn);
        
        // now for the actual test
        TTBoolean result2a = { channelsSend == channelsReturn };
        
        TTTestAssertion("numChannels attribute set successfully",
						result2a,
						testAssertionCount,
						errorCount);
        
        TTBoolean result2b = { lengthSend == lengthReturn };
        
        TTTestAssertion("lengthInSamples attribute set successfully",
						result2b,
						testAssertionCount,
						errorCount);
        //
        
        // TEST 3: set the target via an objectBasePtr
        objectBasePtrToSampleMatrix = testTargetMatrix->instance(); // is there a better syntax for this?
        
        TTBoolean result3 = { this->setTargetMatrix(objectBasePtrToSampleMatrix) == kTTErrNone };
        
        TTTestAssertion("setTargetMatrix via ObjectBasePtr operates successfully",
						result3,
						testAssertionCount,
						errorCount);
        
        // TEST 4: set the target to a non-SampleMatrix, should FAIL
        ptrToNonSampleMatrix = testNonSampleMatrix->instance();
        
        TTBoolean result4 = { this->setTargetMatrix(ptrToNonSampleMatrix) == kTTErrInvalidValue };
        
        TTTestAssertion("setTargetMatrix returns error when not a SampleMatrix",
						result4,
						testAssertionCount,
						errorCount);
        
        // TEST 5: copy samplevalues until samplematrix is filled
        
        TTBoolean result5 = { this->copyUntilFilled() == kTTErrNone };
        
        TTTestAssertion("copyUntilFilled operates successfully",
						result5,
						testAssertionCount,
						errorCount);
        
        // TEST 6: compare 5 random sample values for equivalence
        
        TTObject newTargetMatrix("samplematrix");
        
        newTargetMatrix.set("numChannels", TESTNUMCHANNELS);
        newTargetMatrix.set("lengthInSamples", TESTDURATIONINSAMPLES);
        
        TTValue aReturnWeDontCareAbout;
        newTargetMatrix.send("load", testSoundPath, aReturnWeDontCareAbout);
        
        int randomIndex;
        TTSampleValue randomValueSoundFile;
        TTBoolean result6 = true;
        
        for (int i = 0; i<5; i++)
        {
            randomIndex = lengthReturn * TTRandom64();
            //TTTestLog("let's look at index %i", randomIndex);
            
            TTValue peekInput(randomIndex);
            peekInput.append(0);
            TTValue peekOutput;
            
            this->peek(randomIndex,0,randomValueSoundFile);
            newTargetMatrix.send("peek",peekInput,peekOutput); //randomIndex,0,randomValueSampleMatrix);
            std::cout << "Does " << randomValueSoundFile << " = " << double(peekOutput) << " ?\n";
            
            if (result6) // allows test to keep variable false once it is false
                result6 = TTTestFloatEquivalence(randomValueSoundFile, double(peekOutput), true, 0.0000001);
        }
        
        TTTestAssertion("comparing 5 random values for equivalence",
                        result6,
                        testAssertionCount,
                        errorCount);
        
        //
        
        
        // releasing objects
        objectBasePtrToSampleMatrix = NULL;
        ptrToNonSampleMatrix = NULL;
        delete testTargetMatrix;
        delete testNonSampleMatrix;
        
    } catch (...) {
        TTTestAssertion("FAILED to run tests -- likely that necessary objects did not instantiate",
            0,
            testAssertionCount,
            errorCount);
        
    }
    
    return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
