{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 242.0, 278.0, 825.0, 532.0 ],
		"bglocked" : 0,
		"defrect" : [ 242.0, 278.0, 825.0, 532.0 ],
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
					"patching_rect" : [ 538.0, 159.0, 100.0, 20.0 ],
					"text" : "View",
					"presentation" : 1,
					"fontsize" : 10.970939,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "int" ],
					"presentation_rect" : [ 158.0, 32.0, 100.0, 20.0 ],
					"id" : "obj-20",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"patching_rect" : [ 393.0, 277.0, 100.0, 20.0 ],
					"text" : "Set",
					"presentation" : 1,
					"fontsize" : 10.970939,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "int" ],
					"presentation_rect" : [ 24.0, 32.0, 100.0, 20.0 ],
					"id" : "obj-19",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"linecount" : 2,
					"patching_rect" : [ 178.0, 85.0, 128.0, 28.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-1",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"patching_rect" : [ 327.0, 93.0, 45.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-2",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t open",
					"patching_rect" : [ 538.0, 193.0, 40.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "open" ],
					"id" : "obj-5",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack s 0",
					"patching_rect" : [ 327.0, 218.0, 62.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"id" : "obj-6",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 1",
					"patching_rect" : [ 370.0, 239.0, 32.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"id" : "obj-7",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "sub patch",
					"text" : "p \"color inspector\"",
					"patching_rect" : [ 370.0, 306.0, 100.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-8",
					"fontname" : "Verdana",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 196.0, 77.0, 717.0, 740.0 ],
						"bgcolor" : [ 0.74902, 0.74902, 0.74902, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 196.0, 77.0, 717.0, 740.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 1,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "hsl_colorpicker[11]",
									"patching_rect" : [ 209.0, 375.0, 193.0, 64.0 ],
									"presentation" : 1,
									"name" : "jcom.color.hsl_picker.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"hidden" : 1,
									"presentation_rect" : [ 209.0, 375.0, 193.0, 64.0 ],
									"id" : "obj-1",
									"lockeddragscroll" : 1,
									"args" : [  ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "hsl_colorpicker[10]",
									"patching_rect" : [ 209.0, 308.0, 193.0, 64.0 ],
									"presentation" : 1,
									"name" : "jcom.color.hsl_picker.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"hidden" : 1,
									"presentation_rect" : [ 209.0, 308.0, 193.0, 64.0 ],
									"id" : "obj-2",
									"lockeddragscroll" : 1,
									"args" : [  ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "hsl_colorpicker[9]",
									"patching_rect" : [ 209.0, 241.0, 193.0, 64.0 ],
									"presentation" : 1,
									"name" : "jcom.color.hsl_picker.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"hidden" : 1,
									"presentation_rect" : [ 209.0, 241.0, 193.0, 64.0 ],
									"id" : "obj-3",
									"lockeddragscroll" : 1,
									"args" : [  ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "hsl_colorpicker[8]",
									"patching_rect" : [ 209.0, 174.0, 193.0, 64.0 ],
									"presentation" : 1,
									"name" : "jcom.color.hsl_picker.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"hidden" : 1,
									"presentation_rect" : [ 209.0, 174.0, 193.0, 64.0 ],
									"id" : "obj-4",
									"lockeddragscroll" : 1,
									"args" : [  ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p collect_as_matrix",
									"patching_rect" : [ 25.0, 552.0, 105.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 60.0, 360.0, 708.0, 490.0 ],
										"bglocked" : 0,
										"defrect" : [ 60.0, 360.0, 708.0, 490.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 5.0, 5.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "220. 65. 52. 0. 0. 33. 176. 100. 59.",
													"patching_rect" : [ 493.0, 319.0, 188.0, 16.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"patching_rect" : [ 493.0, 295.0, 68.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-2",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "220. 65. 52. 0. 0. 33. 176. 100. 59. 176. 26. 52. 0. 0. 0. 0. 0. 0. 21. 0. 53. 0. 0. 38. 0. 0. 0. 0. 0. 0. 0. 0. 0. 1. 210. 10.",
													"linecount" : 3,
													"patching_rect" : [ 492.0, 219.0, 214.0, 40.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-3",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"patching_rect" : [ 492.0, 195.0, 68.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-4",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "offset 0 0",
													"patching_rect" : [ 274.0, 76.0, 73.0, 16.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-5",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"patching_rect" : [ 274.0, 52.0, 68.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-6",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "220. 65. 52.",
													"patching_rect" : [ 198.0, 76.0, 73.0, 16.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-7",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"patching_rect" : [ 198.0, 52.0, 68.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-8",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route set",
													"patching_rect" : [ 478.0, 58.0, 53.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-9",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 478.0, 32.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-10",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jit.fill #0_hsl_colors 0 offset 0 0",
													"patching_rect" : [ 478.0, 97.0, 168.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-11",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl rot -1",
													"patching_rect" : [ 28.0, 53.0, 49.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-12",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 3",
													"patching_rect" : [ 416.0, 204.0, 27.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"id" : "obj-13",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice",
													"patching_rect" : [ 368.0, 229.0, 58.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-14",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jit.spill",
													"patching_rect" : [ 368.0, 205.0, 43.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-15",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jit.fill #0_hsl_colors 0",
													"patching_rect" : [ 28.0, 132.0, 117.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-16",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "offset 0 $1",
													"patching_rect" : [ 158.0, 102.0, 62.0, 16.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-17",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 3",
													"patching_rect" : [ 28.0, 79.0, 140.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-18",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jit.matrix #0_hsl_colors 1 float32 3 12",
													"patching_rect" : [ 28.0, 162.0, 202.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "jit_matrix", "" ],
													"id" : "obj-19",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 28.0, 30.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "list" ],
													"id" : "obj-20",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 416.0, 33.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-21",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 368.0, 258.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-22",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-14", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [ 37.5, 192.0, 377.5, 192.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 1 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [ 167.5, 122.0, 37.5, 122.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"fontname" : "Verdana",
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "funnel 12",
									"patching_rect" : [ 25.0, 518.0, 157.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 12,
									"numoutlets" : 1,
									"outlettype" : [ "list" ],
									"id" : "obj-6",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "hsl_colorpicker[7]",
									"patching_rect" : [ 209.0, 107.0, 193.0, 64.0 ],
									"presentation" : 1,
									"name" : "jcom.color.hsl_picker.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"hidden" : 1,
									"presentation_rect" : [ 209.0, 107.0, 193.0, 64.0 ],
									"id" : "obj-7",
									"lockeddragscroll" : 1,
									"args" : [  ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "hsl_colorpicker[6]",
									"patching_rect" : [ 209.0, 40.0, 193.0, 64.0 ],
									"presentation" : 1,
									"name" : "jcom.color.hsl_picker.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"hidden" : 1,
									"presentation_rect" : [ 209.0, 40.0, 193.0, 64.0 ],
									"id" : "obj-8",
									"lockeddragscroll" : 1,
									"args" : [  ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "hsl_colorpicker[5]",
									"patching_rect" : [ 12.0, 375.0, 193.0, 64.0 ],
									"presentation" : 1,
									"name" : "jcom.color.hsl_picker.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"hidden" : 1,
									"presentation_rect" : [ 12.0, 375.0, 193.0, 64.0 ],
									"id" : "obj-9",
									"lockeddragscroll" : 1,
									"args" : [  ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "hsl_colorpicker[4]",
									"patching_rect" : [ 12.0, 308.0, 193.0, 64.0 ],
									"presentation" : 1,
									"name" : "jcom.color.hsl_picker.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"hidden" : 1,
									"presentation_rect" : [ 12.0, 308.0, 193.0, 64.0 ],
									"id" : "obj-10",
									"lockeddragscroll" : 1,
									"args" : [  ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "hsl_colorpicker[3]",
									"patching_rect" : [ 12.0, 241.0, 193.0, 64.0 ],
									"presentation" : 1,
									"name" : "jcom.color.hsl_picker.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"hidden" : 1,
									"presentation_rect" : [ 12.0, 241.0, 193.0, 64.0 ],
									"id" : "obj-11",
									"lockeddragscroll" : 1,
									"args" : [  ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "hsl_colorpicker[2]",
									"patching_rect" : [ 12.0, 174.0, 193.0, 64.0 ],
									"presentation" : 1,
									"name" : "jcom.color.hsl_picker.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"hidden" : 1,
									"presentation_rect" : [ 12.0, 174.0, 193.0, 64.0 ],
									"id" : "obj-12",
									"lockeddragscroll" : 1,
									"args" : [  ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "hsl_colorpicker[1]",
									"patching_rect" : [ 12.0, 107.0, 193.0, 64.0 ],
									"presentation" : 1,
									"name" : "jcom.color.hsl_picker.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"hidden" : 1,
									"presentation_rect" : [ 12.0, 107.0, 193.0, 64.0 ],
									"id" : "obj-13",
									"lockeddragscroll" : 1,
									"args" : [  ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "hsl_colorpicker[0]",
									"patching_rect" : [ 12.0, 40.0, 193.0, 64.0 ],
									"presentation" : 1,
									"name" : "jcom.color.hsl_picker.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 12.0, 40.0, 193.0, 64.0 ],
									"id" : "obj-14",
									"lockeddragscroll" : 1,
									"args" : [  ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bgcolor 191 191 191",
									"patching_rect" : [ 298.0, 604.0, 112.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 4,
									"numoutlets" : 0,
									"id" : "obj-15",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"patching_rect" : [ 298.0, 581.0, 64.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"id" : "obj-16",
									"fontname" : "Verdana",
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t front",
									"patching_rect" : [ 298.0, 562.0, 40.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "front" ],
									"id" : "obj-17",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 298.0, 526.0, 27.0, 27.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-18",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p set_swatches",
									"patching_rect" : [ 25.0, 618.0, 85.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-19",
									"fontname" : "Verdana",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 30.0, 89.0, 578.0, 391.0 ],
										"bglocked" : 0,
										"defrect" : [ 30.0, 89.0, 578.0, 391.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 5.0, 5.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "change",
													"patching_rect" : [ 336.0, 148.0, 44.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "int", "int" ],
													"id" : "obj-1",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l l",
													"patching_rect" : [ 12.0, 77.0, 27.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-2",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pattrforward parent::NumberOfColors",
													"patching_rect" : [ 336.0, 212.0, 197.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-3",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "/ 3",
													"patching_rect" : [ 336.0, 171.0, 27.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"id" : "obj-4",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"patching_rect" : [ 12.0, 276.0, 68.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-5",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 3",
													"patching_rect" : [ 12.0, 251.0, 79.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-6",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route set",
													"patching_rect" : [ 12.0, 50.0, 53.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-7",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf send parent::hsl_colorpicker[%ld]",
													"patching_rect" : [ 81.0, 276.0, 215.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-8",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pattrforward",
													"patching_rect" : [ 12.0, 314.0, 71.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-9",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl len",
													"patching_rect" : [ 336.0, 127.0, 35.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-10",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl join",
													"patching_rect" : [ 12.0, 229.0, 97.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-11",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l b",
													"patching_rect" : [ 12.0, 177.0, 28.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"id" : "obj-12",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "counter 0 11",
													"patching_rect" : [ 99.0, 206.0, 72.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 5,
													"numoutlets" : 4,
													"outlettype" : [ "int", "", "", "int" ],
													"id" : "obj-13",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l 3 0",
													"patching_rect" : [ 12.0, 128.0, 101.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "int", "int" ],
													"id" : "obj-14",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl group 3",
													"patching_rect" : [ 12.0, 153.0, 58.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-15",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 12.0, 28.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-16",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [ 29.5, 106.0, 345.5, 106.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 2 ],
													"destination" : [ "obj-13", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-11", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 1 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [ 30.5, 196.0, 108.5, 196.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 1 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 1 ],
													"destination" : [ "obj-15", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [ 90.5, 303.0, 21.5, 303.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"fontname" : "Verdana",
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "colors",
									"text" : "jcom.parameter colors @type msg_list @description \"List of 1 to 12 HSL triplets.\"",
									"linecount" : 2,
									"patching_rect" : [ 25.0, 575.0, 235.0, 30.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"id" : "obj-20",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p show&hide",
									"patching_rect" : [ 463.0, 91.0, 72.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-21",
									"fontname" : "Verdana",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 30.0, 89.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 30.0, 89.0, 600.0, 426.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 5.0, 5.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i",
													"patching_rect" : [ 110.0, 50.0, 28.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "int" ],
													"id" : "obj-1",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1 0",
													"patching_rect" : [ 79.0, 182.0, 95.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "" ],
													"id" : "obj-2",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "<",
													"patching_rect" : [ 80.0, 160.0, 27.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"id" : "obj-3",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t i i",
													"patching_rect" : [ 80.0, 129.0, 27.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "int" ],
													"id" : "obj-4",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t hide",
													"patching_rect" : [ 121.0, 207.0, 37.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "hide" ],
													"id" : "obj-5",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t show",
													"patching_rect" : [ 79.0, 207.0, 41.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "show" ],
													"id" : "obj-6",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf script %s hsl_colorpicker[%ld]",
													"patching_rect" : [ 79.0, 263.0, 197.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-7",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "- 1",
													"patching_rect" : [ 80.0, 107.0, 27.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"id" : "obj-8",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi 12",
													"patching_rect" : [ 50.0, 85.0, 40.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "int" ],
													"id" : "obj-9",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 110.0, 30.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-10",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 79.0, 332.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-11",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-4", 1 ],
													"destination" : [ "obj-7", 1 ],
													"hidden" : 0,
													"midpoints" : [ 97.5, 152.0, 266.5, 152.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 1 ],
													"destination" : [ "obj-3", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 2 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"fontname" : "Verdana",
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change",
									"patching_rect" : [ 409.0, 50.0, 44.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "int", "int" ],
									"id" : "obj-22",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"varname" : "NumberOfColors",
									"patching_rect" : [ 117.0, 17.0, 35.0, 18.0 ],
									"presentation" : 1,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontsize" : 9.873845,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"triscale" : 0.9,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"minimum" : 1,
									"presentation_rect" : [ 117.0, 17.0, 35.0, 18.0 ],
									"id" : "obj-23",
									"fontname" : "Verdana",
									"maximum" : 12
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"patching_rect" : [ 463.0, 112.0, 64.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"id" : "obj-24",
									"fontname" : "Verdana",
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Number of colors:",
									"patching_rect" : [ 9.0, 16.0, 100.0, 18.0 ],
									"presentation" : 1,
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"numoutlets" : 0,
									"presentation_rect" : [ 9.0, 16.0, 100.0, 18.0 ],
									"id" : "obj-25",
									"fontname" : "Verdana"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-6", 11 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-6", 10 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-6", 9 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-6", 8 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 7 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-6", 6 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-6", 5 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-6", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-6", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-6", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-6", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 126.5, 35.0, 418.5, 35.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-5", 2 ],
									"hidden" : 0,
									"midpoints" : [ 34.5, 611.0, 268.0, 611.0, 268.0, 549.0, 120.5, 549.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [ 418.5, 475.0, 77.5, 475.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontname" : "Verdana",
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"patching_rect" : [ 538.0, 256.0, 49.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-9",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass /open_inspector open",
					"patching_rect" : [ 327.0, 117.0, 204.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-10",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"patching_rect" : [ 38.0, 89.0, 135.0, 16.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-11",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p colorpicker_display",
					"patching_rect" : [ 538.0, 306.0, 113.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-14",
					"fontname" : "Verdana",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 61.0, 81.0, 284.0, 386.0 ],
						"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 61.0, 81.0, 284.0, 386.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bgcolor 64 64 64",
									"patching_rect" : [ 36.0, 310.0, 93.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 4,
									"numoutlets" : 0,
									"hidden" : 1,
									"id" : "obj-1",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p display_colors",
									"patching_rect" : [ 33.0, 21.0, 90.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"hidden" : 1,
									"id" : "obj-2",
									"fontname" : "Verdana",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 529.0, 68.0, 672.0, 551.0 ],
										"bglocked" : 0,
										"defrect" : [ 529.0, 68.0, 672.0, 551.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 5.0, 5.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.round",
													"patching_rect" : [ 97.0, 186.0, 65.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-1",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack 0. 0. 0.",
													"patching_rect" : [ 97.0, 163.0, 106.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-2",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.round",
													"patching_rect" : [ 97.0, 120.0, 65.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-3",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.colorspace @mode hsl2rgb",
													"patching_rect" : [ 97.0, 141.0, 170.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 3,
													"numoutlets" : 4,
													"outlettype" : [ "int", "int", "int", "" ],
													"id" : "obj-4",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "qlim 40",
													"patching_rect" : [ 26.0, 369.0, 46.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-5",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0",
													"patching_rect" : [ 551.0, 248.0, 22.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"id" : "obj-6",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 1 b",
													"patching_rect" : [ 469.0, 261.0, 32.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"id" : "obj-7",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"patching_rect" : [ 26.0, 346.0, 30.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-8",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"patching_rect" : [ 45.0, 325.0, 22.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"id" : "obj-9",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"patching_rect" : [ 469.0, 236.0, 32.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"id" : "obj-10",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l 3 0 l",
													"patching_rect" : [ 97.0, 77.0, 240.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "int", "int", "" ],
													"id" : "obj-11",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "setcell 0 $4 val 255 $1 $2 $3",
													"patching_rect" : [ 97.0, 279.0, 154.0, 16.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-12",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl join",
													"patching_rect" : [ 97.0, 257.0, 97.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-13",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l b",
													"patching_rect" : [ 97.0, 212.0, 28.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"id" : "obj-14",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "counter 0 11",
													"patching_rect" : [ 184.0, 234.0, 72.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 5,
													"numoutlets" : 4,
													"outlettype" : [ "int", "", "", "int" ],
													"id" : "obj-15",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl group 3",
													"patching_rect" : [ 97.0, 100.0, 58.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-16",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "change",
													"patching_rect" : [ 325.0, 238.0, 44.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "int", "int" ],
													"id" : "obj-17",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "dim 1 $1",
													"patching_rect" : [ 325.0, 260.0, 53.0, 16.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-18",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "/ 3",
													"patching_rect" : [ 325.0, 217.0, 27.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"id" : "obj-19",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl len",
													"patching_rect" : [ 325.0, 108.0, 35.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-20",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jit.matrix 4 char 1 12",
													"patching_rect" : [ 97.0, 404.0, 115.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "jit_matrix", "" ],
													"id" : "obj-21",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /colors",
													"patching_rect" : [ 97.0, 56.0, 116.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-22",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 551.0, 36.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"id" : "obj-23",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 469.0, 36.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"id" : "obj-24",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 97.0, 36.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-25",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 97.0, 426.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-26",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 3 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 2 ],
													"destination" : [ "obj-15", 2 ],
													"hidden" : 0,
													"midpoints" : [ 253.833328, 224.0, 220.0, 224.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 2 ],
													"destination" : [ "obj-2", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-13", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 1 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [ 115.5, 231.0, 193.5, 231.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 1 ],
													"destination" : [ "obj-2", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 1 ],
													"destination" : [ "obj-16", 1 ],
													"hidden" : 0,
													"midpoints" : [ 180.166672, 97.0, 145.5, 97.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [ 491.5, 396.0, 106.5, 396.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [ 334.5, 298.0, 106.5, 298.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-8", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [ 560.5, 321.0, 35.5, 321.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [ 478.5, 318.0, 35.5, 318.0 ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"fontname" : "Verdana",
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "closebang",
									"patching_rect" : [ 113.0, 0.0, 58.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"hidden" : 1,
									"id" : "obj-3",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jit.pwindow",
									"patching_rect" : [ 32.0, 42.0, 200.0, 256.0 ],
									"depthbuffer" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"onscreen" : 0,
									"outlettype" : [ "", "" ],
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "active",
									"patching_rect" : [ 73.0, 0.0, 38.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"hidden" : 1,
									"id" : "obj-5",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 33.0, 0.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"hidden" : 1,
									"id" : "obj-6",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 2 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontname" : "Verdana",
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.colorpicker @inspector 1 @size 1U-half @module_type control @description \"Utility for setting 1 to 12 colors.\"",
					"linecount" : 4,
					"patching_rect" : [ 16.0, 166.0, 195.0, 54.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-15",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 16.0, 78.0, 22.0, 22.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-16",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 16.0, 316.0, 22.0, 22.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-17",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/Jamoma",
					"presentation" : 1,
					"fontsize" : 10.970939,
					"textcolor" : [ 0.65, 0.65, 0.65, 1.0 ],
					"numinlets" : 1,
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"id" : "obj-18"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 2 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 521.5, 288.0, 547.5, 288.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 547.5, 237.0, 547.5, 237.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 429.0, 241.0, 547.5, 241.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 47.5, 146.0, 25.5, 146.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 187.5, 153.0, 25.5, 153.0 ]
				}

			}
 ]
	}

}
