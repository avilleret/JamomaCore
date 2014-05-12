#include "TTModular.h"

//#include <iostream>
using namespace std;

static TTApplicationPtr	mDemoApp = NULL;
static TTSymbol			kTTSym_DemoApp;

const char *            localAppName = "DemoApp";
const char *            remoteAppName = "telecommande";
const char *            config = "JamomaConfiguration.xml";

long                    remoteAppPort = 9001;
const char *            remoteAppIp = "192.168.1.84";

// change value callbacks
void PlayDataReturnValueCallback(TTPtr baton, TTValue& v);
void SpeedDataReturnValueCallback(TTPtr baton, TTValue& v);
void BoxIdDataReturnValueCallback(TTPtr baton, TTValue& v);
void BoxStartTimeDataReturnValueCallback(TTPtr baton, TTValue& v);
void BoxDurationDataReturnValueCallback(TTPtr baton, TTValue& v);


// TODO : this should move into a TTModularAPI file
/** Create a TTData object
@param	service			a symbol to tell if the data have to be a "parameter", a "message" or a "return"
@param	TTValuePtr      a value pointer to return back
@param valueCallback   a pointer to a void function(TTPtr baton, TTValue& value) to return the value back
@param returnedData    a new data object
@return                an error code if the creation fails */
TTErr TTModularCreateData(TTSymbol service, TTValuePtr baton, TTFunctionWithBatonAndValue valueCallback, TTObjectBasePtr *returnedData);

// TODO : this should move into a TTModularAPI file
/** Register a TTObject
@param	address			the absolute address where to register the object
@param	object          the object to register
@return                an error code if the registration fails */
TTErr TTModularRegisterObject(TTAddress address, TTObjectBasePtr object);

/*!
* init jamoma modular
*/
void init()
{
	TTString JamomaConfigurationFilePath;
	TTValue  v, args;

	// init the modular library
	TTModularInit();
}

/*!
* create a local application called localAppName in modular
*/
void createLocalApp()
{
	// create a local application named DemoApp and get it
	TTModularCreateLocalApplication(localAppName, config);
	mDemoApp = getLocalApplication;
	kTTSym_DemoApp = TTSymbol(localAppName);
}

/*!
* create a remote application called remoteAppName in modular
*/
void createRemoteApp()
{
	TTObjectBasePtr anApplication = NULL;
	TTSymbol        appName;
	TTValue			args;

	// create an application called remoteAppName
	appName = TTSymbol(remoteAppName);
	args = TTValue(appName);
	TTObjectBaseInstantiate(kTTSym_Application, TTObjectBaseHandle(&anApplication), args);

	// set application type : here 'mirror' because it uses Minuit protocol
	//    anApplication->setAttributeValue(kTTSym_type, TTSymbol("mirror"));
}

/*!
* register local and remote applications to Websocket protocol
*/
void registerApps()
{
	TTValue         v;
	TTErr           err;
	TTHashPtr       hashParameters;

	// check if the WebSocket protocol has been loaded
	if (getProtocol(TTSymbol("WebSocket")))
	{
		// register the local application to the WebSocket protocol
		getProtocol(TTSymbol("WebSocket"))->sendMessage(TTSymbol("registerApplication"), TTSymbol(localAppName), kTTValNONE);

		// register the remote application to the WebSocket protocol
		getProtocol(TTSymbol("WebSocket"))->sendMessage(TTSymbol("registerApplication"), TTSymbol(remoteAppName), kTTValNONE);

		// get parameter's table
		v = TTSymbol(TTSymbol(remoteAppName));
		err = getProtocol(TTSymbol("WebSocket"))->getAttributeValue(TTSymbol("applicationParameters"), v);

		if (!err) {

			hashParameters = TTHashPtr((TTPtr)v[0]);

			// replace the WebSocket parameters for the distant application
			hashParameters->remove(TTSymbol("port"));
			hashParameters->append(TTSymbol("port"), remoteAppPort);

			hashParameters->remove(TTSymbol("ip"));
			hashParameters->append(TTSymbol("ip"), TTSymbol(remoteAppIp));

			v = TTValue(TTSymbol(remoteAppName));
			v.append((TTPtr)hashParameters);
			getProtocol(TTSymbol("WebSocket"))->setAttributeValue(TTSymbol("applicationParameters"), v);
		}
	}
}


/*!
* create local application Control Play data
*/
void createPlayData()
{
	TTValue         v;
	TTValue			args;
	TTObjectBasePtr	returnValueCallback;

	TTValuePtr      batonDemoData = new TTValue(/*TTPtr(this)*/);
	batonDemoData->append(TTSymbol("data"));

	// create data change value callback
	returnValueCallback = NULL;
	TTObjectBaseInstantiate(TTSymbol("callback"), TTObjectBaseHandle(&returnValueCallback), kTTValNONE);
	returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(batonDemoData));
	returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(PlayDataReturnValueCallback));
	args.append(returnValueCallback);
	args.append(kTTSym_message);

	// create data
	TTObjectBasePtr mDemoData = NULL;
	TTObjectBaseInstantiate(kTTSym_Data, TTObjectBaseHandle(&mDemoData), args);

	// set default attributes
	mDemoData->setAttributeValue(kTTSym_type, kTTSym_boolean);
	mDemoData->setAttributeValue(kTTSym_valueDefault, false);
	mDemoData->setAttributeValue(kTTSym_rangeBounds, "none");
	mDemoData->setAttributeValue(kTTSym_valueStepsize, "none");
	mDemoData->setAttributeValue(kTTSym_readonly, false);
	mDemoData->setAttributeValue(kTTSym_description, TTSymbol("play scenario"));
	mDemoData->setAttributeValue(kTTSym_value, false);

	// register data in the nodelib tree
	TTModularRegisterObject(TTAddress("/DemoApp/control/play"), mDemoData);
}

