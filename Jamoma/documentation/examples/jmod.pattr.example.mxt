max v2;
#N vpatcher 223 130 959 669;
#P window setfont Verdana 9.;
#P window linecount 1;
#P newex 398 51 29 11665417 qlim;
#P window setfont "Sans Serif" 9.;
#P comment 261 490 213 9109513 MUST TURN ON GREEDY MODE!;
#P window setfont Verdana 9.;
#P newex 398 75 79 11665417 send jmod.init;
#P newex 398 28 54 11665417 loadbang;
#P newex 106 471 226 11665417 pattrstorage jmod.pattr.example @greedy 1;
#X autorestore jmod.pattr.example.xml;
#X client_rect 1349 109 1916 777;
#X storage_rect 0 0 640 240;
#P objectname jmod.pattr.example;
#P bpatcher 310 110 255 60 0 0 jmod.edge%.mod 0;
#P objectname /edge%;
#P bpatcher 58 183 255 60 0 0 jmod.degrade~.mod 0;
#P objectname /degrade~;
#P bpatcher 23 80 255 60 0 0 jmod.degrade~.mod 0;
#P objectname /another_degrade~;
#P window setfont "Sans Serif" 9.;
#P message 371 284 52 9109513 readagain;
#P message 357 265 55 9109513 writeagain;
#P message 292 419 55 9109513 1 \, 2 1000;
#P newex 292 441 40 9109513 line 1.;
#P message 304 334 42 9109513 store 3;
#B color 2;
#P message 167 378 14 9109513 3;
#B color 9;
#P flonum 464 375 35 9 0. 1. 3 139 0 0 0 156 179 255 222 222 222 0 0 0;
#P message 464 394 68 9109513 recall 1 3 \$1;
#B color 9;
#P message 148 378 14 9109513 2;
#B color 9;
#P message 129 378 14 9109513 1;
#B color 9;
#P message 256 334 42 9109513 store 2;
#B color 2;
#P message 209 334 42 9109513 store 1;
#B color 2;
#P comment 149 284 216 9109513 read (filename) reads stored data from a file;
#P message 115 284 29 9109513 read;
#P message 99 265 34 9109513 write;
#P flonum 300 377 35 9 1. 2. 3 139 0 0 0 156 179 255 222 222 222 0 0 0;
#P comment 139 265 213 9109513 write (filename) writes stored data to a file;
#P comment 348 335 265 9109513 store currently available data in a numbered preset;
#P window linecount 2;
#P comment 184 373 88 9109513 recall data from a numbered preset;
#P comment 337 373 116 9109513 recall data interpolated between two presets;
#P comment 452 416 153 9109513 recall data interpolated between two non-adjacent presets;
#P comment 350 428 100 9109513 or \, use line to move between them...;
#P comment 428 269 149 9109513 read and write \, using the same file as previously used.;
#P user panel 94 261 512 43;
#X brgb 223 255 228;
#X frgb 0 0 0;
#X border 0;
#X rounded 0;
#X shadow 0;
#X done;
#P user panel 94 304 512 64;
#X brgb 208 208 255;
#X frgb 0 0 0;
#X border 0;
#X rounded 0;
#X shadow 0;
#X done;
#P user panel 94 368 512 57;
#X brgb 222 254 158;
#X frgb 0 0 0;
#X border 0;
#X rounded 0;
#X shadow 0;
#X done;
#P user panel 283 425 323 41;
#X brgb 222 254 158;
#X frgb 0 0 0;
#X border 0;
#X rounded 0;
#X shadow 0;
#X done;
#P connect 17 0 30 0;
#P connect 18 0 30 0;
#P connect 21 0 30 0;
#P connect 12 0 30 0;
#P connect 13 0 30 0;
#P connect 15 0 30 0;
#P connect 16 0 30 0;
#P connect 22 0 30 0;
#P connect 25 0 30 0;
#P connect 26 0 30 0;
#P connect 23 0 30 0;
#P connect 11 0 30 0;
#P connect 19 0 30 0;
#P connect 24 0 23 0;
#P connect 31 0 34 0;
#P connect 34 0 32 0;
#P connect 20 0 19 0;
#P pop;
