{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 50.0, 136.0, 818.0, 422.0 ],
		"bglocked" : 0,
		"defrect" : [ 50.0, 136.0, 818.0, 422.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.970939,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"text" : "Off",
					"texton" : "On",
					"presentation_rect" : [ 25.0, 33.0, 43.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-25",
					"numoutlets" : 3,
					"patching_rect" : [ 500.0, 159.0, 43.0, 20.0 ],
					"mode" : 1,
					"presentation" : 1,
					"outlettype" : [ "int", "", "int" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"numinlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-1",
					"numoutlets" : 1,
					"patching_rect" : [ 147.0, 172.0, 45.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "reference",
					"text" : "jcom.parameter reference @type msg_symbol @range/clipmode none @description \"Choose reference mode\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-3",
					"numoutlets" : 3,
					"patching_rect" : [ 500.0, 263.0, 321.0, 30.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"hint" : "Reference",
					"varname" : "mouse_menu",
					"items" : [ "screen", ",", "click" ],
					"presentation_rect" : [ 86.0, 35.0, 100.0, 18.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"types" : [  ],
					"id" : "obj-5",
					"numoutlets" : 3,
					"labelclick" : 1,
					"patching_rect" : [ 500.0, 237.0, 100.0, 18.0 ],
					"presentation" : 1,
					"outlettype" : [ "int", "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mouse_on[1]",
					"text" : "jcom.parameter mouse_on @type msg_toggle @range/clipmode none @description \"Turn polling on\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-7",
					"numoutlets" : 3,
					"patching_rect" : [ 500.0, 183.0, 278.0, 30.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-8",
					"numoutlets" : 1,
					"patching_rect" : [ 147.0, 216.0, 49.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-9",
					"numoutlets" : 2,
					"patching_rect" : [ 147.0, 192.0, 91.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"id" : "obj-10",
					"numoutlets" : 1,
					"patching_rect" : [ 57.0, 95.0, 135.0, 16.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.mouse.maxpat",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-13",
					"numoutlets" : 0,
					"patching_rect" : [ 147.0, 285.0, 106.0, 18.0 ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.mouse @size 1U-half @module_type control @description \"Output information from mouse\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-14",
					"numoutlets" : 2,
					"patching_rect" : [ 21.0, 124.0, 281.0, 30.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"id" : "obj-15",
					"numoutlets" : 1,
					"patching_rect" : [ 21.0, 88.0, 25.0, 25.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"id" : "obj-16",
					"numoutlets" : 0,
					"patching_rect" : [ 21.0, 185.0, 25.0, 25.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/mouse_on 0",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"id" : "obj-17",
					"numoutlets" : 1,
					"patching_rect" : [ 253.0, 252.0, 153.0, 16.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-18",
					"numoutlets" : 1,
					"patching_rect" : [ 253.0, 230.0, 68.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/Jamoma",
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"numinlets" : 1,
					"id" : "obj-20",
					"numoutlets" : 1,
					"textcolor" : [ 0.65, 0.65, 0.65, 1.0 ],
					"presentation" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 10.970939
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [ 509.5, 294.0, 489.0, 294.0, 489.0, 234.0, 509.5, 234.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 509.5, 213.0, 486.0, 213.0, 486.0, 156.0, 509.5, 156.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 228.5, 241.0, 156.5, 241.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 228.5, 221.0, 262.5, 221.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 66.5, 118.0, 30.5, 118.0 ]
				}

			}
 ]
	}

}
