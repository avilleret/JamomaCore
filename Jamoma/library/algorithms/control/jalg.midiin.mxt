max v2;#N vpatcher 213 212 1405 820;#P origin -22 0;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P newex 756 353 127 196617 sprintf %ld/poly %ld %ld;#P newex 574 355 127 196617 sprintf %ld/program %ld;#P newex 406 355 127 196617 sprintf %ld/bend %f;#P newex 37 358 152 196617 sprintf %ld/note %ld %ld;#N vpatcher 10 59 410 360;#P window setfont "Sans Serif" 9.;#P window linecount 4;#P comment 57 230 39 196617 By Trond Lossius.;#P comment 57 169 230 196617 The MIDI specification stipulates that pitch bend be a 14-bit value \, where zero is maximum downward bend \, 16383 is maximum upward bend \, and 8192 is the center (no pitch bend).;#P window linecount 1;#P newex 57 97 110 196617 scale 0. 8192. -24. 0.;#P newex 176 97 129 196617 scale 8192. 16383. 0. 24.;#P newex 57 57 66 196617 split 0 8191;#P inlet 57 37 15 0;#P outlet 57 139 15 0;#P connect 1 0 2 0;#P connect 2 0 4 0;#P connect 4 0 0 0;#P connect 3 0 0 0;#P connect 2 1 3 0;#P pop;#P newobj 406 274 53 196617 p convert;#P window linecount 3;#P newex 718 451 153 196617 jcom.return raw/voice/*/poly @type msg_list @description "poly information on channel *.";#P window linecount 1;#P newex 756 276 37 196617 zl rev;#P toggle 262 166 15 0;#P message 262 185 48 196617 mode \$1;#N vpatcher 584 266 1094 613;#P outlet 199 237 15 0;#P window setfont "Sans Serif" 9.;#P window linecount 2;#P message 294 141 78 196617 type msg_int \, range 0 127;#P window linecount 0;#P message 199 141 78 196617 type msg_float \, range 0. 1.;#P window linecount 1;#P newex 199 119 201 196617 sel 1 0;#P newex 79 111 27 196617 + 1;#P newex 116 166 40 196617 / 127.;#P newex 79 136 47 196617 gate 2 2;#P window linecount 0;#P newex 79 85 60 196617 route mode;#P outlet 79 242 15 0;#P inlet 79 48 15 0;#P connect 0 0 2 0;#P connect 2 0 5 0;#P connect 5 0 3 0;#P connect 4 0 1 0;#P connect 3 0 1 0;#P connect 2 1 3 1;#P connect 3 1 4 0;#P connect 2 0 6 0;#P connect 6 0 7 0;#P connect 7 0 9 0;#P connect 8 0 9 0;#P connect 6 1 8 0;#P pop;#P newobj 226 250 95 196617 p norm-midi;#P newex 406 224 37 196617 midiin;#P window linecount 4;#P newex 535 451 176 196617 jcom.return raw/voice/*/program @type msg_int @range 0 127 @description "Program change information on channel *.";#P window linecount 1;#P newex 574 276 37 196617 zl rev;#P newex 406 331 37 196617 zl rev;#P message 37 276 52 196617 \$3 \$1 \$2;#P newex 226 298 37 196617 zl rev;#P newex 226 276 60 196617 pack 0. 0 0;#P newex 226 224 98 196617 ctlin;#P newex 226 355 127 196617 sprintf %ld/cc/%ld %f;#P newex 142 89 58 196617 jcom.init;#P newex 226 387 347 196617 jcom.return raw/voice/* @description "generic output for midiin module";#P newex 869 250 48 196617 pack 0 0;#P newex 574 250 48 196617 pack 0 0;#P newex 406 298 44 196617 pack 0 0;#P newex 756 250 57 196617 pack 0 0 0;#P newex 37 250 57 196617 pack 0 0 0;#P newex 948 224 25 196617 rtin;#P newex 869 224 41 196617 touchin;#P newex 574 224 35 196617 pgmin;#P newex 990 224 44 196617 sysexin;#P newex 406 250 44 196617 xbendin;#P newex 756 224 40 196617 polyin;#P newex 37 224 40 196617 notein;#P message 122 115 19 196617 -1;#P user umenu 36 170 147 196647 1 64 186 1;#X add "IAC Driver IAC Bus 1";#X add "MOTU 828mk2 Midi Port";#X add "Daemon Output 0";#X add "Daemon Output 1";#X add "Daemon Output 2";#X add "Daemon Output 3";#X add "Daemon Output 4";#X add "Daemon Output 5";#X add "Daemon Output 6";#X add "Daemon Output 7";#X add "to MaxMSP 1";#X add "to MaxMSP 2";#X add "USB Keystation 49e";#P newex 87 136 45 196617 midiinfo;#P outlet 1062 483 15 0;#P outlet 1012 483 15 0;#P newex 36 54 268 196617 jcom.oscroute /device_menu /midi_init /midi_normalize;#P inlet 36 30 15 0;#P window linecount 2;#P comment 298 285 79 196617 for type/range changing;#P window linecount 5;#P newex 202 451 165 196617 jcom.return raw/voice/*/cc/* @type msg_int @range 0 127 @description "Control number m changed at channel n. (1st*=n\\\, 2d*=m) ";#P window linecount 4;#P newex 38 451 157 196617 jcom.return raw/voice/*/note @type msg_list @description "MIDI note information as pitch and velocity on channel *.";#P newex 374 451 153 196617 jcom.return raw/voice/*/bend @type msg_float @range -24. 24. @description "Pitch bend on channel *.";#P connect 4 0 5 0;#P connect 8 0 9 0;#P connect 5 0 9 0;#P fasten 9 1 11 0 178 206 42 206;#P connect 11 0 18 0;#P connect 18 0 29 0;#P connect 29 0 40 0;#P connect 11 1 18 1;#P connect 11 2 18 2;#P connect 5 1 10 0;#P fasten 24 0 10 0 147 110 127 110;#P connect 10 0 8 1;#P fasten 9 1 26 0 178 206 231 206;#P connect 26 0 34 0;#P connect 35 0 34 0;#P connect 34 0 27 0;#P connect 27 0 28 0;#P connect 28 0 25 0;#P fasten 40 0 23 0 42 381 231 381;#P connect 34 1 23 0;#P connect 25 0 23 0;#P fasten 41 0 23 0 411 379 231 379;#P fasten 42 0 23 0 579 380 231 380;#P fasten 43 0 23 0 761 379 231 379;#P connect 26 1 27 1;#P connect 5 2 36 0;#P connect 36 0 35 0;#P connect 26 2 27 2;#P fasten 9 1 33 0 178 206 411 206;#P connect 33 0 13 0;#P connect 13 0 39 0;#P connect 39 0 20 0;#P connect 20 0 30 0;#P connect 30 0 41 0;#P connect 13 1 20 1;#P fasten 9 1 15 0 178 206 579 206;#P connect 15 0 21 0;#P connect 21 0 31 0;#P connect 31 0 42 0;#P connect 15 1 21 1;#P fasten 9 1 12 0 178 206 761 206;#P connect 12 0 19 0;#P connect 19 0 37 0;#P connect 37 0 43 0;#P connect 12 1 19 1;#P connect 12 2 19 2;#P fasten 9 1 16 0 178 206 874 206;#P connect 16 0 22 0;#P connect 16 1 22 1;#P fasten 9 1 17 0 178 206 953 206;#P fasten 9 1 14 0 178 206 995 206;#P fasten 8 0 7 0 92 160 1067 160;#P pop;