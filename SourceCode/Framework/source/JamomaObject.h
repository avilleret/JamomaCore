/* 
 * Jamoma Shared Library: the global jamoma object
 * Functions and resources used by Jamoma objects.
 * By Tim Place, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */


#ifndef __JAMOMA_OBJECT_H__
#define __JAMOMA_OBJECT_H__

#include "ext.h"
#include "ext_obex.h"				// Max Object Extensions (attributes) Header
#include "ext_common.h"
#include "ext_strings.h"			// String Functions
#include "ext_critical.h"
#include "ext_pattr_bundle.h"
#include "z_dsp.h"
#include "commonsyms.h"				// Common symbols used by the Max 4.5 API


// Data Structure for this object
typedef struct _jamoma_object
{
	t_object		obj;	
} t_jamoma_object;


void		jamoma_object_initclass(void);
t_object*	jamoma_object_new();
void		jamoma_object_free(t_jamoma_object *obj);


#endif //__JAMOMA_OBJECT_H__

