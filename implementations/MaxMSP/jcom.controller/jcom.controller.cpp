/* 
 * jcom.controller
 * External for Jamoma : to manage network plugins
 * By Théo de la Hogue, Copyright 2010
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */
#include "jcom.controller.h"

// Globals
t_class		*ctrl_class;

// implementation
#if 0
#pragma mark -
#pragma mark Class Definition
#endif 0

int JAMOMA_EXPORT_MAXOBJ main(void)
{
	t_class *c;
	
	jamoma_init();
	common_symbols_init();
	
	// Define our class
	c = class_new("jcom.controller",(method)ctrl_new, (method)ctrl_free, (long)sizeof(t_ctrl), 0L, A_GIMME, 0);
	
	// add methods
	class_addmethod(c, (method)ctrl_notify,					"notify",				A_CANT, 0);
	class_addmethod(c, (method)ctrl_assist,					"assist",				A_CANT, 0);
	
	// this method posts the children (leaves or nodes) and the properties of the node which address is given
	class_addmethod(c, (method)ctrl_load_plugins,			"load_plugins",			A_SYM, 0);
	class_addmethod(c, (method)ctrl_add_scan,				"scan",					0);
	class_addmethod(c, (method)ctrl_add_minuit_device,		"add_minuit_device",	A_SYM, A_SYM, A_LONG, 0);
	class_addmethod(c, (method)ctrl_discover,				"discover",				A_SYM, A_SYM, 0);
	class_addmethod(c, (method)ctrl_get,					"get",					A_SYM, A_SYM, 0);
	class_addmethod(c, (method)ctrl_set,					"set",					A_GIMME, 0);
	class_addmethod(c, (method)ctrl_add_snapshot,			"snapshot",				A_SYM, A_SYM, 0);
	
	class_addmethod(c, (method)ctrl_debug,					"debug",				A_LONG, 0);
	class_addmethod(c, (method)ctrl_dump,					"dump",					0);
	
	// Finalize our class
	class_register(CLASS_BOX, c);
	ctrl_class = c;
	return 0;
}

#if 0
#pragma mark -
#pragma mark Life Cycle
#endif 0

void *ctrl_new(t_symbol *name, long argc, t_atom *argv)
{
	t_ctrl *x;

	x = (t_ctrl*)object_alloc(ctrl_class);

	if(x){
		
		x->p_info = outlet_new(x, 0);
		x->device = _sym_nothing;
		x->b_debug = false;
		
		// Initialize the Jamoma Controller
		if(argc && argv)
			if(atom_gettype(&argv[0]) == A_SYM)
				jamoma_controller_init(atom_getsym(&argv[0]));
		
		jamoma_controller_init(gensym("Jamoma"));	// if the controller have already been initialized, this line would do nothing
	}
	
	return x;
}

void ctrl_free(t_ctrl *x)
{
	jamoma_controller_free();
}

#if 0
#pragma mark -
#pragma mark Methods
#endif 0

t_max_err ctrl_notify(t_ctrl *x, t_symbol *s, t_symbol *msg, void *sender, void *data)
{
	object_post((t_object *)x, "notification : %s", msg->s_name);
	return MAX_ERR_NONE;
}

void ctrl_assist(t_ctrl *x, void *b, long msg, long arg, char *dst)
{
	if (msg == ASSIST_INLET) { // inlet
		//if(arg == 0)
		//strcpy(dst, "I am inlet 0");
	} 
	else {	// outlet
		if(arg == 0)
			strcpy(dst, "info outlet");
	}		
}

void ctrl_load_plugins(t_ctrl *x, t_symbol *path)
{
	jamoma_controller_load_plugins(path);
	
	// TODO : throw a message over the network to declare /Jamoma
	
	// DEBUG
	jamoma_controller_dump_plugins();
}

void ctrl_add_scan(t_ctrl *x)
{
	jamoma_controller_scan();	// TODO get a TTList with all devices name
}

void ctrl_add_minuit_device(t_ctrl *x, t_symbol *device_name, t_symbol *ip, long port)
{
	std::map<std::string, std::string> commParameters;
	char s_port[8];
	
	snprintf(s_port, 8, "%ld", port);
	
	// remove the actual Minuit device
	if(x->device != _sym_nothing)
		jamoma_controller->deviceRemove(x->device->s_name);
	
	// create a new one
	commParameters["ip"] = ip->s_name;
	commParameters["port"] = s_port;
	jamoma_controller->deviceAdd(device_name->s_name, "Minuit", &commParameters);
	
	x->device = device_name;
	
	if(x->b_debug)
		jamoma_controller_dump_devices();
}

