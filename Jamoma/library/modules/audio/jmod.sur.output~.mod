max v2;#N vpatcher 75 56 975 486;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P comment 12 43 225 196617 Setup: 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16;#B frgb 172 172 172;#P objectname Setup;#P hidden newex 142 249 21 196617 t 1;#P user ubutton 11 43 231 14 0 0;#N thispatcher;#Q end;#P hidden newobj 165 304 61 196617 thispatcher;#P hidden newex 306 296 47 196617 pcontrol;#P hidden newex 306 272 78 196617 jmod.pass open;#N vpatcher 100 100 260 441;#P origin 0 -8;#P window setfont "Sans Serif" 9.;#P window linecount 0;#P comment 33 18 100 196617 jmod.sur.output~;#P hidden message 16 116 214 196617 window size 100 100 260 441 \, window exec;#P hidden message 16 83 239 196617 window flags nogrow \, savewindow 1 \, window exec;#P hidden message 16 99 158 196617 window flags grow \, window exec;#N thispatcher;#Q window flags nogrow close zoom nofloat;#Q window size 100 100 260 441;#Q window title;#Q window exec;#Q savewindow 1;#Q end;#P hidden newobj 16 139 59 196617 thispatcher;#P hidden message 247 400 123 196617 script bringtofront Setup;#P hidden outlet 247 441 15 0;#P hidden newex 247 354 51 196617 route set;#P hidden newex 378 400 175 196617 prepend script send Setup set Setup:;#P hidden newex 758 175 40 196617 t front;#N thispatcher;#Q end;#P hidden newobj 758 195 61 196617 thispatcher;#P hidden newex 758 155 32 196617 sel 1;#P hidden message 459 223 54 196617 \$1 set \$2;#P hidden newex 247 128 51 196617 route set;#P window linecount 2;#P hidden newex 247 307 292 196617 jmod.parameter.mxt $0_ /setup @type msg_list @description "List of output channels that multicable signal is routed to.";#P objectname jmod.parameter[2];#P window linecount 1;#P hidden newex 247 174 71 196617 prepend set 0;#P hidden newex 247 218 51 196617 zl slice 1;#P hidden newex 247 285 209 196617 pak 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;#P hidden newex 247 243 209 196617 spray 16;#P hidden newex 459 243 222 196617 route 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15;#N vpatcher 20 74 620 474;#P outlet 111 101 15 0;#P outlet 69 100 15 0;#P inlet 111 57 15 0;#P inlet 69 57 15 0;#P connect 1 0 2 0;#P connect 0 0 3 0;#P pop;#P hidden newobj 220 197 37 196617 p thru;#P hidden newex 247 150 52 196617 listfunnel;#P hidden newex 94 326 50 196617 t select l;#P user textedit 23 54 100 71 32934 3 9 3;#P user jit.cellblock 24 96 80 321 3 9 1 16 55 14 0 1 1 1 1 1 0 0 0 0 0 0 255 255 255 0 0 0 0 0 0 191 191 191 0 0 0 215 215 240 1 1 1 0 0 0 0 1;#X set 0 0 1;#X set 0 1 2;#X set 0 2 3;#X set 0 3 4;#X set 0 4 5;#X set 0 5 6;#X set 0 6 7;#X set 0 7 8;#X set 0 8 9;#X set 0 9 10;#X set 0 10 11;#X set 0 11 12;#X set 0 12 13;#X set 0 13 14;#X set 0 14 15;#X set 0 15 16;#P user jit.cellblock 24 77 135 97 3 9 2 1 55 19 0 1 1 1 1 1 0 0 0 0 0 0 255 255 255 0 0 0 0 0 0 191 191 191 0 0 0 215 215 240 1 1 1 0 0 0 0 1;#X set 0 0 Multicable;#X set 1 0 Output;#P user jit.cellblock 79 96 135 321 3 9 1 16 55 14 0 1 1 1 0 0 0 0 1 0 0 0 255 255 255 0 0 0 0 0 0 191 191 191 0 0 0 215 215 240 1 1 1 0 0 0 0 1;#X set 0 0 1;#X set 0 1 2;#X set 0 2 3;#X set 0 3 4;#X set 0 4 5;#X set 0 5 6;#X set 0 6 7;#X set 0 7 8;#X set 0 8 9;#X set 0 9 10;#X set 0 10 11;#X set 0 11 12;#X set 0 12 13;#X set 0 13 14;#X set 0 14 15;#X set 0 15 16;#P objectname CellBlock;#P user panel 10 37 140 295;#X brgb 220 220 220;#X frgb 0 0 0;#X border 0;#X rounded 0;#X shadow 0;#X done;#P hidden inlet 758 122 15 0;#P hidden connect 27 0 24 0;#P hidden connect 26 0 24 0;#P hidden connect 25 0 24 0;#P hidden fasten 6 1 5 0 139 345 147 345 147 51 28 51;#P hidden fasten 6 0 5 0 99 347 149 347 149 49 28 49;#P hidden fasten 5 0 2 0 28 74 84 74;#P hidden connect 8 0 2 0;#P hidden connect 2 1 6 0;#P hidden connect 2 0 8 0;#P hidden fasten 14 0 15 0 252 342 688 342 688 123 252 123;#P hidden connect 15 0 7 0;#P hidden connect 7 0 13 0;#P hidden connect 13 0 8 1;#P hidden connect 8 1 12 0;#P hidden fasten 12 1 10 0 293 239 252 239;#P hidden connect 10 0 11 0;#P hidden connect 9 0 11 0;#P hidden connect 11 0 14 0;#P hidden connect 14 0 21 0;#P hidden connect 21 0 23 0;#P hidden connect 20 0 22 0;#P hidden fasten 23 0 22 0 252 429 252 429;#P hidden connect 10 1 11 1;#P hidden connect 9 1 11 1;#P hidden connect 10 2 11 2;#P hidden connect 9 2 11 2;#P hidden connect 10 3 11 3;#P hidden connect 9 3 11 3;#P hidden connect 10 4 11 4;#P hidden connect 9 4 11 4;#P hidden connect 10 5 11 5;#P hidden connect 9 5 11 5;#P hidden connect 10 6 11 6;#P hidden connect 9 6 11 6;#P hidden connect 10 7 11 7;#P hidden connect 9 7 11 7;#P hidden connect 10 8 11 8;#P hidden connect 9 8 11 8;#P hidden connect 10 9 11 9;#P hidden connect 9 9 11 9;#P hidden connect 10 10 11 10;#P hidden connect 9 10 11 10;#P hidden connect 21 0 20 0;#P hidden connect 10 11 11 11;#P hidden connect 9 11 11 11;#P hidden connect 10 12 11 12;#P hidden connect 9 12 11 12;#P hidden connect 10 13 11 13;#P hidden connect 9 13 11 13;#P hidden connect 10 14 11 14;#P hidden connect 9 14 11 14;#P hidden connect 10 15 11 15;#P hidden connect 9 15 11 15;#P hidden fasten 7 0 16 0 252 171 464 171;#P hidden connect 16 0 9 0;#P hidden connect 0 0 17 0;#P hidden connect 17 0 19 0;#P hidden connect 19 0 18 0;#P pop;#P hidden newobj 165 272 19 196617 p i;#P objectname i;#P hidden newex 165 249 151 196617 jmod.oscroute /open_inspector;#P hidden message 120 121 50 196617 /autodoc;#P window linecount 2;#P hidden message 24 371 65 196617 \; max refresh;#P window linecount 1;#P hidden comment 38 121 79 196617 command input;#P hidden inlet 24 121 13 0;#P window linecount 2;#P hidden message 24 339 72 196617 \; jmod.init bang;#P window linecount 3;#P hidden newex 351 140 79 196617 pattrstorage @autorestore 0 @savemode 0;#X client_rect 0 0 640 240;#X storage_rect 0 0 640 240;#P objectname jmod.sur.output~;#P hidden inlet 461 121 13 0;#P window linecount 1;#P comment 12 23 46 196617 Voices:;#B frgb 172 172 172;#P number 79 22 35 9 1 24 8227 3 198 198 198 221 221 221 222 222 222 0 0 0;#P objectname Voices;#P hidden newex 306 324 165 196617 jmod.sur.output~.alg;#P hidden comment 338 121 126 196617 multichannel signal input;#P hidden outlet 24 222 13 0;#P hidden newex 467 49 63 196617 pvar Voices;#P window linecount 2;#P hidden newex 467 74 381 196617 jmod.parameter.mxt $0_ /voices @type msg_int @repetitions 1 @ramp 0 @range 0 32 @clipmode both @description "Set number of output channels to use.";#P objectname jmod.parameter;#P window linecount 3;#P hidden newex 24 140 293 196617 jmod.hub $0_ jmod.sur.output~ @size 1U-half @module_type audio.no_panel @inspector 1 @num_inputs 1 @num_outputs 0 @description "Send multicable signal to multiple dac channels.";#P objectname jmod.hub;#P bpatcher 0 0 256 60 0 0 jmod.gui.mxt 0 $0_;#P objectname jmod.gui.1Uh.a.stereo.mxt;#P hidden fasten 15 0 1 0 125 137 29 137;#P hidden connect 12 0 1 0;#P hidden connect 1 0 4 0;#P hidden fasten 21 0 22 0 16 242 147 242;#P hidden connect 1 1 16 0;#P hidden connect 16 0 17 0;#P hidden connect 22 0 17 0;#P hidden connect 17 0 20 0;#P hidden connect 16 1 18 0;#P hidden connect 18 0 19 0;#P hidden fasten 18 1 6 0 379 318 311 318;#P hidden connect 19 0 6 0;#P hidden connect 10 0 1 1;#P hidden connect 1 2 10 0;#P hidden connect 9 0 6 1;#P hidden fasten 2 0 3 0 472 108 462 108 462 42 472 42;#P hidden connect 3 0 2 0;#P pop;