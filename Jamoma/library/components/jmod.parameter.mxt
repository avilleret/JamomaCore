max v2;
#N vpatcher 183 117 988 711;
#P origin 0 -5;
#P window setfont "Sans Serif" 9.;
#P window linecount 1;
#N vpatcher 399 96 1169 476;
#P origin 0 5;
#P window setfont "Sans Serif" 9.;
#P message 584 138 128 196617 name $2;
#P newex 283 86 49 196617 route $2;
#P message 541 159 75 196617 kind parameter;
#P newex 283 156 79 196617 prepend symbol;
#P newex 106 177 65 196617 zl join;
#P newex 106 143 50 196617 zl slice 1;
#P newex 283 112 313 196617 t documentation repetitions ramp clipmode range type bang bang;
#P window linecount 1;
#P newex 106 302 109 196617 send $1_register_doc;
#P newex 283 57 112 196617 receive $1_query_doc;
#P window linecount 0;
#P newex 61 114 55 196617 route done;
#N coll ;
#P newobj 106 235 53 196617 coll;
#P newex 106 202 71 196617 prepend store;
#P inlet 61 86 15 0;
#P connect 0 0 3 0;
#P connect 3 1 7 0;
#P connect 7 0 8 0;
#P connect 8 0 1 0;
#P connect 1 0 2 0;
#P fasten 9 0 2 0 288 225 111 225;
#P fasten 12 0 5 0 589 268 111 268;
#P fasten 10 0 5 0 546 268 111 268;
#P connect 2 0 5 0;
#P fasten 3 1 8 1 111 138 166 138;
#P connect 4 0 11 0;
#P connect 11 0 6 0;
#P fasten 6 5 9 0 503 142 288 142;
#P fasten 6 4 9 0 460 142 288 142;
#P fasten 6 3 9 0 417 142 288 142;
#P fasten 6 2 9 0 374 142 288 142;
#P fasten 6 1 9 0 331 142 288 142;
#P fasten 6 0 9 0 288 142 288 142;
#P connect 6 6 10 0;
#P connect 6 7 12 0;
#P pop;
#P newobj 643 82 81 196617 p documentation;
#P window linecount 2;
#P newex 331 493 283 196617 jmod.post "WARNING - INVALID TYPE FOR JMOD.PARAMETER";
#P window linecount 1;
#N vpatcher 218 46 818 446;
#P window setfont "Sans Serif" 9.;
#P window linecount 1;
#P message 467 332 64 196617 type symbol;
#P message 339 332 65 196617 type float32;
#P message 409 332 50 196617 type long;
#P outlet 412 363 15 0;
#P newex 425 167 21 196617 t 9;
#P newex 382 167 21 196617 t 8;
#P newex 339 167 21 196617 t 7;
#P newex 296 167 21 196617 t 6;
#P newex 253 167 21 196617 t 5;
#P newex 167 167 21 196617 t 3;
#P newex 81 126 355 196617 sel generic menu toggle msg_int msg_float msg_list msg_symbol jit_matrix;
#P newex 124 167 21 196617 t 2;
#P window linecount 0;
#P newex 81 198 422 196617 gate 9 1;
#P window linecount 1;
#P newex 81 167 21 196617 t 1;
#P window linecount 0;
#P newex 210 167 21 196617 t 4;
#P window linecount 1;
#P newex 81 65 102 196617 r $0_attribute_type;
#P outlet 81 337 15 0;
#P inlet 493 77 15 0;
#P window linecount 0;
#N vpatcher 14 59 614 459;
#P window setfont "Sans Serif" 9.;
#P newex 50 50 98 196617 jmod.menuprep.mxt;
#P inlet 50 30 15 0;
#P outlet 50 72 15 0;
#P connect 1 0 2 0;
#P connect 2 0 0 0;
#P pop;
#P newobj 132 240 40 196617 p menu;
#N vpatcher 14 59 614 459;
#P window setfont "Sans Serif" 9.;
#P newex 50 73 27 196617 i;
#P newex 50 50 59 196617 jmod.round;
#P inlet 50 30 15 0;
#P outlet 50 95 15 0;
#P connect 1 0 2 0;
#P connect 2 0 3 0;
#P connect 3 0 0 0;
#P pop;
#P newobj 234 240 29 196617 p int;
#P connect 4 0 9 0;
#P connect 9 0 6 0;
#P lcolor 1;
#P fasten 6 0 7 0 86 191 86 191;
#P fasten 8 0 7 0 129 191 86 191;
#P fasten 5 0 7 0 215 191 86 191;
#P fasten 10 0 7 0 172 191 86 191;
#P fasten 11 0 7 0 258 191 86 191;
#P fasten 12 0 7 0 301 191 86 191;
#P fasten 13 0 7 0 344 191 86 191;
#P fasten 14 0 7 0 387 191 86 191;
#P fasten 15 0 7 0 430 191 86 191;
#P connect 7 0 3 0;
#P fasten 7 2 3 0 188 314 86 314;
#P fasten 7 8 3 0 494 314 86 314;
#P fasten 7 7 3 0 443 314 86 314;
#P fasten 7 6 3 0 392 314 86 314;
#P fasten 7 5 3 0 341 314 86 314;
#P fasten 7 4 3 0 290 314 86 314;
#P fasten 1 0 3 0 137 314 86 314;
#P fasten 0 0 3 0 239 314 86 314;
#P connect 9 1 8 0;
#P connect 7 1 1 0;
#P connect 9 2 10 0;
#P connect 9 3 5 0;
#P connect 7 3 0 0;
#P connect 9 4 11 0;
#P connect 9 5 12 0;
#P connect 9 6 13 0;
#P connect 9 4 18 0;
#P connect 9 7 14 0;
#P connect 9 2 17 0;
#P connect 9 3 17 0;
#P connect 17 0 16 0;
#P connect 18 0 16 0;
#P connect 19 0 16 0;
#P connect 9 8 15 0;
#P connect 9 6 19 0;
#P connect 2 0 7 1;
#P pop;
#P newobj 29 305 35 196617 p type;
#N vpatcher 14 59 756 548;
#P window setfont "Sans Serif" 9.;
#P number 83 227 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;
#P inlet 390 85 15 0;
#P window linecount 0;
#P newex 515 144 105 196617 r $0_attribute_range;
#P newex 515 204 75 196617 unpack 0. 127.;
#P window linecount 1;
#P newex 389 309 61 196617 clip 0. 127.;
#P newex 276 309 73 196617 minimum 127.;
#P window linecount 0;
#P newex 163 309 64 196617 maximum 0.;
#P outlet 50 365 15 0;
#P newex 50 226 27 196617 + 1;
#P newex 50 254 350 196617 gate 4 1;
#P newex 50 174 79 196617 prepend symbol;
#P user umenu 50 197 100 196647 1 64 213 1;
#X add none;
#X add low;
#X add high;
#X add both;
#P window linecount 1;
#P newex 50 144 121 196617 r $0_attribute_clipmode;
#P connect 0 0 2 0;
#P connect 2 0 1 0;
#P connect 1 0 4 0;
#P connect 4 0 3 0;
#P connect 3 0 5 0;
#P connect 6 0 5 0;
#P connect 7 0 5 0;
#P connect 8 0 5 0;
#P connect 4 0 12 0;
#P connect 3 1 6 0;
#P fasten 9 0 6 1 520 278 222 278;
#P connect 3 2 7 0;
#P fasten 9 1 7 1 585 296 344 296;
#P connect 3 3 8 0;
#P connect 11 0 3 1;
#P fasten 9 0 8 1 520 280 419 280;
#P fasten 9 1 8 2 585 298 444 298;
#P connect 10 0 9 0;
#P pop;
#P newobj 29 279 64 196617 p clip_range;
#P newex 471 250 172 196617 s $0_attribute_clipmode;
#P newex 436 271 156 196617 s $0_attribute_range;
#P newex 366 313 153 196617 s $0_attribute_type;
#P newex 401 292 182 196617 s $0_attribute_repetitions;
#P newex 331 334 156 196617 s $0_attribute_ramp;
#P newex 175 216 72 196617 route int float;
#B color 14;
#P newex 29 484 61 196617 prepend set;
#P outlet 122 509 15 0;
#P newex 29 459 43 196617 qlim 65;
#N vpatcher 40 210 622 540;
#P window setfont "Sans Serif" 9.;
#P newex 80 92 131 196617 r $0_attribute_repetitions;
#P window linecount 1;
#P newex 80 115 30 196617 == 0;
#P newex 80 137 27 196617 + 1;
#P window setfont Verdana 9.;
#P window linecount 0;
#P message 334 145 66 472055817 -2000000.;
#P window setfont "Sans Serif" 9.;
#P comment 308 215 127 196617 Filter repetitions;
#P inlet 288 72 15 0;
#P newex 334 125 55 196617 r jmod.init;
#P comment 402 127 127 196617 this allows the first zero value to make it through;
#P newex 234 211 64 196617 jmod.change;
#P outlet 80 276 15 0;
#P inlet 234 72 15 0;
#P newex 80 178 164 196617 gate 2 1;
#P connect 11 0 10 0;
#P connect 10 0 9 0;
#P connect 9 0 0 0;
#P connect 3 0 2 0;
#P connect 0 0 2 0;
#P fasten 1 0 0 1 239 169 239 169;
#P connect 0 1 3 0;
#P connect 6 0 3 1;
#P connect 8 0 3 1;
#P connect 5 0 8 0;
#P pop;
#P newobj 29 338 156 196617 p repetitions;
#P window linecount 2;
#P comment 331 371 175 196617 Register this parameter with the module hub;
#P window linecount 1;
#P newex 331 62 55 196617 r jmod.init;
#P newex 29 371 121 196617 pattr $2 @autorestore 0;
#X prestore 1 0 0;
#P objectname $2;
#P outlet 29 509 15 0;
#P newex 331 159 280 196617 route ramp type repetitions range clipmode description done;
#P window linecount 2;
#P newex 331 82 299 196617 patcherargs $1 mod_name @ramp 0 @type generic @repetitions 1 @range 0. 127. @clipmode none @description no info provided;
#P window linecount 1;
#P newex 331 437 137 196617 send $1_register;
#P message 331 419 132 196617 $2;
#P newex 331 399 140 196617 receive $1_query;
#P newex 64 132 141 196617 route $2;
#P newex 64 109 139 196617 receive $1_instruction;
#P inlet 29 47 15 0;
#N vpatcher 14 59 370 385;
#P window setfont "Sans Serif" 9.;
#P number 86 135 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;
#P newex 50 91 105 196617 r $0_attribute_ramp;
#P newex 168 189 71 196617 jmod.line.mxt;
#P newex 50 161 128 196617 gate 2;
#P newex 50 135 27 196617 + 1;
#P inlet 229 51 15 0;
#P inlet 168 51 15 0;
#P outlet 50 247 15 0;
#P connect 6 0 3 0;
#P connect 3 0 4 0;
#P connect 5 0 0 0;
#P connect 4 0 0 0;
#P connect 3 0 7 0;
#P connect 1 0 4 1;
#P connect 4 1 5 0;
#P connect 2 0 5 1;
#P pop;
#P newobj 29 249 126 196617 p ramp;
#P window linecount 2;
#P newex 572 192 198 196617 jmod.post "WARNING BAD ATTRIBUTE SPECIFIED TO JMOD.PARAMETER";
#P connect 4 0 1 0;
#P connect 2 0 1 0;
#P connect 1 0 24 0;
#P connect 24 0 25 0;
#P connect 25 0 14 0;
#P connect 14 0 11 0;
#P fasten 25 1 11 0 59 366 34 366;
#P connect 11 0 15 0;
#P connect 15 0 17 0;
#P connect 17 0 10 0;
#P connect 3 0 4 0;
#P fasten 11 0 16 0 34 424 127 424;
#P connect 18 0 1 1;
#P lcolor 15;
#P connect 18 1 1 1;
#P lcolor 15;
#P fasten 11 0 18 0 34 402 252 402 252 207 180 207;
#P lcolor 15;
#P connect 18 1 14 1;
#P lcolor 15;
#P connect 18 0 14 1;
#P lcolor 15;
#P connect 12 0 8 0;
#P fasten 8 1 9 0 625 151 336 151;
#P connect 9 0 19 0;
#P connect 5 0 6 0;
#P connect 6 0 7 0;
#P connect 9 1 21 0;
#P connect 9 2 20 0;
#P connect 9 3 22 0;
#P connect 9 4 23 0;
#P connect 9 7 0 0;
#P connect 8 1 27 0;
#P pop;
