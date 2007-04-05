max v2;#N vpatcher 472 151 1349 656;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P hidden newex 77 321 64 196617 jcom.out~ 2;#P objectname tap.harmonizer~.mod[2];#P hidden newex 77 233 58 196617 jcom.in~ 2;#P objectname tap.harmonizer~.mod[1];#P flonum 119 32 40 9 0 0 8224 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname left.shift[7];#P window linecount 3;#P hidden newex 463 248 323 196617 jcom.parameter damping @type msg_float @ramp linear @repetitions 0 @range -48. 48. @clipmode none @description "The amount of pitch shift in semitones to apply tp both the left and right channels.";#P objectname damping;#P window linecount 1;#P comment 78 32 43 196617 damping;#B frgb 149 149 149;#P flonum 119 18 40 9 0 0 8224 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname left.shift[6];#P flonum 32 25 40 9 0 0 8224 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname left.shift[5];#P flonum 32 39 40 9 0 0 8224 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname left.shift[4];#P window linecount 3;#P hidden newex 463 104 323 196617 jcom.parameter lowpass @type msg_float @ramp linear @repetitions 0 @range -48. 48. @clipmode none @description "The amount of pitch shift in semitones to apply tp both the left and right channels.";#P objectname lowpass;#P flonum 119 46 40 9 0 0 8224 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname left.shift[3];#P window linecount 1;#P comment 80 46 41 196617 lowpass;#B frgb 149 149 149;#P flonum 215 25 40 9 0 0 8224 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname left.shift[2];#P window linecount 3;#P hidden newex 463 8 324 196617 jcom.parameter modfreq @type msg_float @ramp linear @repetitions 0 @range -48. 48. @clipmode none @description "The amount of pitch shift in semitones to apply tp both the left and right channels.";#P objectname modfreq;#P hidden newex 463 56 329 196617 jcom.parameter moddepth @type msg_float @ramp linear @repetitions 0 @range -48. 48. @clipmode none @description "The amount of pitch shift in semitones to apply tp both the left and right channels.";#P objectname moddepth;#P window linecount 1;#P comment 165 39 49 196617 moddepth;#B frgb 149 149 149;#P flonum 215 39 40 9 0 0 8224 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname left.shift[1];#P comment 171 25 43 196617 modfreq;#B frgb 149 149 149;#P window linecount 3;#P hidden newex 463 200 316 196617 jcom.parameter delay @type msg_float @ramp linear @repetitions 0 @range -48. 48. @clipmode none @description "The amount of pitch shift in semitones to apply tp both the left and right channels.";#P objectname delay;#P window linecount 1;#P comment 88 18 31 196617 delay;#B frgb 149 149 149;#P window linecount 3;#P hidden newex 463 297 313 196617 jcom.parameter mix @type msg_float @ramp linear @repetitions 0 @range 0. 100. @clipmode both @description "The amount of pitch shift in semitones to apply tp both the left and right channels.";#P objectname mix;#P hidden newex 463 152 316 196617 jcom.parameter decay @type msg_float @ramp linear @repetitions 0 @range -48. 48. @clipmode none @description "The amount of pitch shift in semitones to apply tp both the left and right channels.";#P objectname decay;#P window linecount 1;#P comment 2 39 34 196617 decay;#B frgb 149 149 149;#P comment 10 25 23 196617 mix;#B frgb 149 149 149;#P hidden message 118 114 125 196617 /documentation/generate;#P window linecount 2;#P hidden newex 8 142 266 196617 jcom.hub tap.jmod.reverb~ @size 1U-half @module_type audio @algorithm_type blue @description "Reverb Unit.";#P objectname jmod.hub;#P window linecount 1;#P hidden comment 22 114 79 196617 command input;#P hidden inlet 8 114 13 0;#P hidden message 244 114 31 196617 /init;#P hidden inlet 77 214 13 0;#P hidden outlet 77 346 13 0;#P hidden inlet 125 214 13 0;#P window linecount 3;#P hidden newex 77 273 119 196617 tap.verb~ @limit 1 @dcblock 1 @limiter_threshold 0.;#P objectname tap.harmonizer~.mod;#P window linecount 1;#P hidden comment 77 200 105 196617 ----signal inputs----;#P hidden outlet 8 179 13 0;#P hidden outlet 104 346 13 0;#P hidden comment 77 361 101 196617 ---signal outputs---;#P bpatcher 0 0 256 60 0 0 jcom.gui.mxt 0;#P objectname jmod.gui.1Uh.a.stereo.mxt;#P hidden connect 10 0 12 0;#P hidden fasten 13 0 12 0 123 135 13 135;#P hidden fasten 9 0 12 0 249 137 13 137;#P hidden connect 12 0 3 0;#P hidden connect 17 0 30 0;#P hidden connect 16 0 29 0;#P lcolor 6;#P hidden connect 8 0 35 0;#P hidden connect 35 2 5 0;#P hidden connect 35 0 5 0;#P hidden connect 5 0 36 0;#P hidden connect 36 0 7 0;#P hidden connect 36 1 2 0;#P hidden connect 19 0 31 0;#P hidden connect 33 0 34 0;#P hidden connect 28 0 27 0;#P hidden connect 6 0 35 1;#P hidden connect 5 1 36 1;#P hidden fasten 35 1 5 1 98 268 191 268;#P hidden connect 24 0 25 0;#P hidden connect 23 0 21 0;#P hidden connect 25 0 24 0;#P hidden connect 21 0 23 0;#P hidden connect 27 0 28 0;#P hidden connect 29 0 16 0;#P hidden connect 31 0 19 0;#P hidden connect 34 0 33 0;#P hidden connect 30 0 17 0;#P pop;