max v2;
#N vpatcher 3 68 1015 739;
#P window setfont "Sans Serif" 9.;
#P window linecount 1;
#P hidden newex 560 214 40 196617 * 100.;
#P hidden newex 621 268 40 196617 * 0.01;
#P user jsui 86 192 13 11 0 0 0 jsui_3ddial.js 100 100 200 170 170 170;
#N vpatcher 10 59 610 459;
#P outlet 147 65 15 0;
#P inlet 147 37 15 0;
#P connect 0 0 1 0;
#P pop;
#P hidden newobj 144 428 35 196617 p thru;
#P objectname inlet_1;
#P hidden message 663 268 41 196617 mix \$1;
#P objectname mix;
#P hidden newex 560 233 215 196617 jmod.parameter.mxt $1 mix @ramp_enable 1;
#B color 1;
#P objectname jmod.parameter[5];
#P hidden message 20 388 45 196617 set \$1 0;
#P hidden newex 209 71 22 196617 b 1;
#B color 1;
#P objectname jmod.parameter[4];
#P hidden newex 209 51 173 196617 jmod.message.mxt $1 clear_meters;
#B color 1;
#P objectname jmod.parameter[3];
#P hidden message 384 117 52 196617 defeat \$1;
#P hidden newex 209 96 185 196617 jmod.parameter.mxt $1 defeat_meters;
#B color 1;
#P objectname jmod.parameter[6];
#N thispatcher;
#Q end;
#P hidden newobj 21 505 60 196617 thispatcher;
#P objectname jmod.parameter.mxt[4];
#P hidden newex 135 407 48 196617 route int;
#P objectname route_ob;
#P hidden inlet 228 384 15 0;
#P objectname inlet_2;
#P hidden outlet 228 584 15 0;
#P objectname outlet_2;
#P hidden inlet 278 384 15 0;
#P objectname inlet_4;
#P hidden outlet 278 584 15 0;
#P objectname outlet_4;
#P hidden inlet 328 384 15 0;
#P objectname inlet_6;
#P hidden outlet 328 584 15 0;
#P objectname outlet_6;
#P hidden inlet 378 384 15 0;
#P objectname inlet_8;
#P hidden outlet 378 584 15 0;
#P objectname outlet_8;
#P hidden inlet 428 384 15 0;
#P objectname inlet_10;
#P hidden outlet 428 584 15 0;
#P objectname outlet_10;
#P hidden inlet 478 384 15 0;
#P objectname inlet_12;
#P hidden outlet 478 584 15 0;
#P objectname outlet_12;
#P hidden inlet 528 384 15 0;
#P objectname inlet_14;
#P hidden outlet 528 584 15 0;
#P objectname outlet_14;
#P hidden inlet 578 384 15 0;
#P objectname inlet_16;
#P hidden outlet 578 584 15 0;
#P objectname outlet_16;
#P hidden inlet 628 384 15 0;
#P objectname inlet_18;
#P hidden inlet 678 384 15 0;
#P objectname inlet_20;
#P hidden inlet 728 384 15 0;
#P objectname inlet_22;
#P hidden inlet 778 384 15 0;
#P objectname inlet_24;
#P hidden inlet 828 384 15 0;
#P objectname inlet_26;
#P hidden inlet 878 384 15 0;
#P objectname inlet_28;
#P hidden inlet 928 384 15 0;
#P objectname inlet_30;
#P hidden inlet 978 384 15 0;
#P objectname inlet_32;
#P hidden message 98 454 43 196617 compile;
#P hidden message 51 453 14 196617 3;
#N js jmod.gui.audio-constructor.js;
#P hidden newobj 21 483 155 196617 js jmod.gui.audio-constructor.js;
#P hidden message 114 273 55 196617 bypass \$1;
#P objectname bypass;
#P hidden message 33 411 65 196617 gain_midi \$1;
#P objectname gain_midi;
#P user jmod.meter~ 4 192 82 2;
#P objectname meter_1;
#P hidden newex 258 162 179 196617 jmod.parameter $1 sr @repetitions 0;
#P objectname jmod.parameter.mxt;
#P user jsui 120 192 40 11 0 0 0 jmod.jsui_sr.js 0 20000 0;
#P objectname samprate;
#P hidden number 111 346 35 9 0 0 0 3 0 0 0 74 156 97 222 222 222 0 0 0;
#P hidden newex 20 345 89 196617 pvar gain_master;
#B color 7;
#P hidden newex 20 366 160 196617 jmod.parameter.gain.mxt $1 gain;
#B color 2;
#P objectname jmod.parameter.gain.mxt;
#P hidden newex 258 220 30 196617 == 0;
#P hidden newex 258 200 140 196617 jmod.message.mxt $1 enable;
#B color 1;
#P objectname jmod.parameter[2];
#P hidden newex 258 266 152 196617 jmod.parameter.mxt $1 bypass;
#B color 1;
#P objectname jmod.parameter[1];
#P hidden newex 258 244 143 196617 jmod.parameter.mxt $1 mute;
#B color 1;
#P objectname jmod.parameter;
#P user pictctrl 99 192 11 11 jmod.button.bypass.pct 0 0 1 1 26 0 0 0 11 11 128 0 1 1 1 1;
#P user pictslider 3 197 84 8 0 0 0 0 jmod.slider.knob.gain.pct 1 jmod.slider.bg.gain.pct 1 2113 0 0 157 1. 1.;
#P objectname gain_master;
#P user pictctrl 109 192 11 11 jmod.button.mute.pct 0 0 1 1 26 0 0 0 11 11 128 0 1 1 1 1;
#P user jmod.meter~ 4 195 82 2;
#P objectname meter_2;
#P user pictctrl 0 190 162 15 jmod.bg.audio-component.pct 0 0 1 0 24 0 0 0 162 15 2 0 1 1 1 1;
#P noclick;
#P objectname background;
#P window linecount 4;
#P hidden comment 188 333 108 196617 the int is the number of channels as provided by the attributes/jmod.gui js;
#P hidden inlet 203 384 15 0;
#P hidden outlet 203 584 15 0;
#P objectname outlet_1;
#P hidden inlet 253 384 15 0;
#P objectname inlet_3;
#P hidden outlet 253 584 15 0;
#P objectname outlet_3;
#P hidden inlet 303 384 15 0;
#P objectname inlet_5;
#P hidden outlet 303 584 15 0;
#P objectname outlet_5;
#P hidden inlet 353 384 15 0;
#P objectname inlet_7;
#P hidden outlet 353 584 15 0;
#P objectname outlet_7;
#P hidden inlet 403 384 15 0;
#P objectname inlet_9;
#P hidden outlet 403 584 15 0;
#P objectname outlet_9;
#P hidden inlet 453 384 15 0;
#P objectname inlet_11;
#P hidden outlet 453 584 15 0;
#P objectname outlet_11;
#P hidden inlet 503 384 15 0;
#P objectname inlet_13;
#P hidden outlet 503 584 15 0;
#P objectname outlet_13;
#P hidden inlet 553 384 15 0;
#P objectname inlet_15;
#P hidden outlet 553 584 15 0;
#P objectname outlet_15;
#P hidden inlet 603 384 15 0;
#P objectname inlet_17;
#P hidden inlet 653 384 15 0;
#P objectname inlet_19;
#P hidden inlet 703 384 15 0;
#P objectname inlet_21;
#P hidden inlet 753 384 15 0;
#P objectname inlet_23;
#P hidden inlet 803 384 15 0;
#P objectname inlet_25;
#P hidden inlet 853 384 15 0;
#P objectname inlet_27;
#P hidden inlet 903 384 15 0;
#P objectname inlet_29;
#P hidden inlet 953 384 15 0;
#P objectname inlet_31;
#P hidden connect 74 0 39 0;
#P hidden connect 72 0 39 0;
#P hidden connect 74 0 26 0;
#P hidden connect 72 0 26 0;
#P hidden fasten 75 0 35 0 25 408 13 408 13 339 25 339;
#P hidden connect 35 0 34 0;
#P hidden connect 34 0 75 0;
#P hidden fasten 69 0 42 0 140 434 26 434;
#P hidden connect 43 0 42 0;
#P hidden connect 44 0 42 0;
#P hidden connect 42 0 70 0;
#P hidden connect 34 0 40 0;
#P hidden connect 80 0 79 0;
#P hidden connect 31 0 29 0;
#P hidden connect 33 0 27 0;
#P hidden connect 30 0 27 0;
#P hidden connect 35 0 36 0;
#P hidden connect 29 0 41 0;
#P hidden connect 38 0 37 0;
#P hidden connect 23 0 69 0;
#P hidden connect 69 1 78 0;
#P hidden connect 73 0 74 0;
#P hidden connect 37 0 38 0;
#P hidden connect 32 0 33 0;
#P hidden connect 27 0 30 0;
#P hidden connect 29 0 31 0;
#P hidden connect 71 1 72 0;
#P hidden connect 79 0 81 0;
#P hidden connect 81 0 76 0;
#P hidden connect 76 1 80 0;
#P hidden connect 76 1 77 0;
#P pop;
