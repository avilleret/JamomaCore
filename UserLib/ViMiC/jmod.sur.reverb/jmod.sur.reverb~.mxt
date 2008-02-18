max v2;#N vpatcher 308 70 1253 600;#P origin 0 -62;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P newex 130 452 339 196617 jcom.out~ 25;#P newex 143 479 417 196617 jcom.multi.in~.mxt;#P hidden comment 379 157 152 196617 ----monocable signal input----;#P message 844 415 33 196617 set 8;#N comlet signal input;#P inlet 475 183 15 0;#P newex 294 278 47 196617 pcontrol;#P newex 161 255 143 196617 jcom.algorithm_control~.mxt;#P user ubumenu 49 38 22 196617 0 0 1 0;#X setrgb 181 181 181 25 25 25 50 50 50 4 4 4 141 141 141 112 112 112;#X add 1;#X add 2;#X add 3;#X add 4;#X add 5;#X add 8;#X add 12;#X add 16;#X add 24;#X prefix_set 0 0 <none> 0;#P objectname outputs;#P user ubumenu 49 22 22 196617 0 0 1 0;#X setrgb 181 181 181 25 25 25 50 50 50 4 4 4 141 141 141 112 112 112;#X add 1;#X add 2;#X add 3;#X add 4;#X add 5;#X add 8;#X add 12;#X add 16;#X prefix_set 0 0 <none> 0;#P objectname inputs;#P message 806 415 33 196617 set 7;#P message 769 415 33 196617 set 6;#P message 731 416 33 196617 set 5;#P message 696 415 33 196617 set 4;#P message 660 414 33 196617 set 3;#N vpatcher 10 59 610 459;#P inlet 209 87 15 0;#P outlet 191 224 15 0;#P connect 1 0 0 0;#P pop;#P newobj 553 443 37 196617 p thru;#P message 623 414 33 196617 set 2;#P message 588 414 33 196617 set 1;#P message 553 415 33 196617 set 0;#P newex 554 391 337 196617 sel 1 2 3 4 5 8 12 16 24;#P newex 554 371 51 196617 route set;#P window linecount 2;#P newex 556 337 281 196617 jcom.parameter outputs @priority 2 @type msg_int @range 1 24 @clipmode both @description "number of input signals";#P objectname outputs[1];#P window linecount 1;#P message 801 243 33 196617 set 7;#P message 764 243 33 196617 set 6;#P message 726 244 33 196617 set 5;#P message 691 243 33 196617 set 4;#P message 655 242 33 196617 set 3;#N vpatcher 10 59 610 459;#P inlet 209 87 15 0;#P outlet 191 224 15 0;#P connect 1 0 0 0;#P pop;#P newobj 548 271 37 196617 p thru;#P message 618 242 33 196617 set 2;#P message 583 242 33 196617 set 1;#P message 548 243 33 196617 set 0;#P newex 549 219 303 196617 sel 1 2 3 4 5 8 12 16;#P newex 549 199 51 196617 route set;#P window linecount 2;#P newex 549 167 281 196617 jcom.parameter inputs @priority 1 @type msg_int @range 1 16 @clipmode both @description "number of input signals";#P objectname inputs[1];#P window linecount 1;#P newex 553 313 76 196617 pvar outputs 2;#P newex 559 140 70 196617 pvar inputs 2;#P comment 4 40 44 196617 outputs:;#B frgb 172 172 172;#P comment 10 24 38 196617 inputs:;#B frgb 172 172 172;#P hidden newex 20 225 151 196617 jcom.oscroute /open_inspector;#P newex 21 272 44 196617 pcontrol;#P newex 21 251 41 196617 t open;#N vpatcher 1023 209 1311 555;#P origin 66 11;#P user jsui 115 181 20 14 1 0 0 jcom.jsui_texttoggle.js off on 204 204 204 0 0 0 121 255 15;#P objectname mod_active;#P window setfont "Sans Serif" 9.;#P window linecount 0;#P newex 385 138 86 196617 pvar mod_active;#P window linecount 2;#P newex 473 131 341 196617 jcom.parameter modulation/active @type msg_int @range 0 1 @clipmode both @description "activate modulation of the FDN delay path length";#P objectname modulation/active;#P window linecount 1;#P comment 136 182 88 196617 enable Modulation;#B frgb 181 181 181;#P window setfont "Sans Serif" 12.;#P window linecount 0;#P comment 97 116 118 196620 FDN path settings;#B frgb 181 181 181;#P window setfont "Sans Serif" 9.;#P hidden newex 1154 421 40 196617 t 1 s 0;#N vpatcher 564 189 1050 519;#P window setfont "Sans Serif" 9.;#P window linecount 2;#P comment 34 260 415 196617 Else "Restore Default Settings" will not function properly as past values for q \, filtergain and cf maintained in FilterGraph will overrule the attempt to reset values to defaults.;#P outlet 142 194 15 0;#P outlet 88 194 15 0;#P outlet 34 194 15 0;#P window linecount 1;#P newex 88 157 33 196617 atodb;#P inlet 179 35 15 0;#P inlet 125 35 15 0;#P inlet 71 35 15 0;#P newex 142 128 47 196617 gate 1 1;#P newex 88 128 47 196617 gate 1 1;#P window linecount 0;#P newex 34 128 47 196617 gate 1 1;#P inlet 263 35 15 0;#P comment 34 238 315 196617 Output from FilterFraph has to be muted when filtertype is changes.;#P connect 1 0 2 0;#P connect 2 0 9 0;#P connect 5 0 2 1;#P connect 1 0 3 0;#P connect 3 0 8 0;#P connect 8 0 10 0;#P connect 6 0 3 1;#P connect 1 0 4 0;#P connect 4 0 11 0;#P connect 7 0 4 1;#P pop;#P hidden newobj 945 489 100 196617 p DecodeFilterGraph;#P hidden newex 927 734 140 196617 s $0_xxx_to_prefiltergraph;#N vpatcher 91 247 688 576;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P newex 267 143 33 196617 dbtoa;#P window linecount 0;#P comment 401 232 119 196617 Set message to 6nd inlet;#P outlet 96 274 15 0;#P newex 96 232 215 196617 pak set 1200. 1. 1.;#P newex 335 119 50 196617 route set;#P inlet 199 50 15 0;#P newex 267 119 50 196617 route set;#P inlet 267 50 15 0;#P newex 199 119 50 196617 route set;#P inlet 335 50 15 0;#P comment 405 121 100 196617 Get rid of set;#P connect 7 0 8 0;#P connect 2 0 7 1;#P connect 1 0 2 0;#P connect 10 0 7 2;#P connect 3 0 4 0;#P connect 4 0 10 0;#P connect 6 0 7 3;#P connect 5 0 6 0;#P pop;#P hidden newobj 927 710 124 196617 p PrepareForFiltergraph~;#P hidden newex 1086 565 94 196617 pvar PreFilterGain;#P hidden newex 1086 489 56 196617 pvar PreQ;#P hidden newex 1086 648 100 196617 pvar PreCenterFreq;#P hidden newex 954 345 106 196617 pvar PreFilterType 2;#P hidden newex 932 464 110 196617 pvar PreFilterGraph 7;#P window linecount 3;#P hidden newex 954 370 306 196617 jcom.parameter input_eq/filtertype @type msg_symbol @description "What kind of filter to use. Possible values: lowpass | highpass | bandpass | bandstop | peaknotch | lowshelf | highshelf";#P objectname input_eq/filtertype;#P window linecount 2;#P hidden newex 1086 589 378 196617 jcom.parameter input_eq/filtergain @type msg_float @range -24 24 @clipmode both @ramp/drive scheduler @repetitions 0 @description "Gain (dB)";#P objectname input_eq/filtergain;#P hidden newex 1086 513 364 196617 jcom.parameter input_eq/q @type msg_float @ramp/drive scheduler @range 0. 100. @clipmode both @repetitions 0 @description "Resonance (Q)";#P objectname input_eq/q;#P hidden newex 1086 669 387 196617 jcom.parameter input_eq/cf @type msg_float @range 30. 11025. @clipmode both @ramp/drive scheduler @repetitions 0 @description "Center frequency (Hz)";#P objectname input_eq/cf;#P user ubumenu 28 296 61 196617 0 1 1 0;#X add lowpass;#X add highpass;#X add bandpass;#X add bandstop;#X add peaknotch;#X add lowshelf;#X add highshelf;#X prefix_set 0 0 <none> 0;#P objectname FilterType;#P window setfont "Sans Serif" 12.;#P window linecount 0;#P comment 97 219 130 196620 FDN path filter;#B frgb 181 181 181;#P window setfont "Sans Serif" 9.;#P hidden newex 322 271 125 196617 r $0_xxx_to_filtergraph;#P flonum 49 240 40 9 30. 11025. 8227 3 198 198 198 221 221 221 222 222 222 0 0 0;#P objectname CenterFreq;#P window linecount 2;#P hidden newex 323 290 269 196617 jcom.message fdn_filtergraph @description "Messages to filtergraph. See the MSP reference for further details";#P flonum 49 259 40 9 0. 100. 8227 3 198 198 198 221 221 221 222 222 222 0 0 0;#P objectname Q;#P window linecount 1;#P comment 18 260 27 196617 Q/S:;#B frgb 172 172 172;#P flonum 49 277 40 9 -24. 24. 8227 3 198 198 198 221 221 221 222 222 222 0 0 0;#P objectname FilterGain;#P comment 6 241 41 196617 cf [Hz]:;#B frgb 172 172 172;#P comment 18 278 27 196617 gain:;#B frgb 172 172 172;#P user filtergraph~ 92 238 167 75 3 9 20. 22050. 0.0625 16. 0 1 1 0 0 1 1;#X frgb 99 99 99;#X brgb 173 173 173;#X rgb2 0 0 0;#X rgb3 84 84 84;#X rgb4 0 0 0;#X rgb5 118 121 166;#X rgb6 122 74 74;#X rgb7 255 22 22;#X linmarkers 5512.5 11025. 16537.5;#X logmarkers 50. 500. 5000.;#X nfilters 1;#X setfilter 0 3 1 0 0 732.239258 1. 0.054497 30. 11025. 0.0625 16. 0. 25.;#X done;#P objectname FilterGraph;#P user ubumenu 28 86 61 196617 0 1 1 0;#X add lowpass;#X add highpass;#X add bandpass;#X add bandstop;#X add peaknotch;#X add lowshelf;#X add highshelf;#X prefix_set 0 0 <none> 0;#P objectname PreFilterType;#P window setfont "Sans Serif" 12.;#P window linecount 0;#P comment 97 6 130 196620 Input filter;#B frgb 181 181 181;#P window setfont "Sans Serif" 9.;#P hidden newex 347 -75 140 196617 r $0_xxx_to_prefiltergraph;#P flonum 49 30 40 9 30. 11025. 8227 3 198 198 198 221 221 221 222 222 222 0 0 0;#P objectname PreCenterFreq;#P window linecount 2;#P hidden newex 347 -54 264 196617 jcom.message prefiltergraph @description "Messages to filtergraph. See the MSP reference for further details";#P flonum 49 49 40 9 0. 100. 8227 3 198 198 198 221 221 221 222 222 222 0 0 0;#P objectname PreQ;#P window linecount 1;#P comment 19 50 27 196617 Q/S:;#B frgb 172 172 172;#P flonum 49 67 40 9 -24. 24. 8227 3 198 198 198 221 221 221 222 222 222 0 0 0;#P objectname PreFilterGain;#P comment 7 31 41 196617 cf [Hz]:;#B frgb 172 172 172;#P comment 19 68 27 196617 gain:;#B frgb 172 172 172;#P user filtergraph~ 92 27 167 75 3 9 20. 22050. 0.0625 16. 0 1 1 0 0 1 1;#X frgb 99 99 99;#X brgb 173 173 173;#X rgb2 0 0 0;#X rgb3 84 84 84;#X rgb4 0 0 0;#X rgb5 118 121 166;#X rgb6 122 74 74;#X rgb7 255 22 22;#X linmarkers 5512.5 11025. 16537.5;#X logmarkers 50. 500. 5000.;#X nfilters 1;#X setfilter 0 1 1 0 0 2547.59082 1. 0.606826 30. 11025. 0.0625 16. 0. 25.;#X done;#P objectname PreFilterGraph;#P hidden newex 637 423 40 196617 t 1 s 0;#N vpatcher 564 189 1050 519;#P window setfont "Sans Serif" 9.;#P window linecount 2;#P comment 34 260 415 196617 Else "Restore Default Settings" will not function properly as past values for q \, filtergain and cf maintained in FilterGraph will overrule the attempt to reset values to defaults.;#P outlet 142 194 15 0;#P outlet 88 194 15 0;#P outlet 34 194 15 0;#P window linecount 1;#P newex 88 157 33 196617 atodb;#P inlet 179 35 15 0;#P inlet 125 35 15 0;#P inlet 71 35 15 0;#P newex 142 128 47 196617 gate 1 1;#P newex 88 128 47 196617 gate 1 1;#P window linecount 0;#P newex 34 128 47 196617 gate 1 1;#P inlet 263 35 15 0;#P comment 34 238 315 196617 Output from FilterFraph has to be muted when filtertype is changes.;#P connect 1 0 2 0;#P connect 2 0 9 0;#P connect 5 0 2 1;#P connect 1 0 3 0;#P connect 3 0 8 0;#P connect 8 0 10 0;#P connect 6 0 3 1;#P connect 1 0 4 0;#P connect 4 0 11 0;#P connect 7 0 4 1;#P pop;#P hidden newobj 428 491 100 196617 p DecodeFilterGraph;#P hidden newex 410 736 124 196617 s $0_xxx_to_filtergraph;#N vpatcher 91 247 688 576;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P newex 267 143 33 196617 dbtoa;#P window linecount 0;#P comment 401 232 119 196617 Set message to 6nd inlet;#P outlet 96 274 15 0;#P newex 96 232 215 196617 pak set 1200. 1. 1.;#P newex 335 119 50 196617 route set;#P inlet 199 50 15 0;#P newex 267 119 50 196617 route set;#P inlet 267 50 15 0;#P newex 199 119 50 196617 route set;#P inlet 335 50 15 0;#P comment 405 121 100 196617 Get rid of set;#P connect 7 0 8 0;#P connect 2 0 7 1;#P connect 1 0 2 0;#P connect 10 0 7 2;#P connect 3 0 4 0;#P connect 4 0 10 0;#P connect 6 0 7 3;#P connect 5 0 6 0;#P pop;#P hidden newobj 410 712 124 196617 p PrepareForFiltergraph~;#P hidden newex 569 567 75 196617 pvar FilterGain;#P hidden newex 569 491 39 196617 pvar Q;#P hidden newex 569 650 83 196617 pvar CenterFreq;#P hidden newex 437 347 89 196617 pvar FilterType 2;#P hidden newex 415 466 93 196617 pvar FilterGraph 7;#P window linecount 3;#P hidden newex 437 372 306 196617 jcom.parameter fdn_eq/filtertype @type msg_symbol @description "What kind of filter to use. Possible values: lowpass | highpass | bandpass | bandstop | peaknotch | lowshelf | highshelf";#P objectname fdn_eq/filtertype;#P window linecount 2;#P hidden newex 569 591 368 196617 jcom.parameter fdn_eq/filtergain @type msg_float @range -24. 0. @clipmode both @ramp/drive scheduler @repetitions 0 @description "Gain (dB)";#P objectname fdn_eq/filtergain;#P hidden newex 569 515 356 196617 jcom.parameter fdn_eq/q @type msg_float @ramp/drive scheduler @range 0. 100. @clipmode both @repetitions 0 @description "Resonance (Q)";#P objectname fdn_eq/q;#P hidden newex 569 671 377 196617 jcom.parameter fdn_eq/cf @type msg_float @range 30. 11025. @clipmode both @ramp/drive scheduler @repetitions 0 @description "Center frequency (Hz)";#P objectname fdn_eq/cf;#P window linecount 3;#P newex 569 236 338 196617 jcom.parameter interpolationtime @type msg_float @range 0. 1000. @clipmode low @ramp/drive scheduler @description "Interpolationtime for changes of feedback path length and path modulation";#P objectname interpolationtime;#P window linecount 1;#P newex 442 250 111 196617 pvar Interpolationtime;#P window linecount 2;#P comment 5 185 79 196617 Interp. time for changes [ms]:;#B frgb 181 181 181;#P flonum 84 189 30 9 0. 999. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname Interpolationtime;#P window linecount 1;#P newex 567 173 40 196617 zl sort;#P window linecount 2;#P newex 566 195 469 196617 jcom.parameter modulation/amplitude @type msg_list @range 0. 10. @clipmode low @ramp/drive scheduler @description "minimal and maximal amplitude of the feedback path's length modulation";#P objectname modulation/amplitude;#P window linecount 1;#P newex 390 196 144 196617 jcom.list2parameter 2;#P newex 474 173 91 196617 pvar ModAmpMax;#P newex 390 173 88 196617 pvar ModAmpMin;#P newex 565 60 40 196617 zl sort;#P window linecount 3;#P newex 564 82 386 196617 jcom.parameter modulation/frequency @type msg_list @range 0. 10. @clipmode low @ramp/drive scheduler @description "minimal and maximal modulation frequency of the feedback path's length";#P objectname modulation/frequency;#P window linecount 1;#P newex 388 85 144 196617 jcom.list2parameter 2;#P newex 472 62 86 196617 pvar ModFrqMax;#P newex 388 62 83 196617 pvar ModFrqMin;#P newex 544 -10 40 196617 zl sort;#P window linecount 2;#P newex 543 12 404 196617 jcom.parameter delaylength @type msg_list @range 0. 300. @clipmode both @ramp/drive scheduler @description "minimal and maximal delaylength of the feedback paths";#P objectname delaylength;#P window linecount 1;#P newex 387 15 144 196617 jcom.list2parameter 2;#P newex 454 -7 68 196617 pvar DlyMax;#P newex 387 -8 65 196617 pvar DlyMin;#P flonum 208 153 42 9 0 0 8224 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname ModAmpMin;#P flonum 134 153 42 9 0. 10. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname ModFrqMin;#P flonum 50 153 42 9 0. 300. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname DlyMin;#P flonum 208 167 42 9 0. 40. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname ModAmpMax;#P flonum 134 167 42 9 0. 10. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname ModFrqMax;#P comment 192 141 83 196617 Modulation [gain];#B frgb 181 181 181;#P comment 116 141 75 196617 Modulation [Hz];#B frgb 181 181 181;#P flonum 50 167 42 9 0. 300. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname DlyMax;#P comment 5 168 28 196617 max:;#B frgb 181 181 181;#P comment 7 154 26 196617 min:;#B frgb 181 181 181;#P comment 27 140 80 196617 path length [ms];#B frgb 181 181 181;#P hidden newex 4 696 165 196617 loadmess patcher jmod.sur.reverb;#P hidden newex -50 688 40 196617 t front;#P hidden newex -50 663 151 196617 jcom.oscroute /open_inspector;#P hidden inlet -50 636 15 0;#N thispatcher;#Q end;#P hidden newobj -49 729 61 196617 thispatcher;#P hidden message 125 497 214 196617 window size 100 100 400 615 \, window exec;#N thispatcher;#Q window flags nogrow close zoom nofloat;#Q window size 1023 209 1311 555;#Q window title;#Q window exec;#Q savewindow 1;#Q end;#P hidden newobj 51 505 59 196617 thispatcher;#P hidden newex 33 633 88 196617 bgcolor 80 80 80;#P hidden message -29 322 239 196617 window flags nogrow \, savewindow 1 \, window exec;#P hidden message 178 318 158 196617 window flags grow \, window exec;#P user panel 1 4 286 107;#X brgb 80 80 80;#X frgb 255 255 255;#X border 2;#X rounded 0;#X shadow 0;#X done;#P user panel 1 216 286 107;#X brgb 80 80 80;#X frgb 255 255 255;#X border 2;#X rounded 0;#X shadow 0;#X done;#P user panel 114 138 162 59;#X brgb 80 80 80;#X frgb 0 0 0;#X border 1;#X rounded 0;#X shadow 0;#X done;#P user panel 1 114 286 100;#X brgb 80 80 80;#X frgb 255 255 255;#X border 2;#X rounded 0;#X shadow 0;#X done;#P connect 10 0 11 0;#P hidden connect 11 0 12 0;#P hidden connect 12 0 9 0;#P connect 13 0 9 0;#P hidden connect 4 0 7 0;#P hidden connect 5 0 7 0;#P hidden connect 8 0 7 0;#P hidden connect 63 0 57 0;#P lcolor 6;#P hidden connect 74 0 68 0;#P lcolor 6;#P hidden connect 65 0 57 5;#P lcolor 6;#P hidden connect 76 0 68 5;#P lcolor 6;#P connect 94 0 95 0;#P fasten 27 0 25 0 392 38 385 38 385 -15 392 -15;#P connect 25 0 27 0;#P fasten 32 0 30 0 393 108 386 108 386 55 393 55;#P connect 30 0 32 0;#P fasten 37 0 35 0 395 219 388 219 388 166 395 166;#P connect 35 0 37 0;#P connect 26 0 27 1;#P connect 31 0 32 1;#P connect 36 0 37 1;#P hidden connect 45 0 53 0;#P hidden connect 53 0 54 0;#P hidden fasten 56 1 48 0 657 450 420 450;#P hidden connect 48 1 55 0;#P hidden fasten 47 0 49 0 442 416 430 416 430 342 442 342;#P hidden fasten 49 1 47 0 521 368 442 368;#P connect 43 0 42 0;#P fasten 27 1 26 0 405 42 382 42 382 -21 459 -21;#P hidden connect 48 2 55 1;#P hidden connect 46 0 53 1;#P fasten 32 1 31 0 406 112 383 112 383 52 477 52;#P connect 95 0 94 0;#P fasten 37 1 36 0 408 223 385 223 385 163 479 163;#P hidden connect 48 3 55 2;#P connect 28 0 27 10;#P connect 33 0 32 10;#P hidden fasten 56 0 55 3 642 464 523 464;#P lcolor 1;#P hidden fasten 56 2 55 3 672 464 523 464;#P lcolor 1;#P connect 38 0 37 10;#P hidden connect 44 0 53 2;#P connect 29 0 28 0;#P connect 27 10 29 0;#P connect 34 0 33 0;#P connect 32 10 34 0;#P connect 39 0 38 0;#P connect 37 10 39 0;#P connect 42 0 43 0;#P hidden fasten 45 0 51 0 574 547 563 547 563 482 574 482;#P hidden connect 55 2 45 0;#P hidden connect 51 0 45 0;#P hidden fasten 46 0 52 0 574 623 562 623 562 563 574 563;#P hidden connect 52 0 46 0;#P hidden connect 55 1 46 0;#P hidden fasten 44 0 50 0 574 703 565 703 565 644 574 644;#P hidden connect 55 0 44 0;#P hidden connect 50 0 44 0;#P hidden fasten 47 1 56 0 590 417 642 417;#P hidden connect 80 0 88 0;#P hidden connect 88 0 89 0;#P hidden fasten 91 1 83 0 1174 448 937 448;#P hidden connect 83 1 90 0;#P hidden fasten 82 0 84 0 959 414 947 414 947 340 959 340;#P hidden fasten 84 1 82 0 1055 366 959 366;#P hidden connect 83 2 90 1;#P hidden connect 81 0 88 1;#P hidden connect 83 3 90 2;#P hidden fasten 91 2 90 3 1189 462 1040 462;#P lcolor 1;#P hidden fasten 91 0 90 3 1159 462 1040 462;#P lcolor 1;#P hidden connect 79 0 88 2;#P hidden fasten 80 0 86 0 1091 545 1080 545 1080 480 1091 480;#P hidden connect 90 2 80 0;#P hidden connect 86 0 80 0;#P hidden fasten 81 0 87 0 1091 621 1079 621 1079 561 1091 561;#P hidden connect 90 1 81 0;#P hidden connect 87 0 81 0;#P hidden fasten 79 0 85 0 1091 701 1082 701 1082 642 1091 642;#P hidden connect 90 0 79 0;#P hidden connect 85 0 79 0;#P hidden fasten 82 1 91 0 1107 415 1159 415;#P pop;#P newobj 21 293 67 196617 p inspector;#B color 4;#P objectname inspector;#P comment 146 42 73 196617 Predelay [ms]:;#B frgb 172 172 172;#P flonum 220 41 35 9 0 0 8224 3 198 198 198 221 221 221 222 222 222 0 0 0;#P objectname PreDly;#P newex 386 72 65 196617 pvar PreDly;#P window linecount 2;#P newex 456 67 359 196617 jcom.parameter predelay @type msg_float @range 0. 1000. @clipmode both @ramp/drive scheduler @description "Predelay for incomming signals";#P objectname predelay;#P window linecount 1;#P newex 398 36 52 196617 pvar T60;#P comment 175 24 46 196617 T60 [s]:;#B frgb 172 172 172;#P flonum 219 22 35 9 0 0 8224 3 198 198 198 221 221 221 222 222 222 0 0 0;#P objectname T60;#P window linecount 2;#P newex 455 31 296 196617 jcom.parameter t60 @type msg_float @range 0. 60. @clipmode both @ramp/drive scheduler @description "t60 reverb time";#P objectname t60;#P window linecount 1;#P message 112 85 191 196617 /preset/store 1 default \, /preset/write;#B color 3;#P hidden newex 20 201 49 196617 jcom.in~;#P hidden comment 157 501 158 196617 ----multicable signal output----;#P hidden message 98 121 125 196617 /documentation/generate;#N comlet Channel 1;#P hidden outlet 142 501 13 0;#N comlet multicable signal input;#P hidden inlet 309 372 13 0;#P hidden comment 225 346 158 196617 ----multicable signal input----;#P hidden newex 143 417 342 196617 jalg.sur.reverb~.mxt;#P window linecount 2;#P hidden message 58 423 65 196617 \; max refresh;#P hidden newex 0 150 402 196617 jcom.hub jmod.sur.reverb~ @size 1U-half @inspector 1 @module_type audio.ambisonic @description "multichannel reverb based on a 16x16 Feedback Delay Network";#P objectname jcom.hub;#P window linecount 1;#P hidden comment 14 121 79 196617 command input;#P hidden inlet 0 121 13 0;#P window linecount 2;#P hidden message 58 391 72 196617 \; jcom.init bang;#P hidden outlet 0 246 13 0;#P bpatcher 0 0 255 60 0 0 jcom.gui.mxt 0;#P objectname jcom.gui.1Uh.a.stereo.mxt;#P connect 14 0 5 0;#P hidden fasten 11 0 5 0 103 138 5 138;#P hidden connect 3 0 5 0;#P hidden connect 5 0 1 0;#P connect 13 0 26 0;#P connect 26 0 24 0;#P connect 24 0 25 0;#P connect 25 0 23 0;#P connect 62 0 10 0;#P fasten 58 0 7 0 299 314 148 314;#P fasten 57 0 7 0 166 314 148 314;#P connect 7 0 63 1;#P connect 63 1 62 0;#P connect 7 1 63 2;#P connect 63 2 62 1;#P connect 26 1 57 0;#P connect 7 2 63 3;#P connect 63 3 62 2;#P connect 7 3 63 4;#P connect 63 4 62 3;#P connect 7 4 63 5;#P connect 63 5 62 4;#P connect 7 5 63 6;#P connect 63 6 62 5;#P connect 7 6 63 7;#P connect 63 7 62 6;#P connect 7 7 63 8;#P connect 63 8 62 7;#P connect 7 8 63 9;#P connect 63 9 62 8;#P connect 7 9 63 10;#P connect 63 10 62 9;#P connect 7 10 63 11;#P connect 63 11 62 10;#P connect 7 11 63 12;#P connect 63 12 62 11;#P connect 57 1 58 0;#P connect 7 12 63 13;#P connect 63 13 62 12;#P hidden connect 9 0 7 1;#P connect 7 13 63 14;#P connect 63 14 62 13;#P connect 7 14 63 15;#P connect 63 15 62 14;#P connect 7 15 63 16;#P connect 63 16 62 15;#P connect 7 16 63 17;#P connect 63 17 62 16;#P connect 7 17 63 18;#P connect 63 18 62 17;#P connect 7 18 63 19;#P connect 63 19 62 18;#P connect 19 0 20 0;#P connect 7 19 63 20;#P connect 63 20 62 19;#P connect 15 0 18 0;#P connect 7 20 63 21;#P connect 63 21 62 20;#P connect 7 21 63 22;#P connect 63 22 62 21;#P connect 7 22 63 23;#P connect 63 23 62 22;#P connect 7 23 63 24;#P connect 63 24 62 23;#P connect 18 0 15 0;#P connect 20 0 19 0;#P connect 59 0 7 2;#P connect 33 0 34 0;#P connect 42 0 37 0;#P connect 41 0 37 0;#P connect 40 0 37 0;#P connect 39 0 37 0;#P connect 38 0 37 0;#P connect 36 0 37 0;#P connect 34 0 37 0;#P connect 35 0 37 0;#P connect 29 1 31 0;#P connect 31 0 32 0;#P connect 32 0 33 0;#P fasten 49 0 30 0 558 465 550 465 550 304 558 304;#P connect 45 0 46 0;#P connect 60 0 49 0;#P connect 47 0 49 0;#P connect 46 0 49 0;#P connect 48 0 49 0;#P connect 50 0 49 0;#P connect 51 0 49 0;#P connect 52 0 49 0;#P connect 53 0 49 0;#P connect 54 0 49 0;#P connect 43 0 44 0;#P connect 44 0 45 0;#P connect 30 1 43 0;#P fasten 37 0 29 0 553 292 543 292 543 134 564 134;#P connect 33 1 35 0;#P connect 45 1 47 0;#P connect 33 2 36 0;#P connect 45 2 48 0;#P connect 33 3 38 0;#P connect 45 3 50 0;#P connect 33 4 39 0;#P connect 45 4 51 0;#P connect 33 5 40 0;#P connect 45 5 52 0;#P connect 33 6 41 0;#P connect 45 6 53 0;#P connect 33 7 42 0;#P connect 45 7 54 0;#P connect 45 8 60 0;#P pop;