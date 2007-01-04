max v2;#N vpatcher 253 83 1141 548;#P origin 80 0;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P newex 122 141 21 196617 t 1;#P newex 67 141 50 196617 t reset 0;#P newex 67 106 41 196617 sel 0 1;#P window linecount 3;#P comment 384 129 242 196617 Mode 2 won't work that well either because of the normalization and flipping of the screen \, which leaves the outcoming numbers quite useless.;#P toggle 20 184 15 0;#P window linecount 1;#P newex 20 211 29 196617 gate;#P newex 20 232 43 196617 change;#P message 25 141 34 196617 zero;#P newex 519 325 47 196617 cartopol;#N vpatcher 10 59 269 406;#P window setfont "Sans Serif" 9.;#P newex 92 235 34 196617 * -1.;#P newex 144 46 58 196617 r jcom.init;#P newex 92 212 27 196617 / 0.;#P newex 55 212 27 196617 / 0.;#P newex 123 105 76 196617 unpack 0 0 0 0;#P button 123 46 15 0;#P newex 123 75 58 196617 screensize;#P inlet 55 46 15 0;#P inlet 92 46 15 0;#P outlet 55 260 15 0;#P outlet 92 260 15 0;#P connect 3 0 7 0;#P connect 7 0 1 0;#P fasten 6 2 7 1 77 157;#P connect 2 0 8 0;#P connect 8 0 10 0;#P connect 10 0 0 0;#P connect 6 3 8 1;#P connect 5 0 4 0;#P fasten 9 0 4 0 149 69 128 69;#P connect 4 0 6 0;#P pop;#P newobj 484 222 62 196617 p normalize;#N vpatcher 10 59 269 406;#P window setfont "Sans Serif" 9.;#P newex 144 46 58 196617 r jcom.init;#P newex 92 184 23 196617 abs;#P newex 92 160 27 196617 -;#P newex 92 212 27 196617 / 0.;#P newex 55 212 27 196617 / 0.;#P newex 123 105 76 196617 unpack 0 0 0 0;#P button 123 46 15 0;#P newex 123 75 58 196617 screensize;#P inlet 55 46 15 0;#P inlet 92 46 15 0;#P outlet 55 260 15 0;#P outlet 92 260 15 0;#P connect 3 0 7 0;#P connect 7 0 1 0;#P fasten 6 2 7 1 77 157;#P connect 2 0 9 0;#P connect 9 0 10 0;#P connect 10 0 8 0;#P connect 8 0 0 0;#P connect 6 3 9 1;#P connect 6 3 8 1;#P fasten 11 0 4 0 149 69 128 69;#P connect 5 0 4 0;#P connect 4 0 6 0;#P pop;#P newobj 112 268 62 196617 p normalize;#P window linecount 3;#P newex 556 352 234 196617 jcom.return delta_angle @type msg_float @range -3.14 3.14 @description "Angle (in radians) of relative position of mouse.";#P number 343 116 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P window linecount 1;#P newex 302 115 27 196617 + 1;#P newex 302 92 43 196617 route 1;#P newex 302 142 71 196617 prepend mode;#P newex 158 106 41 196617 sel 1 0;#P message 192 141 40 196617 nopoll;#P message 158 141 30 196617 poll;#P window linecount 3;#P newex 519 397 298 196617 jcom.return delta_mag @type msg_float @range 0. 0.4 @description "Mangitude (in screen percentage) of relative position of mouse (sum of horizontal and vertical).";#P window linecount 2;#P newex 485 293 339 196617 jcom.return delta_y @type msg_float @range -0.2 0.2 @description "Vertical delta position of mouse";#P newex 484 256 349 196617 jcom.return delta_x @type msg_float @range -0.2 0.2 @description "Horizontal delta position of mouse";#P newex 112 336 327 196617 jcom.return position_y @type msg_float @range 0. 1. @description "Vertical position of mouse";#P newex 112 302 337 196617 jcom.return position_x @type msg_float @range 0. 1. @description "Horizontal position of mouse";#P window linecount 1;#P newex 67 185 193 196617 mousestate;#B color 5;#P window linecount 2;#P newex 67 232 250 196617 jcom.return button @type toggle @range 0 1 @description "Mouse button";#P window linecount 1;#P newex 67 64 193 196617 jcom.oscroute /mouse_menu /mouse_on;#P inlet 67 40 15 0;#P window linecount 3;#P comment 383 82 236 196617 Mode 1 won't work \, because the mousestate object is hidden in the algorithm. So we just escape from that here.;#P connect 28 0 24 0;#P connect 27 1 24 0;#P connect 24 0 23 0;#P connect 23 0 22 0;#P fasten 22 1 21 0 41 255 10 255 10 133 30 133;#P fasten 4 0 23 1 72 207 44 207;#P connect 1 0 2 0;#P connect 2 0 26 0;#P connect 26 0 27 0;#P fasten 27 0 4 0 72 171 72 171;#P fasten 21 0 4 0 30 170 72 170;#P fasten 13 0 4 0 307 179 72 179;#P fasten 11 0 4 0 197 170 72 170;#P fasten 10 0 4 0 163 170 72 170;#P connect 4 0 3 0;#P connect 4 1 18 0;#P connect 18 0 5 0;#P connect 18 1 6 0;#P connect 26 1 28 0;#P connect 2 1 12 0;#P connect 12 0 10 0;#P connect 4 2 18 1;#P connect 12 1 11 0;#P connect 14 0 15 0;#P fasten 16 0 13 0 348 138 307 138;#P connect 15 0 13 0;#P fasten 14 1 13 0 340 135 307 135;#P fasten 4 3 19 0 207 215 489 215;#P connect 19 0 7 0;#P connect 19 1 8 0;#P connect 19 0 20 0;#P connect 20 0 9 0;#P fasten 4 4 19 1 252 207 541 207;#P connect 19 1 20 1;#P connect 20 1 17 0;#P pop;