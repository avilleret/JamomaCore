max v2;
#N vpatcher 90 66 716 344;
#P window setfont "Sans Serif" 9.;
#P comment 115 20 32 196617 bleed;
#P comment 120 34 26 196617 gain;
#P comment 77 46 62 196617 normalize;
#P user radiogroup 62 44 79 16;
#X size 1;
#X offset 16;
#X inactive 0;
#X itemtype 1;
#X flagmode 0;
#X set 0;
#X done;
#P hidden newex 342 124 150 196617 jmod.parameter $0_ normalize;
#P objectname jmod.parameter.mxb;
#P flonum 143 18 35 9 0 0 8224 3 0 0 0 221 221 221 222 222 222 0 0 0;
#P flonum 143 32 35 9 0 0 8224 3 0 0 0 221 221 221 222 222 222 0 0 0;
#P hidden newex 342 19 205 196617 jmod.parameter $0_ bleed @ramp_enable 1;
#P objectname jmod.parameter.mxb[4];
#P hidden newex 342 41 201 196617 jmod.parameter $0_ gain @ramp_enable 1;
#P objectname jmod.parameter.mxb[3];
#P flonum 65 18 35 9 0 0 8224 3 0 0 0 221 221 221 222 222 222 0 0 0;
#P comment 5 20 65 196617 feedforward;
#P flonum 65 32 35 9 0 0 8224 3 0 0 0 221 221 221 222 222 222 0 0 0;
#P comment 22 34 48 196617 feedback;
#P hidden newex 342 73 239 196617 jmod.parameter $0_ feedforward @ramp_enable 1;
#P objectname jmod.parameter.mxb[2];
#P hidden newex 342 95 222 196617 jmod.parameter $0_ feedback @ramp_enable 1;
#P objectname jmod.parameter.mxb[1];
#P hidden newex 188 109 79 196617 pattrstorage @autorestore 0 @savemode 0;
#X client_rect 0 0 640 240;
#X storage_rect 0 0 640 240;
#P objectname jmod.wake%;
#P hidden comment 127 221 75 196617 VIDEO OUTPUT;
#P hidden outlet 112 221 13 0;
#P hidden inlet 184 173 13 0;
#P hidden comment 199 173 65 196617 VIDEO INPUT;
#P hidden newex 112 194 82 196617 jmod.wake%.alg;
#P hidden message 23 197 72 196617 \; jmod.init bang;
#B color 3;
#P hidden comment 14 84 79 196617 command input;
#P hidden newex 0 109 187 196617 jmod.hub $0_ jmod.wake% @size 1U-half @module_type video @library_type jitter @num_inputs 1 @num_outputs 1;
#P hidden outlet 0 171 13 0;
#P hidden inlet 0 84 13 0;
#P bpatcher 0 0 256 60 0 0 jmod.gui.mxt 0 $0_;
#P objectname jmod.gui.1Uh.v.mxb;
#P hidden fasten 6 0 0 0 117 216 304 216 304 -16 5 -16;
#P hidden connect 1 0 3 0;
#P hidden connect 3 0 2 0;
#P hidden connect 22 0 23 0;
#P hidden connect 13 0 17 0;
#P hidden connect 12 0 15 0;
#P hidden connect 3 1 6 0;
#P hidden connect 6 0 9 0;
#P hidden connect 19 0 21 0;
#P hidden connect 18 0 20 0;
#P hidden connect 11 0 3 1;
#P hidden connect 8 0 6 1;
#P hidden connect 3 2 11 0;
#P hidden connect 21 0 19 0;
#P hidden connect 20 0 18 0;
#P hidden connect 17 0 13 0;
#P hidden connect 15 0 12 0;
#P hidden connect 23 0 22 0;
#P pop;
