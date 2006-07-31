max v2;
#N vpatcher 221 135 1004 728;
#P origin 116 0;
#P window setfont "Sans Serif" 9.;
#P newex 127 450 84 196617 r $1_parameter;
#P newex 373 425 84 196617 r $1_parameter;
#N vpatcher 10 59 610 459;
#P window setfont "Sans Serif" 9.;
#P window linecount 1;
#P newex 232 187 74 196617 r $1_setclock;
#P newex 231 120 40 196617 t clock;
#P newex 231 100 59 196617 select max;
#P newex 280 120 71 196617 prepend clock;
#P newex 231 146 120 196617 send $1_setclock;
#P window linecount 3;
#P newex 50 50 322 196617 jmod.parameter.mxt $1 /clock/set @type msg_symbol @description "Sync module to external clock. <br><code>/set_clock max</code> set module to use the Max scheduler (default behaviour).";
#P objectname jmod.parameter[1];
#P fasten 0 1 3 0 367 96 236 96;
#P connect 3 0 4 0;
#P connect 4 0 1 0;
#P fasten 2 0 1 0 285 141 236 141;
#P connect 3 1 2 0;
#P pop;
#P newobj 532 259 69 196617 p clock_stuff;
#P objectname "sub patch[1]";
#N vpatcher 10 59 610 459;
#P window setfont "Sans Serif" 9.;
#P window linecount 1;
#P comment 50 158 140 196617 Max help patch:;
#P newex 297 273 45 196617 pcontrol;
#P newex 297 251 100 196617 sprintf help %s.mod;
#P newex 297 225 220 196617 t $2;
#P window linecount 2;
#P newex 50 184 257 196617 jmod.message.mxt $1 /documentation/help @range n/a @description "Open the help patch for the module.";
#P message 293 86 130 196617 \; max htmlref $2;
#P newex 50 50 292 196617 jmod.message.mxt $1 /documentation/html @range n/a @description "Open the online html reference for this module.";
#P window linecount 0;
#P comment 50 24 140 196617 HTML documentation:;
#P connect 1 1 2 0;
#P connect 3 1 4 0;
#P connect 4 0 5 0;
#P connect 5 0 6 0;
#P pop;
#P newobj 532 201 110 196617 p view_documentation;
#N vpatcher 10 59 610 459;
#P window setfont "Sans Serif" 9.;
#P window linecount 1;
#P newex 354 223 140 196617 prepend UI_FREEZE ui_freeze;
#P newex 354 245 94 196617 s $1_FROM_MHUB;
#P newex 166 88 20 196617 t b;
#P window linecount 2;
#P newex 50 50 294 196617 jmod.message $1 /ui/refresh @type msg_bang @description "Update displayed values for module to reflect current state.";
#P objectname jmod.parameter[2];
#P window linecount 1;
#P newex 166 109 119 196617 send $1_display_update;
#P newex 176 208 126 196617 send $1_freeze_display;
#P toggle 176 190 15 0;
#P window linecount 3;
#P newex 50 139 314 196617 jmod.parameter $1 /ui/freeze @type toggle @description "Turn off the updating of user interface elements when parameters change.  This may be done to conserve CPU resources.";
#P objectname jmod.parameter;
#P window linecount 0;
#P comment 354 267 198 196617 The purpose of this is to update displayed state in the module toolbar pop-up menu;
#P fasten 5 1 6 0 339 85 171 85;
#P connect 6 0 4 0;
#P fasten 1 1 2 0 359 185 181 185;
#P fasten 2 0 3 0 181 204 181 204;
#P connect 1 1 8 0;
#P connect 8 0 7 0;
#P pop;
#P newobj 532 230 128 196617 p /ui/freeze_and_refresh;
#P objectname "sub patch";
#N vpatcher 10 59 556 397;
#P window setfont "Sans Serif" 9.;
#P window linecount 1;
#P newex 316 87 51 196617 zl slice 1;
#P window linecount 0;
#P newex 254 87 51 196617 zl slice 1;
#P window linecount 1;
#P newex 129 205 98 196617 if $i1==1 then bang;
#P newex 129 178 34 196617 zl len;
#P inlet 254 47 15 0;
#P newex 295 272 47 196617 forward;
#P newex 342 174 104 196617 route MODULE_TITLE;
#P newex 316 200 36 196617 zl reg;
#P newex 342 153 94 196617 r $1_FROM_MHUB;
#P newex 316 112 169 196617 t b s;
#P newex 316 226 169 196617 sprintf send /jmod_to%s%s;
#P window linecount 0;
#P comment 21 173 100 196617 This is required for osc messages with no arguments to be passed.;
#P connect 7 0 8 0;
#P connect 8 0 9 0;
#P connect 7 0 10 0;
#P connect 1 0 6 0;
#P connect 9 0 6 0;
#P connect 10 1 6 0;
#P connect 7 0 11 0;
#P connect 11 0 2 0;
#P connect 2 0 4 0;
#P connect 4 0 1 0;
#P connect 3 0 5 0;
#P connect 5 0 4 1;
#P connect 2 1 1 1;
#P pop;
#P newobj 308 216 93 196617 p send_instruction;
#N vpatcher 10 59 613 580;
#P window setfont "Sans Serif" 9.;
#P window linecount 0;
#P comment 334 398 121 196617 Instant remote reporting;
#P newex 334 349 92 196617 zl join;
#P newex 334 328 72 196617 sprintf %s%s;
#P newex 334 372 131 196617 s jmod.remote.fromModule;
#P newex 34 197 98 196617 if $i1==1 then bang;
#P newex 34 165 34 196617 zl len;
#P window linecount 1;
#P newex 224 103 202 196617 zl slice 1;
#P window linecount 0;
#P newex 169 103 51 196617 zl slice 1;
#P inlet 169 66 15 0;
#P newex 210 347 47 196617 forward;
#P window linecount 1;
#P newex 250 234 104 196617 route MODULE_TITLE;
#P newex 224 260 36 196617 zl reg;
#P newex 250 213 94 196617 r $1_FROM_MHUB;
#P newex 224 146 182 196617 t b s;
#P newex 224 286 182 196617 sprintf send /jmod_from%s%s;
#P connect 6 0 9 0;
#P connect 9 0 10 0;
#P connect 6 0 7 0;
#P connect 0 0 5 0;
#P connect 7 1 5 0;
#P connect 10 0 5 0;
#P connect 6 0 8 0;
#P connect 8 0 1 0;
#P connect 1 0 3 0;
#P connect 3 0 0 0;
#P connect 2 0 4 0;
#P connect 4 0 3 1;
#P connect 3 0 12 0;
#P connect 12 0 13 0;
#P connect 13 0 11 0;
#P connect 1 1 0 1;
#P connect 1 1 12 1;
#P connect 8 1 13 1;
#P pop;
#P newobj 93 520 72 196617 p unique_send;
#P newex 104 363 93 196617 s $1_FROM_MHUB;
#P newex 104 342 42 196617 t BUILD;
#P newex 104 321 57 196617 sel done;
#P newex 151 342 104 196617 prepend ATTRIBUTES;
#P newex 83 405 76 196617 r $1_feedback;
#N vpatcher 34 59 634 459;
#P outlet 98 62 15 0;
#P inlet 98 33 15 0;
#P connect 0 0 1 0;
#P pop;
#P newobj 71 482 37 196617 p thru;
#N vpatcher 45 275 781 578;
#P window setfont "Sans Serif" 9.;
#P window linecount 1;
#P newex 204 119 104 196617 route MODULE_TITLE;
#P newex 204 99 94 196617 r $1_FROM_MHUB;
#P newex 404 58 118 196617 r jmod.remote.state.get;
#P newex 404 114 133 196617 s jmod.remote.state.return;
#P newex 34 57 223 196617 jmod.route @searchstring "0" @partialmatch 1;
#P newex 140 139 74 196617 jmod.oscroute;
#N vpatcher 297 77 1100 650;
#P window setfont "Sans Serif" 9.;
#P window linecount 1;
#P comment 272 137 384 196617 4) Query all registered parameters for current value;
#P comment 272 117 384 196617 3) Provide the name of the module;
#P comment 272 96 384 196617 2) Update display. This implicitly also update the internal coll storing current state;
#P newex 165 74 101 196617 send $1_pattr_bang;
#P window linecount 0;
#P newex 147 93 119 196617 send $1_display_update;
#P window linecount 1;
#P newex 161 368 36 196617 zl reg;
#P window linecount 0;
#P newex 416 430 35 196617 t cr b;
#P newex 467 329 89 196617 prepend # Module;
#P newex 441 455 36 196617 zl reg;
#P window linecount 1;
#P newex 467 287 104 196617 route MODULE_TITLE;
#P newex 467 266 94 196617 r $1_FROM_MHUB;
#P window linecount 2;
#P comment 277 226 109 196617 Dump all current parameter values;
#P window linecount 1;
#P newex 161 251 68 196617 route symbol;
#N coll $1_registered_parameters 1;
#P newobj 111 225 161 196617 coll $1_registered_parameters 1;
#P outlet 161 517 15 0;
#P window linecount 0;
#P newex 161 345 20 196617 t b;
#P newex 161 414 113 196617 zl join;
#P newex 223 345 51 196617 zl slice 1;
#P newex 161 391 72 196617 sprintf %s%s;
#P newex 349 347 30 196617 t tab;
#P inlet 111 27 15 0;
#P newex 131 345 25 196617 t cr;
#P newex 111 52 64 196617 t dump b b b;
#N coll $1_state 1;
#P newobj 161 280 79 196617 coll $1_state 1;
#P comment 455 226 141 196617 Only retrieve parameters \, not messages from the module;
#P comment 272 75 288 196617 1) Provoke output from pattr object in jmod.parameter(.gain);
#P connect 5 0 3 0;
#P connect 3 0 12 0;
#P connect 2 0 4 0;
#P connect 3 2 21 0;
#P connect 12 1 13 0;
#P connect 13 0 2 0;
#P connect 2 0 10 0;
#P connect 10 0 20 0;
#P connect 20 0 7 0;
#P connect 7 0 9 0;
#P connect 4 0 11 0;
#P fasten 6 0 11 0 354 494 166 494;
#P connect 9 0 11 0;
#P fasten 17 0 11 0 446 494 166 494;
#P fasten 19 0 11 0 421 494 166 494;
#P connect 3 3 22 0;
#P fasten 16 0 20 1 472 319 192 319;
#P lcolor 1;
#P connect 2 0 8 0;
#P connect 8 0 7 1;
#P connect 8 1 9 1;
#P connect 2 0 6 0;
#P fasten 3 1 19 0 134 193 421 193;
#P connect 19 1 17 0;
#P connect 15 0 16 0;
#P connect 16 0 18 0;
#P connect 18 0 17 1;
#P pop;
#P newobj 404 86 64 196617 p dumpState;
#N comlet connect to left inlet of module;
#P outlet 140 167 15 0;
#P newex 34 29 118 196617 r jmod.remote.toModule;
#P window linecount 3;
#P comment 219 140 150 196617 If no argument providing a OSC name has been provided to the module \, it will not be listening.;
#P connect 1 0 5 0;
#P connect 5 1 4 0;
#P connect 4 0 2 0;
#P connect 8 0 9 0;
#P connect 9 0 4 1;
#P connect 7 0 3 0;
#P connect 3 0 6 0;
#P pop;
#P newobj 193 93 122 196617 p remote_communication;
#P newex 364 405 75 196617 r $1_message;
#N vpatcher 114 48 1152 486;
#P window setfont "Sans Serif" 9.;
#P window linecount 0;
#P newex 359 319 21 196617 b 1;
#P outlet 359 383 15 0;
#P message 359 363 207 196617 /autodoc_complete bang;
#P window linecount 1;
#P newex 359 275 87 196617 t l l;
#P newex 359 341 27 196617 qlim;
#P newex 359 297 70 196617 route write;
#P window linecount 0;
#P newex 120 128 70 196617 prepend setfile;
#P newex 103 105 27 196617 t b l;
#P newex 648 275 180 196617 jmod.return.mxt $1 /module/size @description "Size of module.";
#P newex 867 208 49 196617 t getsize;
#P newex 679 171 198 196617 jmod.message $1 /module/size/get @description "Get size of module.";
#P newex 460 185 87 196617 jmod.init.mxt $1;
#P newex 283 193 134 196617 prepend module_description;
#P newex 283 170 160 196617 route description;
#P window linecount 1;
#P message 460 208 164 196617 title $2;
#P window linecount 0;
#P newex 283 147 94 196617 route ATTRIBUTES;
#P newex 283 121 93 196617 r $1_FROM_MHUB;
#P inlet 70 46 15 0;
#P newex 70 83 43 196617 sel bang;
#P window linecount 1;
#P newex 436 298 40 196617 text;
#P newex 70 253 589 196617 js jmod.js_docmaker.js;
#P newex 145 193 129 196617 r $1_register_doc;
#P newex 143 332 118 196617 s $1_query_doc;
#P newex 143 311 68 196617 route symbol;
#N coll $1_registered_parameters 1;
#P newobj 70 275 229 196617 coll $1_registered_parameters 1;
#P connect 7 0 6 0;
#P connect 17 0 4 0;
#P connect 18 0 4 0;
#P connect 6 0 4 0;
#P fasten 11 1 4 0 438 234 75 234;
#P fasten 3 0 4 0 150 231 75 231;
#P fasten 12 0 4 0 288 234 75 234;
#P fasten 15 0 4 0 872 237 75 237;
#P fasten 10 0 4 0 465 234 75 234;
#P connect 4 0 0 0;
#P connect 6 1 17 0;
#P connect 17 1 18 0;
#P connect 0 1 1 0;
#P connect 1 0 2 0;
#P connect 8 0 9 0;
#P connect 9 0 11 0;
#P connect 11 0 12 0;
#P connect 4 1 21 0;
#P connect 21 0 19 0;
#P connect 19 0 24 0;
#P connect 24 0 20 0;
#P connect 20 0 22 0;
#P connect 22 0 23 0;
#P connect 21 1 5 0;
#P connect 13 0 10 0;
#P connect 4 2 16 0;
#P connect 14 1 15 0;
#P pop;
#P newobj 236 170 51 196617 p autodoc;
#P window linecount 2;
#P newex 104 283 278 196617 patcherargs @size 1U @algorithm_type poly @module_type audio @skin default @description "No info provided.";
#P window linecount 1;
#N vpatcher 24 74 444 306;
#P window setfont "Sans Serif" 9.;
#P window linecount 1;
#P newex 56 124 35 196617 t open;
#P window linecount 4;
#P newex 57 48 326 196617 jmod.message.mxt $1 /module/view_internals @type n/a @range n/a @description "Attempts to open the internal algorithm for viewing.  This works for most modules.  Some modules may choose to cloak the algorithms - preventing this message from functioning.";
#P outlet 56 152 15 0;
#P fasten 1 1 2 0 364 118 61 118;
#P connect 2 0 0 0;
#P pop;
#P newobj 315 486 85 196617 p view_internals;
#N vpatcher 175 173 632 687;
#P window setfont "Sans Serif" 9.;
#P newex 20 286 54 196617 jmod.thru;
#P newex 104 320 60 196617 s $1_name;
#P window linecount 1;
#P newex 57 242 64 196617 sprintf /%s;
#P newex 57 222 51 196617 tosymbol;
#P comment 69 196 241 196617 add a slash if it is missing...;
#P newex 57 70 27 196617 t l l;
#P window linecount 0;
#P newex 74 150 27 196617 1;
#P window linecount 1;
#P newex 20 194 47 196617 gate 2 1;
#P window linecount 0;
#P newex 102 150 21 196617 t 2;
#P newex 74 130 38 196617 sel 47;
#P window linecount 1;
#P newex 74 90 40 196617 atoi;
#P window linecount 0;
#P newex 74 110 51 196617 zl slice 1;
#P window linecount 1;
#P newex 54 357 48 196617 loadbang;
#P window linecount 0;
#P message 54 379 108 196617 send bang to jmod.init;
#P inlet 57 50 15 0;
#P window linecount 1;
#P newex 20 405 114 196617 prepend MODULE_TITLE;
#P newex 20 441 93 196617 s $1_FROM_MHUB;
#P window linecount 0;
#P comment 4 26 210 196617 set title of module in top bar of gui;
#P comment 113 133 86 196617 ascii code for '/';
#P comment 164 361 147 196617 warn users that the module is not initialized for use yet!;
#P comment 116 92 241 196617 Check to make sure the string starts with a slash...;
#P connect 12 0 13 0;
#P connect 14 0 13 0;
#P connect 18 0 20 0;
#P connect 13 0 20 0;
#P connect 20 0 5 0;
#P connect 7 0 5 0;
#P connect 5 0 4 0;
#P connect 8 0 7 0;
#P connect 6 0 15 0;
#P connect 15 0 13 1;
#P connect 13 1 17 0;
#P connect 17 0 18 0;
#P connect 15 1 10 0;
#P connect 10 0 9 0;
#P connect 9 0 11 0;
#P connect 11 0 14 0;
#P connect 11 1 12 0;
#P connect 20 0 19 0;
#P pop;
#P newobj 181 170 35 196617 p title;
#P newex 95 93 90 196617 r $1_FROM_MGUI;
#P comment 503 519 100 196617 to pattrstorage;
#N comlet to pattrstorage;
#P outlet 484 519 15 0;
#N comlet connect to pattrstorage;
#P inlet 484 99 15 0;
#N comlet connect to a poly~ object;
#P outlet 274 519 15 0;
#P window linecount 3;
#P newex 71 119 232 196617 route _MGUI_FEEDBACK _GET_MODULE_INSTALL_SIZE MODULE_TITLE /documentation/generate;
#P window linecount 1;
#P newex 291 193 27 196617 t l l;
#P newex 347 197 100 196617 send $1_instruction;
#N comlet module feedback - connect to 1st outlet;
#P outlet 71 519 15 0;
#N comlet connect to mgui (1st outlet);
#P inlet 71 94 15 0;
#N vpatcher 212 44 779 431;
#P window setfont "Sans Serif" 9.;
#P window linecount 0;
#P newex 71 75 408 196617 jmod.return $1 /preset/out @description "returns the ouptput of pattrstorage object";
#P window linecount 2;
#P newex 317 247 78 196617 t MENU_REBUILD;
#P window linecount 1;
#P newex 344 158 112 196617 prepend NEW_PRESETS;
#P newex 344 311 93 196617 s $1_FROM_MHUB;
#P newex 290 128 65 196617 route 0 done;
#P window linecount 2;
#P newex 55 247 110 196617 t getslotnamelist NEW_PRESETS_START;
#P window linecount 1;
#P newex 55 97 480 196617 route read slotname;
#P window setfont "Sans Serif" 12.;
#P comment 55 15 103 196620 Preset Handling;
#P window setfont "Sans Serif" 9.;
#P comment 78 44 100 196617 from pattrstorage;
#N comlet from pattrstorage;
#P inlet 55 43 15 0;
#P outlet 55 314 15 0;
#P connect 1 0 4 0;
#P connect 4 0 5 0;
#P connect 5 0 0 0;
#P connect 1 0 10 0;
#P connect 4 1 6 0;
#P connect 6 1 9 0;
#P connect 6 2 8 0;
#P connect 9 0 7 0;
#P connect 5 1 7 0;
#P connect 8 0 7 0;
#P pop;
#P newobj 484 370 179 196617 p preset_handling_from_pattrstorage;
#N vpatcher 213 54 933 421;
#P window setfont "Sans Serif" 9.;
#P window linecount 1;
#P message 476 113 14 196617 5;
#P message 380 113 14 196617 4;
#P message 284 113 14 196617 1;
#P window linecount 0;
#P newex 267 140 27 196617 int;
#P newex 284 87 252 196617 sel audio audio.no_panel audio.ambisonic control video;
#P window linecount 1;
#P newex 58 62 463 196617 route algorithm_type module_type;
#P window linecount 0;
#N vpatcher 644 52 1157 457;
#P window setfont "Sans Serif" 9.;
#P comment 106 33 100 196617 'mute' just passes through;
#P outlet 226 356 15 0;
#P inlet 55 45 15 0;
#P newex 55 230 27 196617 qlim;
#P message 70 258 14 196617 1;
#B color 4;
#P message 55 202 14 196617 2;
#B color 4;
#P message 112 258 14 196617 1;
#B color 4;
#P message 97 202 14 196617 3;
#B color 4;
#P message 154 258 14 196617 1;
#B color 4;
#P message 139 202 14 196617 0;
#B color 4;
#P number 71 284 35 9 0 0 0 3 0 0 0 59 62 255 222 222 222 0 0 0;
#P newex 139 180 40 196617 sel 1 0;
#B color 4;
#P newex 97 180 40 196617 sel 1 0;
#B color 4;
#P newex 55 180 40 196617 sel 1 0;
#B color 4;
#P message 71 302 112 196617 /direct outputmode \$1;
#B color 4;
#P newex 55 70 183 196617 jmod.oscroute /video/bypass /video/freeze /video/mute;
#P connect 13 0 0 0;
#P connect 0 0 2 0;
#P connect 2 0 10 0;
#P lcolor 5;
#P fasten 6 0 12 0 144 223 60 223;
#P fasten 8 0 12 0 102 223 60 223;
#P connect 10 0 12 0;
#P connect 2 1 11 0;
#P lcolor 5;
#P fasten 12 0 5 0 60 279 76 279;
#P connect 11 0 5 0;
#P lcolor 5;
#P fasten 9 0 5 0 117 276 76 276;
#P lcolor 5;
#P fasten 7 0 5 0 159 276 76 276;
#P lcolor 5;
#P connect 5 0 1 0;
#P lcolor 5;
#P connect 0 1 3 0;
#P connect 3 0 8 0;
#P lcolor 5;
#P connect 3 1 9 0;
#P lcolor 5;
#P connect 0 2 4 0;
#P connect 4 0 6 0;
#P lcolor 5;
#P connect 4 1 7 0;
#P lcolor 5;
#P connect 0 3 14 0;
#P connect 1 0 14 0;
#P pop;
#P newobj 554 215 73 196617 p parse_jitter;
#N vpatcher 90 257 281 401;
#P window setfont "Sans Serif" 9.;
#P comment 57 36 100 196617 'mute' just passes through;
#P outlet 34 95 15 0;
#P inlet 34 36 15 0;
#P connect 0 0 1 0;
#P pop;
#P newobj 430 215 80 196617 p parse_control;
#P message 174 113 14 196617 5;
#P message 145 113 14 196617 4;
#N vpatcher 503 182 1028 685;
#P window setfont "Sans Serif" 9.;
#P newex 233 135 78 196617 prepend mute 0;
#P newex 59 112 59 196617 jmod.round;
#P newex 77 194 27 196617 - 2;
#P newex 28 168 59 196617 sel setitem;
#P newex 28 137 88 196617 jmod.core.sr.mxt;
#P newex 28 88 72 196617 route int float;
#P newex 182 257 215 196617 jmod.post.mxt "parse_poly: bad sample rate";
#P message 161 291 27 196617 up 4;
#P message 140 316 27 196617 up 2;
#P message 77 377 41 196617 down 4;
#P message 98 357 41 196617 down 2;
#P message 119 334 41 196617 down 1;
#P newex 77 230 119 196617 sel -2 -1 0 1 2;
#P newex 28 46 421 196617 jmod.oscroute /audio/sample_rate /audio/mute;
#P outlet 233 417 15 0;
#P inlet 28 26 15 0;
#P connect 0 0 2 0;
#P connect 2 0 10 0;
#P connect 14 0 11 0;
#P connect 10 0 11 0;
#P connect 11 0 12 0;
#P connect 10 1 14 0;
#P connect 12 1 13 0;
#P connect 13 0 3 0;
#P connect 3 0 6 0;
#P connect 3 1 5 0;
#P connect 3 2 4 0;
#P connect 3 3 7 0;
#P connect 3 4 8 0;
#P connect 3 5 9 0;
#P connect 2 1 15 0;
#P fasten 2 2 1 0 443 400 238 400;
#P connect 7 0 1 0;
#P connect 8 0 1 0;
#P connect 6 0 1 0;
#P connect 5 0 1 0;
#P connect 4 0 1 0;
#P connect 15 0 1 0;
#P pop;
#P newobj 58 215 65 196617 p parse_poly;
#N vpatcher 237 245 596 667;
#P window setfont "Sans Serif" 9.;
#P newex 170 139 140 196617 jmod.pass @stripnonmatches 1;
#P newex 51 109 59 196617 jmod.round;
#P newex 20 185 27 196617 - 2;
#P newex 20 158 59 196617 sel setitem;
#P newex 20 88 72 196617 route int float;
#P newex 20 137 88 196617 jmod.core.sr.mxt;
#P newex 68 239 214 196617 jmod.post.mxt "parse_blue: bad sample rate";
#P message 20 310 72 196617 downsample 2;
#P message 36 292 72 196617 downsample 1;
#P message 52 274 72 196617 downsample 0;
#P newex 20 215 59 196617 sel -2 -1 0;
#P newex 20 52 220 196617 jmod.oscroute /audio/sample_rate /audio/gain/midi /audio/meters/freeze;
#P outlet 170 360 15 0;
#P inlet 20 27 15 0;
#P connect 0 0 2 0;
#P connect 2 0 9 0;
#P connect 12 0 8 0;
#P connect 9 0 8 0;
#P connect 8 0 10 0;
#P connect 10 1 11 0;
#P connect 11 0 3 0;
#P connect 3 0 6 0;
#P connect 3 1 5 0;
#P connect 9 1 12 0;
#P connect 3 2 4 0;
#P connect 3 3 7 0;
#P connect 2 3 13 0;
#P connect 4 0 1 0;
#P connect 5 0 1 0;
#P connect 6 0 1 0;
#P connect 13 0 1 0;
#P pop;
#P newobj 182 215 65 196617 p parse_blue;
#P message 116 113 14 196617 3;
#P newex 58 193 506 196617 gate 5 1;
#P newex 58 268 35 196617 zl reg;
#P message 87 113 14 196617 2;
#P newex 58 87 213 196617 sel poly blue none control jitter video default;
#P message 58 113 14 196617 1;
#P inlet 554 40 15 0;
#P inlet 58 40 15 0;
#P outlet 58 299 15 0;
#P connect 1 0 15 0;
#P connect 15 0 4 0;
#P connect 4 0 3 0;
#P fasten 12 0 7 0 179 134 63 134;
#P fasten 11 0 7 0 150 134 63 134;
#P fasten 8 0 7 0 121 134 63 134;
#P connect 3 0 7 0;
#P fasten 5 0 7 0 92 134 63 134;
#P fasten 17 0 7 0 272 163 63 163;
#P connect 7 0 10 0;
#P connect 9 0 6 0;
#P connect 10 0 6 0;
#P connect 14 0 6 0;
#P connect 13 0 6 0;
#P fasten 7 2 0 0 311 292 63 292;
#P connect 6 0 0 0;
#P connect 4 1 5 0;
#P connect 4 2 8 0;
#P connect 4 3 11 0;
#P connect 4 4 12 0;
#P connect 4 5 12 0;
#P connect 7 1 9 0;
#P connect 4 6 17 0;
#P connect 15 1 16 0;
#P connect 16 0 18 0;
#P connect 18 0 17 1;
#P connect 19 0 17 1;
#P connect 20 0 17 1;
#P connect 16 3 19 0;
#P connect 16 2 19 0;
#P connect 16 1 19 0;
#P connect 7 3 13 0;
#P connect 16 4 20 0;
#P connect 2 0 7 1;
#P connect 7 4 14 0;
#P pop;
#P newobj 274 448 100 196617 p algorithm_handler;
#N vpatcher 14 59 407 339;
#P origin 0 -8;
#P window setfont "Sans Serif" 9.;
#P window linecount 1;
#P newex 101 138 68 196617 route symbol;
#P window linecount 2;
#P newex 101 185 130 196617 prepend /module/parameter_name;
#P window linecount 1;
#P newex 51 84 39 196617 t dump;
#N coll $1_registered_parameters 1;
#P newobj 51 108 161 196617 coll $1_registered_parameters 1;
#P window linecount 4;
#P newex 50 21 306 196617 jmod.message.mxt $1 /module/parameter_names/get @type n/a @range n/a @description "Returns a dump of symbols out the feedback outlet with the names of parameters accessible in this module.";
#P outlet 101 224 15 0;
#P fasten 1 1 3 0 351 80 56 80;
#P connect 3 0 2 0;
#P connect 2 1 5 0;
#P connect 5 1 4 0;
#P connect 5 0 4 0;
#P connect 4 0 0 0;
#P pop;
#P newobj 97 431 98 196617 p parameter_names;
#N vpatcher 93 54 1103 576;
#P window setfont "Sans Serif" 9.;
#P window linecount 1;
#P newex 124 441 71 196617 prepend store;
#P window linecount 3;
#P newex 124 392 346 196617 jmod.message.mxt $1 /preset/store @type msg_int @description "Store a preset by number in memory.  All presets present in memory will be written to disk when you send a save_settings message to the module.";
#P window linecount 1;
#P newex 105 368 73 196617 prepend recall;
#P window linecount 2;
#P newex 105 329 346 196617 jmod.message.mxt $1 /preset/recall @type msg_int @description "Recall a preset by number - you can also choose presets from the module menu.";
#P newex 523 280 388 196617 jmod.message.mxt $1 /preset/direct @type generic @range n/a @description "Access directly to the pattrstorage object. See Max Reference.";
#P window linecount 1;
#P message 168 276 121 196617 name $2 \, outputmode 0;
#P window linecount 2;
#P comment 471 380 368 196617 The first outlet is intended for display update only \, and has the message qlim-ed and prepended by "set". 2nd outlet returns proper message instantly.;
#B color 12;
#P window linecount 1;
#P comment 471 366 322 196617 Here we have to use the 2nd outlet of jmod.message \, not the first.;
#B color 12;
#P newex 121 190 100 196617 sprintf read %s.xml;
#P newex 508 211 45 196617 sel bang;
#P newex 332 199 45 196617 sel bang;
#N vpatcher 287 116 693 532;
#P origin 0 -110;
#P window setfont "Sans Serif" 9.;
#P newex 107 229 50 196617 tosymbol;
#P newex 232 230 50 196617 tosymbol;
#P inlet 147 34 15 0;
#P inlet 130 34 15 0;
#P newex 177 95 192 196617 jmod.route @searchstring save_settings;
#P newex 232 273 27 196617 t l b;
#P message 249 308 42 196617 store 1;
#P newex 177 225 49 196617 t write b;
#P newex 192 205 50 196617 zl slice 1;
#P newex 232 253 72 196617 prepend write;
#P newex 177 125 50 196617 t l l;
#P newex 192 185 35 196617 zl reg;
#P newex 177 165 40 196617 sel 1 2;
#P newex 177 145 33 196617 zl len;
#P newex 107 273 27 196617 t b l;
#P message 52 307 35 196617 recall 1;
#P newex 52 225 44 196617 t b read;
#P newex 67 205 50 196617 zl slice 1;
#P newex 107 253 65 196617 prepend read;
#P newex 52 125 50 196617 t l l;
#P newex 67 185 35 196617 zl reg;
#P newex 52 165 40 196617 sel 1 2;
#P newex 52 145 33 196617 zl len;
#P newex 52 72 189 196617 jmod.route @searchstring load_settings;
#P outlet 86 367 15 0;
#P inlet 52 45 15 0;
#P connect 0 0 2 0;
#P connect 2 0 6 0;
#P connect 6 0 3 0;
#P connect 3 0 4 0;
#P connect 22 0 9 0;
#P connect 4 0 9 0;
#P connect 9 0 10 0;
#P connect 11 0 10 0;
#P connect 4 1 5 0;
#P connect 5 0 8 0;
#P fasten 18 0 1 0 182 358 91 358;
#P fasten 20 0 1 0 237 358 91 358;
#P fasten 19 0 1 0 254 358 91 358;
#P connect 9 1 1 0;
#P connect 10 0 1 0;
#P fasten 11 1 1 0 129 358 91 358;
#P connect 6 1 5 1;
#P connect 8 1 25 0;
#P connect 25 0 7 0;
#P connect 7 0 11 0;
#P connect 2 1 21 0;
#P connect 21 0 15 0;
#P connect 15 0 12 0;
#P connect 12 0 13 0;
#P connect 23 0 18 0;
#P connect 13 0 18 0;
#P connect 13 1 14 0;
#P connect 14 0 17 0;
#P connect 15 1 14 1;
#P connect 17 1 24 0;
#P connect 24 0 16 0;
#P connect 16 0 20 0;
#P connect 20 1 19 0;
#P fasten 18 1 19 0 221 303 254 303;
#P lcolor 2;
#P pop;
#P newobj 311 293 53 196617 p settings;
#P newex 367 222 105 196617 prepend load_settings;
#P window linecount 3;
#P newex 332 103 306 196617 jmod.message.mxt $1 /preset/load @type msg_symbol @range n/a @description "Open an xml-preset file and recall the first preset in that file.  An optional argument defines the file to open.";
#P window linecount 1;
#P newex 543 234 110 196617 prepend save_settings;
#P window linecount 2;
#P newex 509 163 388 196617 jmod.message.mxt $1 /preset/save @type msg_symbol @range n/a @description "Write an xml-preset file to disk.  An optional argument defines the file to open.";
#P newex 191 40 361 196617 jmod.message.mxt $1 /preset/default @type n/a @range n/a @description "Open the default preset file and recall the first preset in that file.";
#P comment 10 160 62 196617 load the first preset;
#P window linecount 1;
#P message 76 160 44 196617 recall 1;
#P message 121 160 110 196617 $2;
#P window linecount 2;
#P comment 139 213 100 196617 read the default preset(s);
#P window linecount 1;
#P newex 76 97 191 196617 t b b b;
#P newex 76 48 87 196617 jmod.init.mxt $1;
#P outlet 76 472 15 0;
#P window setfont "Sans Serif" 12.;
#P window linecount 0;
#P comment 471 346 143 196620 // Important:;
#B color 12;
#P connect 2 0 3 0;
#P fasten 8 1 3 0 547 84 81 84;
#P connect 3 0 6 0;
#P fasten 20 1 1 0 906 319 81 319;
#P fasten 19 0 1 0 173 314 81 314;
#P fasten 13 0 1 0 316 317 81 317;
#P connect 6 0 1 0;
#P fasten 16 0 1 0 126 311 81 311;
#P fasten 24 0 1 0 129 461 81 461;
#P fasten 22 0 1 0 110 425 81 425;
#P fasten 21 1 22 0 446 362 110 362;
#P fasten 3 1 5 0 171 133 126 133;
#P connect 5 0 16 0;
#P fasten 23 1 24 0 465 436 129 436;
#P fasten 3 2 19 0 261 266 173 266;
#P fasten 12 0 13 0 372 258 316 258;
#P fasten 10 0 13 0 548 261 316 261;
#P fasten 11 1 14 0 633 155 337 155;
#P connect 14 0 13 1;
#P fasten 15 0 13 2 513 287 358 287;
#P connect 14 1 12 0;
#P fasten 9 1 15 0 892 206 513 206;
#P connect 15 1 10 0;
#P pop;
#P newobj 503 433 165 196617 p preset_handling_to_pattrstorage;
#N vpatcher 14 59 347 414;
#P origin 68 0;
#P window setfont "Sans Serif" 9.;
#P newex 39 78 51 196617 route list;
#P message 129 171 52 196617 target \$1;
#P newex 112 150 27 196617 t b i;
#P newex 112 221 117 196617 zl reg;
#P newex 112 130 117 196617 zl slice 1;
#P window setfont "Sans Serif" 12.;
#P comment 47 28 131 196620 Poly Handling;
#P inlet 39 58 15 0;
#P outlet 80 284 15 0;
#P connect 1 0 7 0;
#P connect 7 1 0 0;
#P connect 4 0 0 0;
#P fasten 6 0 0 0 134 208 85 208;
#P connect 7 0 3 0;
#P connect 3 0 5 0;
#P connect 5 0 4 0;
#P connect 5 1 6 0;
#P connect 3 1 4 1;
#P pop;
#P newobj 291 170 78 196617 p poly_handling;
#N vpatcher 433 101 863 489;
#P inlet 47 42 15 0;
#P window setfont "Sans Serif" 9.;
#P window linecount 1;
#P newex 47 72 294 196617 t l l;
#P newex 47 252 294 196617 zl reg;
#P window linecount 2;
#P newex 47 286 125 196617 jmod.post.mxt $2-SyntaxError;
#P window linecount 1;
#P newex 47 226 31 196617 sel 0;
#P newex 47 206 27 196617 i;
#P newex 47 118 44 196617 t b l 0;
#P newex 47 96 50 196617 zl slice 1;
#N coll $1_registered_parameters 1;
#P newobj 64 160 203 196617 coll $1_registered_parameters 1;
#P window linecount 0;
#N vpatcher 215 208 1028 675;
#P window setfont "Sans Serif" 9.;
#P window linecount 2;
#P comment 121 337 256 196617 First all allowed messages are sorted alphabeitcally \, and then dumped so that the menu can be built;
#P window linecount 1;
#P newex 123 103 65 196617 t b b clear 1;
#P window linecount 0;
#P newex 123 260 155 196617 substitute symbol PARAMETERS;
#P message 123 199 87 196617 sort -1 -1 \, dump;
#N coll $1_registered_parameters;
#P newobj 123 223 199 196617 coll $1_registered_parameters;
#P window linecount 1;
#P newex 123 283 122 196617 s $1_FROM_MHUB;
#P newex 410 387 71 196617 prepend store;
#P newex 410 366 35 196617 zl rev;
#P newex 410 345 48 196617 zl join;
#P newex 410 240 48 196617 t b l;
#N counter;
#X flags 0 0;
#P newobj 410 322 352 196617 counter;
#P newex 410 220 159 196617 receive $1_register;
#P newex 410 197 132 196617 send $1_query;
#P newex 123 80 124 196617 jmod.init.mxt $1;
#P outlet 388 413 15 0;
#P window linecount 0;
#P comment 609 204 126 196617 query for valid syntax \, and register in coll;
#P comment 121 307 202 196617 This part is used for the pop-up umenu display of permitted syntax in jmod.gui.;
#P connect 3 0 15 0;
#P connect 15 0 13 0;
#P connect 13 0 12 0;
#P fasten 12 1 14 0 191 247 128 247;
#P connect 14 0 11 0;
#P fasten 15 2 2 0 164 130 393 130;
#P connect 10 0 2 0;
#P fasten 15 1 4 0 146 137 415 137;
#P connect 5 0 7 0;
#P connect 7 0 6 0;
#P connect 6 0 8 0;
#P connect 8 0 9 0;
#P connect 9 0 10 0;
#P connect 7 1 8 1;
#P fasten 15 3 6 2 182 125 585 125;
#P pop;
#P newobj 111 119 91 196617 p syntax_register;
#B color 12;
#P comment 205 116 124 196617 query for valid syntax \, and register in coll;
#B color 12;
#P comment 69 50 114 196617 check if syntax is valid;
#P connect 11 0 10 0;
#P connect 10 0 4 0;
#P connect 4 0 5 0;
#P connect 5 0 6 0;
#P connect 6 0 7 0;
#P connect 7 0 9 0;
#P connect 9 0 8 0;
#P connect 5 1 3 0;
#P connect 2 0 3 0;
#P lcolor 13;
#P connect 3 0 6 1;
#P fasten 5 2 6 1 86 191 69 191;
#P connect 10 1 9 1;
#P pop;
#P newobj 291 237 85 196617 p syntax_handler;
#P comment 503 99 100 196617 from pattrstorage;
#P fasten 16 0 11 0 100 114 76 114;
#P connect 7 0 11 0;
#P fasten 22 0 11 0 198 114 76 114;
#P connect 24 0 23 0;
#P connect 4 0 23 0;
#P fasten 20 0 23 0 241 210 76 210;
#P connect 35 0 23 0;
#P connect 11 0 23 0;
#P connect 23 0 8 0;
#P connect 23 0 29 0;
#P fasten 19 1 26 0 377 316 109 316;
#P connect 26 0 27 0;
#P connect 25 0 28 0;
#P connect 27 0 28 0;
#P connect 26 1 25 0;
#P connect 11 2 17 0;
#P connect 11 3 20 0;
#P fasten 19 1 5 0 377 318 279 318;
#P connect 18 0 12 0;
#P connect 5 0 12 0;
#P connect 11 4 2 0;
#P connect 2 0 10 0;
#P connect 10 1 30 0;
#P connect 21 0 5 1;
#P connect 34 0 5 1;
#P connect 13 0 6 0;
#P connect 6 0 14 0;
#P connect 3 0 14 0;
#P pop;