void ctrl_discover(t_ctrl *x, t_symbol *device, t_symbol *address)
{
	vector<string> returnedNodes;
	vector<string> returnedLeaves;
	vector<string> returnedAttributes;
	vector<Value> returnedValues;
	unsigned int i;
	TTString deviceAndAddress = device->s_name;
	deviceAndAddress += address->s_name;
	
	int result = jamoma_controller->deviceSendDiscoverRequest(deviceAndAddress, &returnedNodes, &returnedLeaves, &returnedAttributes, &returnedValues);
	
	switch(result){
		case REQUEST_NOT_SENT :{
			post("ctrl_discover %s %s : REQUEST_NOT_SENT", device->s_name, address->s_name);
			break;
		}
		case TIMEOUT_EXCEEDED :{
			post("ctrl_discover %s %s : TIMEOUT_EXCEEDED", device->s_name, address->s_name);
			break;
		}
		case NO_ANSWER :{
			post("ctrl_discover %s %s : NO_ANSWER", device->s_name, address->s_name);
			break;
		}
		case ANSWER_RECEIVED :{
			post("ctrl_discover %s %s : ANSWER_RECEIVED", device->s_name, address->s_name);
			
			post("		+ Nodes");
			for(i = 0; i < returnedNodes.size(); i++){
				post("		+ %s", returnedNodes.at(i).data());
			}
			
			post("		<> Leaves");
			for(i = 0; i < returnedLeaves.size(); i++){
				post("		<> %s", returnedLeaves.at(i).data());
			}
			
			post("		: Attributes");
			for(i = 0; i < returnedAttributes.size(); i++){
				post("		: %s", returnedAttributes.at(i).data());
			}
			
			break;
		}
		default :{
			post("ctrl_discover %s %s : NO_ANSWER", device->s_name, address->s_name);
			break;
		}
	}
}

void ctrl_get(t_ctrl *x,  t_symbol *device, t_symbol *address)
{
	Value returnedValue;
	
	int result = jamoma_controller->deviceSendGetRequest(device->s_name, address->s_name, NAMESPACE_ATTR_VALUE, &returnedValue); // TODO : deal with any attribute
	
	switch(result){
		case REQUEST_NOT_SENT :{
			post("ctrl_get %s %s : REQUEST_NOT_SENT", device->s_name, address->s_name);
			break;
		}
		case TIMEOUT_EXCEEDED :{
			post("ctrl_get %s %s : TIMEOUT_EXCEEDED", device->s_name, address->s_name);
			break;
		}
		case NO_ANSWER :{
			post("ctrl_get %s %s : NO_ANSWER", device->s_name, address->s_name);
			break;
		}
		case ANSWER_RECEIVED :{
			post("ctrl_get %s %s : ANSWER_RECEIVED", device->s_name, address->s_name);
			post("		<Value = %s", returnedValue.data());
			
			break;
		}
		default :{
			post("ctrl_get %s %s : NO_ANSWER", device->s_name, address->s_name);
			break;
		}
	}
}

void ctrl_set(t_ctrl *x, t_symbol *msg, long argc, t_atom *argv)
{
	char *temp;
	TTString s_value = "";
	t_symbol *device, *address;
	int i;
	
	if((atom_gettype(&argv[0]) == A_SYM) && atom_gettype(&argv[1]) == A_SYM){
		
		device = atom_getsym(&argv[0]);				// first argument is the name of the device
		address = atom_getsym(&argv[1]);			// second argument is the address where to set
	
		for(i = 2; i < argc; i++){					// then the others are values to send
			
			temp = (char*)malloc(sizeof(char)*512);
			switch((argv+i)->a_type) 
			{
				case A_SYM:
					temp = atom_getsym(&argv[i])->s_name;
					break;
				case A_FLOAT:
					snprintf(temp, 512, "%f", atom_getfloat(&argv[i]));
					break;
				case A_LONG:
					snprintf(temp, 512, "%ld", atom_getlong(&argv[i]));
					break;
			}
			
			s_value += temp;
			if(i < argc-1)
				s_value += " ";
			
			free(temp);
		}
		jamoma_controller->deviceSendSetRequest(device->s_name, address->s_name, s_value);
	}
}

void ctrl_listen(t_ctrl *x,  t_symbol *device, t_symbol *address, t_symbol *attribute, long enable)
{
	;
}

void ctrl_add_snapshot(t_ctrl *x,  t_symbol *device, t_symbol *address)
{
	unsigned int i;
	vector<std::string> snapshot = jamoma_controller->deviceSnapshot(x->device->s_name, address->s_name);
	
	post("Snapshot on the device %s at %s", device->s_name, address->s_name);
	for(i = 0; i < snapshot.size(); i++)
	{
		post("%s", snapshot.at(i).data());
	}
}

void ctrl_debug(t_ctrl *x, long n)
{
	x->b_debug = n > 0;
}

void ctrl_dump(t_ctrl *x)
{
	// dump all plugins and devices
	jamoma_controller_dump_plugins();
	jamoma_controller_dump_devices();
}