/*!
* create local application Control Speed data
*/
void createSpeedData()
{
	TTValue         v;
	TTValue			args;
	TTObjectBasePtr	returnValueCallback;

	TTValuePtr      batonDemoData = new TTValue(/*TTPtr(this)*/);
	batonDemoData->append(TTSymbol("data"));

	// create data change value callback
	returnValueCallback = NULL;
	TTObjectBaseInstantiate(TTSymbol("callback"), TTObjectBaseHandle(&returnValueCallback), kTTValNONE);
	returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(batonDemoData));
	returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(SpeedDataReturnValueCallback));
	args.append(returnValueCallback);
	args.append(kTTSym_message);

	// create data
	TTObjectBasePtr mDemoData = NULL;
	TTObjectBaseInstantiate(kTTSym_Data, TTObjectBaseHandle(&mDemoData), args);

	// set default attributes
	mDemoData->setAttributeValue(kTTSym_type, kTTSym_decimal);
	mDemoData->setAttributeValue(kTTSym_valueDefault, 1.);
	v = TTValue(0.5, 10.);
	mDemoData->setAttributeValue(kTTSym_rangeBounds, v);
	mDemoData->setAttributeValue(kTTSym_valueStepsize, 0.1);
	mDemoData->setAttributeValue(kTTSym_readonly, false);
	mDemoData->setAttributeValue(kTTSym_description, TTSymbol("change speed value"));
	mDemoData->setAttributeValue(kTTSym_value, 1.5);

	// register data in the nodelib tree
	TTModularRegisterObject(TTAddress("/DemoApp/control/speed"), mDemoData);
}

/*!
* create local application Box ID data
*/
void createBoxIdData()
{
	TTValue         v;
	TTValue			args;
	TTObjectBasePtr	returnValueCallback;

	TTValuePtr      batonDemoData = new TTValue(/*TTPtr(this)*/);
	batonDemoData->append(TTSymbol("data"));

	// create data change value callback
	returnValueCallback = NULL;
	TTObjectBaseInstantiate(TTSymbol("callback"), TTObjectBaseHandle(&returnValueCallback), kTTValNONE);
	returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(batonDemoData));
	returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(BoxIdDataReturnValueCallback));
	args.append(returnValueCallback);
	args.append(kTTSym_message);

	// create data
	TTObjectBasePtr mDemoData = NULL;
	TTObjectBaseInstantiate(kTTSym_Data, TTObjectBaseHandle(&mDemoData), args);

	// set default attributes
	mDemoData->setAttributeValue(kTTSym_type, kTTSym_string);
	mDemoData->setAttributeValue(kTTSym_valueDefault, "box");
	//    mDemoData->setAttributeValue(kTTSym_rangeBounds, "none");
	//    mDemoData->setAttributeValue(kTTSym_valueStepsize, "none");
	mDemoData->setAttributeValue(kTTSym_readonly, false);
	mDemoData->setAttributeValue(kTTSym_description, TTSymbol("change box id"));
	mDemoData->setAttributeValue(kTTSym_value, "box");

	// register data in the nodelib tree
	TTModularRegisterObject(TTAddress("/DemoApp/box/id"), mDemoData);
}

/*!
* create local application Box Start time data
*/
void createBoxStartTimeData()
{
	TTValue         v;
	TTValue			args;
	TTObjectBasePtr	returnValueCallback;

	TTValuePtr      batonDemoData = new TTValue(/*TTPtr(this)*/);
	batonDemoData->append(TTSymbol("data"));

	// create data change value callback
	returnValueCallback = NULL;
	TTObjectBaseInstantiate(TTSymbol("callback"), TTObjectBaseHandle(&returnValueCallback), kTTValNONE);
	returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(batonDemoData));
	returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(BoxStartTimeDataReturnValueCallback));
	args.append(returnValueCallback);
	args.append(kTTSym_message);

	// create data
	TTObjectBasePtr mDemoData = NULL;
	TTObjectBaseInstantiate(kTTSym_Data, TTObjectBaseHandle(&mDemoData), args);

	// set default attributes
	mDemoData->setAttributeValue(kTTSym_type, kTTSym_decimal);
	mDemoData->setAttributeValue(kTTSym_valueDefault, 1.);
	v = TTValue(0, 1000.);
	mDemoData->setAttributeValue(kTTSym_rangeBounds, v);
	mDemoData->setAttributeValue(kTTSym_valueStepsize, 0.1);
	mDemoData->setAttributeValue(kTTSym_readonly, false);
	mDemoData->setAttributeValue(kTTSym_description, TTSymbol("change box starting time value"));
	mDemoData->setAttributeValue(kTTSym_value, 40.6);

	// register data in the nodelib tree
	TTModularRegisterObject(TTAddress("/DemoApp/box/start_time"), mDemoData);
}

