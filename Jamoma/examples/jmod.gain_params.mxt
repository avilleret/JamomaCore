max v2;
#N vpatcher 116 231 847 791;
#P window setfont "Sans Serif" 9.;
#P message 6 120 68 196617 gain -6 3000;
#P comment 6 103 206 196617 Ramp to new value;
#P message 243 196 60 196617 gain_2_dec;
#P message 307 196 58 196617 gain_2_inc;
#P message 148 196 79 196617 gain_2_midi \$1;
#P number 111 196 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;
#P message 41 196 54 196617 gain_2 \$1;
#P number 4 196 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;
#P message 243 175 60 196617 gain_1_dec;
#P message 307 175 58 196617 gain_1_inc;
#P message 148 175 79 196617 gain_1_midi \$1;
#P number 111 175 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;
#P message 41 175 54 196617 gain_1 \$1;
#P number 4 175 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;
#P window setfont "Sans Serif" 12.;
#P comment 4 149 215 196620 Channel gains;
#P hidden outlet 403 373 15 0;
#P window setfont "Sans Serif" 9.;
#P comment 244 59 118 196617 Increase/decrease;
#P message 245 75 48 196617 gain_dec;
#P message 309 75 45 196617 gain_inc;
#P message 113 119 94 196617 gain_midi 0 10000;
#P message 150 75 65 196617 gain_midi \$1;
#P number 113 75 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;
#P comment 112 59 115 196617 Set gain in midi units;
#P message 43 75 42 196617 gain \$1;
#P number 6 75 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;
#P window setfont "Sans Serif" 18.;
#P comment 3 1 148 196626 Gain Controls;
#P window setfont "Sans Serif" 9.;
#P comment 6 59 75 196617 Set gain in dB;
#P window setfont "Sans Serif" 12.;
#P comment 3 31 112 196620 Master gain;
#P user panel 0 0 373 27;
#X brgb 205 201 228;
#X frgb 0 0 0;
#X border 0;
#X rounded 0;
#X shadow 0;
#X done;
#P background;
#P user panel 0 31 373 108;
#X brgb 205 201 228;
#X frgb 0 0 0;
#X border 0;
#X rounded 0;
#X shadow 0;
#X done;
#P background;
#P user panel 0 143 373 308;
#X brgb 205 201 228;
#X frgb 0 0 0;
#X border 0;
#X rounded 0;
#X shadow 0;
#X done;
#P background;
#P hidden connect 17 0 18 0;
#P hidden connect 23 0 24 0;
#P hidden connect 6 0 7 0;
#P hidden connect 19 0 20 0;
#P hidden connect 25 0 26 0;
#P hidden connect 9 0 10 0;
#P hidden connect 30 0 15 0;
#P hidden connect 13 0 15 0;
#P hidden connect 12 0 15 0;
#P hidden connect 11 0 15 0;
#P hidden connect 10 0 15 0;
#P hidden connect 7 0 15 0;
#P hidden connect 28 0 15 0;
#P hidden connect 27 0 15 0;
#P hidden connect 22 0 15 0;
#P hidden connect 21 0 15 0;
#P hidden connect 26 0 15 0;
#P hidden connect 20 0 15 0;
#P hidden connect 24 0 15 0;
#P hidden connect 18 0 15 0;
#P pop;
