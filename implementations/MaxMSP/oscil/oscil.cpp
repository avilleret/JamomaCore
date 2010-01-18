/* 
 *	oscil≈
 *	Oscillator object for Jamoma Multicore
 *	Copyright © 2008 by Timothy Place
 * 
 *	License: This code is licensed under the terms of the GNU LGPL
 *	http://www.gnu.org/licenses/lgpl.html 
 */

#include "maxMulticore.h"


// Data Structure for this object
typedef struct Oscil {
    t_object				obj;
	TTMulticoreObjectPtr	multicoreObject;
	TTPtr					multicoreOutlet;
	SymbolPtr				attrWaveform;
	SymbolPtr				attrInterpolation;
	float					attrFrequency;
	float					attrGain;
};
typedef Oscil* OscilPtr;


// Prototypes for methods
OscilPtr	OscilNew(SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		OscilFree(OscilPtr self);
void		OscilAssist(OscilPtr self, void* b, long msg, long arg, char* dst);
TTErr		OscilReset(OscilPtr self);
TTErr		OscilSetup(OscilPtr self);
MaxErr		OscilSetMode(OscilPtr self, void* attr, AtomCount argc, AtomPtr argv);
MaxErr		OscilSetInterpolation(OscilPtr self, void* attr, AtomCount argc, AtomPtr argv);
MaxErr		OscilSetFrequency(OscilPtr self, void* attr, AtomCount argc, AtomPtr argv);
MaxErr		OscilSetGain(OscilPtr self, void* attr, AtomCount argc, AtomPtr argv);


// Globals
static ClassPtr sOscilClass;


/************************************************************************************/
// Main() Function

int main(void)
{
	ClassPtr c;

	TTMulticoreInit();	
	common_symbols_init();

	c = class_new("oscil≈", (method)OscilNew, (method)OscilFree, sizeof(Oscil), (method)0L, A_GIMME, 0);
	
	class_addmethod(c, (method)OscilReset,			"multicore.reset",	A_CANT, 0);
	class_addmethod(c, (method)OscilSetup,			"multicore.setup",	A_CANT,	0);
	class_addmethod(c, (method)OscilAssist,			"assist",			A_CANT, 0); 
    class_addmethod(c, (method)object_obex_dumpout,	"dumpout",			A_CANT, 0);  
	
	CLASS_ATTR_SYM(c,		"waveform",			0,		Oscil,	attrWaveform);
	CLASS_ATTR_ACCESSORS(c,	"waveform",			NULL,	OscilSetMode);
	
	CLASS_ATTR_SYM(c,		"interpolation",	0,		Oscil,	attrInterpolation);
	CLASS_ATTR_ACCESSORS(c,	"interpolation",	NULL,	OscilSetInterpolation);
	
	CLASS_ATTR_FLOAT(c,		"frequency",		0,		Oscil,	attrFrequency);
	CLASS_ATTR_ACCESSORS(c,	"frequency",		NULL,	OscilSetFrequency);
	
	CLASS_ATTR_FLOAT(c,		"gain",				0,		Oscil,	attrGain);
	CLASS_ATTR_ACCESSORS(c,	"gain",				NULL,	OscilSetGain);

	class_register(_sym_box, c);
	sOscilClass = c;
	return 0;
}


/************************************************************************************/
// Object Creation Method

OscilPtr OscilNew(SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
    OscilPtr	self = OscilPtr(object_alloc(sOscilClass));
	TTValue		v;
	TTErr		err;

    if (self) {
		v.setSize(2);
		v.set(0, TT("wavetable"));
		v.set(1, TTUInt32(0));
		err = TTObjectInstantiate(TT("multicore.object"), (TTObjectPtr*)&self->multicoreObject, v);

		self->multicoreObject->addFlag(kTTMulticoreGenerator);

		attr_args_process(self, argc, argv);
    	object_obex_store((TTPtr)self, _sym_dumpout, (ObjectPtr)outlet_new(self, NULL));
		self->multicoreOutlet = outlet_new((t_pxobject*)self, "multicore.connect");
	}
	return self;
}

// Memory Deallocation
void OscilFree(OscilPtr self)
{
	TTObjectRelease((TTObjectPtr*)&self->multicoreObject);
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void OscilAssist(OscilPtr self, void* b, long msg, long arg, char* dst)
{
	if (msg==1)			// Inlets
		strcpy(dst, "multichannel audio connection and control messages");		
	else if (msg==2) {	// Outlets
		if (arg == 0)
			strcpy(dst, "multichannel audio connection");
		else
			strcpy(dst, "dumpout");
	}
}


TTErr OscilReset(OscilPtr self)
{
	return self->multicoreObject->reset();
}


TTErr OscilSetup(OscilPtr self)
{
	Atom a[2];
	
	atom_setobj(a+0, ObjectPtr(self->multicoreObject));
	atom_setlong(a+1, 0);
	outlet_anything(self->multicoreOutlet, gensym("multicore.connect"), 2, a);
	return kTTErrNone;
}



MaxErr OscilSetMode(OscilPtr self, void* attr, AtomCount argc, AtomPtr argv)
{
	if (argc) {
		self->attrWaveform = atom_getsym(argv);
		self->multicoreObject->mUnitGenerator->setAttributeValue(TT("mode"), TT(self->attrWaveform->s_name));
	}
	return MAX_ERR_NONE;
}


MaxErr OscilSetInterpolation(OscilPtr self, void* attr, AtomCount argc, AtomPtr argv)
{
	if (argc) {
		self->attrInterpolation = atom_getsym(argv);
		self->multicoreObject->mUnitGenerator->setAttributeValue(TT("interpolation"), TT(self->attrInterpolation->s_name));
	}
	return MAX_ERR_NONE;
}


MaxErr OscilSetFrequency(OscilPtr self, void* attr, AtomCount argc, AtomPtr argv)
{
	if (argc) {
		self->attrFrequency = atom_getfloat(argv);
		self->multicoreObject->mUnitGenerator->setAttributeValue(TT("frequency"), self->attrFrequency);
	}
	return MAX_ERR_NONE;
}


MaxErr OscilSetGain(OscilPtr self, void* attr, AtomCount argc, AtomPtr argv)
{
	if (argc) {
		self->attrGain	= atom_getfloat(argv);
		self->multicoreObject->mUnitGenerator->setAttributeValue(TT("gain"), self->attrGain);
	}
	return MAX_ERR_NONE;
}