/*!
* create local application Box duration data
*/
void createBoxDurationData()
{
	TTValue         v;
	TTValue			args;
	TTObjectBasePtr	returnValueCallback;

	TTValuePtr      batonDemoData = new TTValue(/*TTPtr(this)*/);
	batonDemoData->append(TTSymbol("data"));

	// create data change value callback
	returnValueCallback = NULL;
	TTObjectBaseInstantiate(TTSymbol("callback"), TTObjectBaseHandle(&returnValueCallback), kTTValNONE);
	returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(batonDemoData));
	returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(BoxDurationDataReturnValueCallback));
	args.append(returnValueCallback);
	args.append(kTTSym_message);

	// create data
	TTObjectBasePtr mDemoData = NULL;
	TTObjectBaseInstantiate(kTTSym_Data, TTObjectBaseHandle(&mDemoData), args);

	// set default attributes
	mDemoData->setAttributeValue(kTTSym_type, kTTSym_decimal);
	mDemoData->setAttributeValue(kTTSym_valueDefault, 1.);
	v = TTValue(0, 1000.);
	mDemoData->setAttributeValue(kTTSym_rangeBounds, v);
	mDemoData->setAttributeValue(kTTSym_valueStepsize, 0.1);
	mDemoData->setAttributeValue(kTTSym_readonly, false);
	mDemoData->setAttributeValue(kTTSym_description, TTSymbol("change box duration value"));
	mDemoData->setAttributeValue(kTTSym_value, 1.);

	// register data in the nodelib tree
	TTModularRegisterObject(TTAddress("/DemoApp/box/duration"), mDemoData);
}

/*!
* run Websocket protocol
*/
void runProtocol()
{
	TTModularApplications->sendMessage(TTSymbol("ProtocolRun"), TTSymbol("WebSocket"), kTTValNONE);
}

/*!
* register object in nodelib tree
* TODO : this should move into a TTModularAPI file
*/
TTErr TTModularRegisterObject(TTAddress address, TTObjectBasePtr object)
{
	TTNodePtr returnedTTNode;
	TTBoolean nodeCreated;

	return getLocalDirectory->TTNodeCreate(address, object, NULL, &returnedTTNode, &nodeCreated);
}


int
main(int argc, char **argv)
{
	TTValue	v;

	// Initialize Jamoma environment
	/////////////////////////////////////////////////////////

	TTLogMessage("\n*** Starting my DemoApp application *** \n");

	init();

	createLocalApp();

	createRemoteApp();

	registerApps();

	createPlayData();
	createSpeedData();
	createBoxIdData();
	createBoxStartTimeData();
	createBoxDurationData();

	//runProtocol();

	getchar();  // Wait until user hits "enter"

	TTLogMessage("\n*** Ending my DemoApp application *** \n");

	return 0;
}



void PlayDataReturnValueCallback(TTPtr baton, TTValue& v)
{
	TTValuePtr	b;
	TTPtr		x;
	TTString	s;

	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&x);

	// print the returned value
	v.toString();
	v.get(0, s);
	TTLogMessage("Play has been updated to %s \n", s.data());
	std::cout << "Play has been updated to " << s.data() << std::endl;
}

void SpeedDataReturnValueCallback(TTPtr baton, TTValue& v)
{
	TTValuePtr	b;
	TTPtr		x;
	TTString	s;

	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&x);

	// print the returned value
	v.toString();
	v.get(0, s);
	TTLogMessage("Speed has been updated to %s \n", s.data());
	std::cout << "Speed has been updated to " << s.data() << std::endl;
}

void BoxIdDataReturnValueCallback(TTPtr baton, TTValue& v)
{
	TTValuePtr	b;
	TTPtr		x;
	TTString	s;

	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&x);

	// print the returned value
	v.toString();
	v.get(0, s);
	TTLogMessage("Box id has been updated to %s \n", s.data());
	std::cout << "Box id has been updated to " << s.data() << std::endl;
}

void BoxStartTimeDataReturnValueCallback(TTPtr baton, TTValue& v)
{
	TTValuePtr	b;
	TTPtr		x;
	TTString	s;

	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&x);

	// print the returned value
	v.toString();
	v.get(0, s);
	TTLogMessage("Box start time has been updated to %s \n", s.data());
	std::cout << "Box start time has been updated to " << s.data() << std::endl;
}

void BoxDurationDataReturnValueCallback(TTPtr baton, TTValue& v)
{
	TTValuePtr	b;
	TTPtr		x;
	TTString	s;

	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&x);

	// print the returned value
	v.toString();
	v.get(0, s);
	TTLogMessage("Box duration has been updated to %s \n", s.data());
	std::cout << "Box duration has been updated to " << s.data() << std::endl;
}