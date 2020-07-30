BEGIN LK#AR25J
BEGIN LK#ARMOM

// Friendtalks and scenery talks
APPEND LK#AR25J

// Sequential: How are you going?
IF ~Global("LK#ArathToBTalks","GLOBAL",2)~ a1
  SAY @0
  ++ @1 DO ~SetGlobal("LK#ArathToBTalks","GLOBAL",3) RealSetGlobalTimer("LK#ArathToBTalksTimer","GLOBAL",3600)~ + a1.1
  ++ @2 DO ~SetGlobal("LK#ArathToBTalks","GLOBAL",3) RealSetGlobalTimer("LK#ArathToBTalksTimer","GLOBAL",3600)~ + a1.2
  ++ @3 DO ~SetGlobal("LK#ArathToBTalks","GLOBAL",3) RealSetGlobalTimer("LK#ArathToBTalksTimer","GLOBAL",3600)~ + a1.1
  ++ @4 DO ~SetGlobal("LK#ArathToBTalks","GLOBAL",3) RealSetGlobalTimer("LK#ArathToBTalksTimer","GLOBAL",3600)~ + a1.3
END

IF ~~ a1.1
  SAY @5
  IF ~~ + a1.4
END

IF ~~ a1.2
  SAY @6
  IF ~~ + a1.4
END

IF ~~ a1.3
  SAY @7
  IF ~~ EXIT
END

IF ~~ a1.4
  SAY @8
  = @9
  ++ @10 + a1.5
  ++ @11 + a1.6
  ++ @12 + a1.6
  ++ @13 + a1.7
END

IF ~~ a1.5
  SAY @14
  IF ~~ + a1.8
END

IF ~~ a1.6
  SAY @15
  IF ~~ + a1.8
END

IF ~~ a1.7
  SAY @16
  IF ~~ + a1.8
END

IF ~~ a1.8
  SAY @17
  ++ @18 + a1.9
  ++ @19 + a1.10
  ++ @20 + a1.11
  ++ @21 + a1.11
END

IF ~~ a1.9
  SAY @22
  IF ~~ + a1.12
END

IF ~~ a1.10
  SAY @23
  IF ~~ + a1.12
END

IF ~~ a1.11
  SAY @24
  IF ~~ + a1.12
END

IF ~~ a1.12
  SAY @25
  IF ~~ EXIT
END


// Sequential: Pocket Plane
IF ~Global("LK#ArathToBTalks","GLOBAL",4)~ a2
  SAY @26
  ++ @27 DO ~SetGlobal("LK#ArathToBTalks","GLOBAL",5)~ + a2.1
  ++ @28 DO ~SetGlobal("LK#ArathToBTalks","GLOBAL",5)~ + a2.1
  ++ @29 DO ~SetGlobal("LK#ArathToBTalks","GLOBAL",5)~ + a2.2
  ++ @30 DO ~SetGlobal("LK#ArathToBTalks","GLOBAL",5)~ + a2.3
  ++ @31 DO ~SetGlobal("LK#ArathToBTalks","GLOBAL",5)~ + a2.1
END

IF ~~ a2.1
  SAY @32
  = @33
  ++ @34 + a2.4
  ++ @35 + a2.5
  ++ @36 + a2.4
  ++ @37 + a2.6
END

IF ~~ a2.2
  SAY @38
  IF ~~ + a2.1
END

IF ~~ a2.3
  SAY @39
  IF ~~ + a2.1
END

IF ~~ a2.4
  SAY @40
  ++ @41 + a2.7
  ++ @42 + a2.8
  ++ @43 + a2.9
  ++ @44 + a2.10
END

IF ~~ a2.5
  SAY @45
  IF ~~ + a2.3
END

IF ~~ a2.6
  SAY @46
  IF ~~ EXIT
END

IF ~~ a2.7
  SAY @47
  IF ~~ + a2.11
END

IF ~~ a2.8
  SAY @48
  = @49
  IF ~~ + a2.11
END

IF ~~ a2.9
  SAY @50
  IF ~~ + a2.6
END

IF ~~ a2.10
  SAY @51
  = @52
  IF ~~ + a2.6
END

IF ~~ a2.11
  SAY @53
  = @54
  ++ @55 + a2.12
  ++ @56 + a2.13
  ++ @57 + a2.14
  ++ @58 + a2.15
END

IF ~~ a2.12
  SAY @59
  IF ~~ + a2.16
END

IF ~~ a2.13
  SAY @60
  IF ~~ + a2.16
END

IF ~~ a2.14
  SAY @61
  IF ~~ + a2.16
END

IF ~~ a2.15
  SAY @62
  IF ~~ + a2.16
END

IF ~~ a2.16
  SAY @63
  IF ~~ EXIT
END


// Sequential: The nature of good and evil, and remembering the dead
IF ~Global("LK#ArathToBTalks","GLOBAL",6)~ a4
  SAY @64
  ++ @65 DO ~SetGlobal("LK#ArathToBTalks","GLOBAL",7)~ + a4.1
  ++ @66 DO ~SetGlobal("LK#ArathToBTalks","GLOBAL",7)~ + a4.2
  ++ @67 DO ~SetGlobal("LK#ArathToBTalks","GLOBAL",7)~ + a4.3
  ++ @68 DO ~SetGlobal("LK#ArathToBTalks","GLOBAL",7)~ + a4.4
  ++ @69 DO ~SetGlobal("LK#ArathToBTalks","GLOBAL",7)~ + a4.1
END

IF ~~ a4.1
  SAY @70
  IF ~~ + a4.5
END

IF ~~ a4.2
  SAY @71
  IF ~~ + a4.5
END

IF ~~ a4.3
  SAY @72
  IF ~~ + a4.5
END

IF ~~ a4.4
  SAY @73
  IF ~~ + a4.5
END

IF ~~ a4.5
  SAY @74
  ++ @75 + a4.6
  + ~Global("SaradushSacked","GLOBAL",1)~ + @76 + a4.8
  ++ @77 + a4.7
  ++ @78 + a4.6
  ++ @79 + a4.8
END

IF ~~ a4.6
  SAY @80
  IF ~~ + a4.8
END

IF ~~ a4.7
  SAY @81
  IF ~~ + a4.8
END

IF ~~ a4.8
  SAY @82
  IF ~~ + a4.9
END

IF ~~ a4.9
  SAY @83
  ++ @84 + a4.14
  ++ @85 + a4.14
  ++ @86 + a4.13
  ++ @87 + a4.10
  ++ @88 + a4.11
  ++ @89 + a4.12
END

IF ~~ a4.10
  SAY @90
  IF ~~ + a4.13
END

IF ~~ a4.11
  SAY @91
  IF ~~ + a4.13
END

IF ~~ a4.12
  SAY @92
  = @93
  IF ~~ + a4.14
END

IF ~~ a4.13
   SAY @94
   IF ~~ + a4.14
END

IF ~~ a4.14
  SAY @95
  = @96
  ++ @97 + a4.15
  ++ @98 + a4.16
  ++ @99 + a4.17
  ++ @100 + a4.18
END

IF ~~ a4.15
  SAY @101
  IF ~~ + a4.19
END

IF ~~ a4.16
  SAY @102
  IF ~~ + a4.19
END

IF ~~ a4.17
  SAY @103
  IF ~~ + a4.19
END

IF ~~ a4.18
  SAY @104
  IF ~~ + a4.19
END
  
IF ~~ a4.19
  SAY @105
  = @106
  IF ~~ EXIT
END


// Scenery: Self-consciousness in the face of divinity
IF ~Global("LK#ArathToBTalks","GLOBAL",8)~ a5
  SAY @107
  ++ @108 DO ~SetGlobal("LK#ArathToBTalks","GLOBAL",9)~ + a5.1
  ++ @109 DO ~SetGlobal("LK#ArathToBTalks","GLOBAL",9)~ + a5.1
  ++ @110 DO ~SetGlobal("LK#ArathToBTalks","GLOBAL",9)~ + a5.1
  ++ @111 DO ~SetGlobal("LK#ArathToBTalks","GLOBAL",9)~ + a5.1
  ++ @112 DO ~SetGlobal("LK#ArathToBTalks","GLOBAL",9)~ + a5.1
END

IF ~~ a5.1
  SAY @113
  = @114
  = @115
  = @116
  = @117
  = @118
  = @119
  = @120
  = @121
  = @122
  = @123
  ++ @124 + a5.2
  ++ @125 + a5.3
  ++ @126 + a5.4
  ++ @127 + a5.5
  ++ @128 + a5.6
END

IF ~~ a5.2
  SAY @129
  IF ~~ + a5.7
END

IF ~~ a5.3
  SAY @130
  IF ~~ + a5.7
END

IF ~~ a5.4
  SAY @131
  = @132
  IF ~~ + a5.7
END

IF ~~ a5.5
  SAY @133
  IF ~~ + a5.7
END

IF ~~ a5.6
  SAY @134
  IF ~~ + a5.7
END

IF ~~ a5.7
  SAY @135
  = @136
  = @137
  IF ~~ EXIT
END


// Plot: The Final Hug
IF ~Global("LK#ArathToBTalks","GLOBAL",10)~ a6
  SAY @138
  ++ @139 DO ~SetGlobal("LK#ArathToBTalks","GLOBAL",11)~ + a6.1
  ++ @140 DO ~SetGlobal("LK#ArathToBTalks","GLOBAL",11)~ + a6.2
  ++ @141 DO ~SetGlobal("LK#ArathToBTalks","GLOBAL",11)~ + a6.3
  ++ @142 DO ~SetGlobal("LK#ArathToBTalks","GLOBAL",11)~ + a6.4
END

IF ~~ a6.1
  SAY @143
  IF ~~ + a6.2
END

IF ~~ a6.2
  SAY @144
  IF ~~ + a6.5
END

IF ~~ a6.3
  SAY @145
  = @146
  IF ~~ + a6.2
END

IF ~~ a6.4
  SAY @147
  IF ~~ + a6.5
END

IF ~~ a6.5
  SAY @148
  = @149
  ++ @150 + a6.6
  ++ @151 + a6.7
  ++ @152 + a6.8
  ++ @153 + a6.9
  ++ @154 + a6.10
END

IF ~~ a6.6
  SAY @155
  IF ~~ + a6.11
END

IF ~~ a6.7
  SAY @156
  IF ~~ + a6.11
END

IF ~~ a6.8
  SAY @157
  IF ~~ + a6.11
END

IF ~~ a6.9
  SAY @158
  IF ~~ + a6.11
END

IF ~~ a6.10
  SAY @159
  IF ~~ + a6.11
END

IF ~~ a6.11
  SAY @160
  IF ~~ EXIT
END


// ---------------------------------------------------------------------------------------------------- //
// Romancccccccccccccccccccccccccccccccccccccccceeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee //
// ---------------------------------------------------------------------------------------------------- //

// Arath ToB romance

// Talk 1
IF ~Global("LK#ArathToBLovetalks","GLOBAL",2)~ a7
  SAY @161
  ++ @162 DO ~SetGlobal("LK#ArathToBLovetalks","GLOBAL",3) RealSetGlobalTimer("LK#ArathToBRomanceTimer","GLOBAL",3600)~ + a7.1
  ++ @163 DO ~SetGlobal("LK#ArathToBLovetalks","GLOBAL",3) RealSetGlobalTimer("LK#ArathToBRomanceTimer","GLOBAL",3600)~ + a7.2
  ++ @164 DO ~SetGlobal("LK#ArathToBLovetalks","GLOBAL",3) RealSetGlobalTimer("LK#ArathToBRomanceTimer","GLOBAL",3600)~ + a7.3
  ++ @165 DO ~SetGlobal("LK#ArathToBLovetalks","GLOBAL",3) RealSetGlobalTimer("LK#ArathToBRomanceTimer","GLOBAL",3600)~ + a7.4
END

IF ~~ a7.1
  SAY @166
  ++ @167 + a7.5
  ++ @168 + a7.7
  ++ @169 + a7.6
  ++ @170 + a7.7
END

IF ~~ a7.2
  SAY @171
  IF ~~ + a7.1
END

IF ~~ a7.3
  SAY @172
  IF ~~ + a7.1
END

IF ~~ a7.4
  SAY @173
  IF ~~ + a7.8
END

IF ~~ a7.5
  SAY @174
  IF ~~ + a7.8
END

IF ~~ a7.6
  SAY @175
  IF ~~ + a7.8
END

IF ~~ a7.7
  SAY @176
  IF ~~ + a7.8
END

IF ~~ a7.8
  SAY @177
  ++ @178 + a7.9
  ++ @179 + a7.9
  ++ @180 + a7.10
END

IF ~~ a7.9
  SAY @181
  ++ @182 + a7.11
  ++ @183 + a7.12
  ++ @184 + a7.13
  ++ @185 + a7.11
END

IF ~~ a7.10
  SAY @186
  IF ~~ + a7.9
END

IF ~~ a7.11
  SAY @187
  ++ @188 + a7.14
  ++ @189 + a7.14
  ++ @190 + a7.15
  ++ @191 + a7.16
END

IF ~~ a7.12
  SAY @192
  IF ~~ + a7.11
END

IF ~~ a7.13
  SAY @193
  = @194
  IF ~~ + a7.11
END

IF ~~ a7.14
  SAY @195
  IF ~~ + a7.17
END

IF ~~ a7.15
  SAY @196
  IF ~~ + a7.17
END

IF ~~ a7.16
  SAY @197
  IF ~~ + a7.17
END

IF ~~ a7.17
  SAY @198
  ++ @199 + a7.18
  ++ @200 + a7.19
  ++ @201 + a7.20
  ++ @202 + a7.21
END

IF ~~ a7.18
  SAY @203
  = @204
  IF ~~ + a7.22
END

IF ~~ a7.19
  SAY @205
  IF ~~ + a7.22
END

IF ~~ a7.20
  SAY @206
  = @207
  IF ~~ EXIT
END

IF ~~ a7.21
  SAY @208
  IF ~~ + a7.22
END

IF ~~ a7.22
  SAY @209
  IF ~~ EXIT
END


// Talk 2
IF ~Global("LK#ArathToBLovetalks","GLOBAL",4)~ a8
  SAY @210
  ++ @211 DO ~SetGlobal("LK#ArathToBLovetalks","GLOBAL",5) RealSetGlobalTimer("LK#ArathToBRomanceTimer","GLOBAL",3600)~ + a8.1
  ++ @212 DO ~SetGlobal("LK#ArathToBLovetalks","GLOBAL",5) RealSetGlobalTimer("LK#ArathToBRomanceTimer","GLOBAL",3600)~ + a8.2
  ++ @213 DO ~SetGlobal("LK#ArathToBLovetalks","GLOBAL",5) RealSetGlobalTimer("LK#ArathToBRomanceTimer","GLOBAL",3600)~ + a8.3
  ++ @214 DO ~SetGlobal("LK#ArathToBLovetalks","GLOBAL",5) RealSetGlobalTimer("LK#ArathToBRomanceTimer","GLOBAL",3600)~ + a8.4
END

IF ~~ a8.1
  SAY @215
  IF ~~ + a8.5
END

IF ~~ a8.2
  SAY @216
  IF ~~ + a8.5
END

IF ~~ a8.3
  SAY @84
  IF ~~ + a8.5
END

IF ~~ a8.4
  SAY @217
  IF ~~ + a8.5
END

IF ~~ a8.5
  SAY @218
  ++ @219 + a8.6
  ++ @220 + a8.6
  ++ @221 + a8.6
  ++ @222 + a8.7
  ++ @223 + a8.8
END

IF ~~ a8.6
  SAY @224
  ++ @225 + a8.13
  ++ @226 + a8.14
  ++ @227 + a8.15
END

IF ~~ a8.7
  SAY @228
  = @229
  ++ @230 + a8.9
  ++ @231 + a8.10
  ++ @232 + a8.6
END

IF ~~ a8.8
  SAY @233
  = @234
  ++ @235 + a8.11
  ++ @236 + a8.10
  ++ @232 + a8.6
END

IF ~~ a8.9
  SAY @237
  = @238
  IF ~~ + a8.15
END

IF ~~ a8.10
  SAY @239
  IF ~~ + a8.15
END

IF ~~ a8.11
  SAY @240
  IF ~~ + a8.15
END

/*removed*/

IF ~~ a8.13
  SAY @241
  ++ @242 + a8.16
  ++ @243 + a8.17
  ++ @244 + a8.18
  ++ @245 + a8.19
END

IF ~~ a8.14
  SAY @246
  ++ @242 + a8.16
  ++ @243 + a8.17
  ++ @244 + a8.18
  ++ @245 + a8.19
END

IF ~~ a8.15
  SAY @247
  ++ @242 + a8.16
  ++ @243 + a8.17
  ++ @244 + a8.18
  ++ @245 + a8.19
END

IF ~~ a8.16
  SAY @248
  IF ~~ EXIT
END

IF ~~ a8.17
  SAY @249
  IF ~~ + a8.18
END

IF ~~ a8.18
  SAY @250
  IF ~~ EXIT
END

IF ~~ a8.19
  SAY @251
  IF ~~ + a8.18
END


// Talk 3: at rest
IF ~Global("LK#ArathToBLovetalks","GLOBAL",6)~ a10
  SAY @252
  ++ @253 DO ~SetGlobal("LK#ArathToBLovetalks","GLOBAL",7) RealSetGlobalTimer("LK#ArathToBRomanceTimer","GLOBAL",3600)~ + a10.2
  ++ @254 DO ~SetGlobal("LK#ArathToBLovetalks","GLOBAL",7) RealSetGlobalTimer("LK#ArathToBRomanceTimer","GLOBAL",3600)~ + a10.2
  ++ @255 DO ~SetGlobal("LK#ArathToBLovetalks","GLOBAL",7) RealSetGlobalTimer("LK#ArathToBRomanceTimer","GLOBAL",3600)~ + a10.1
  ++ @256 DO ~SetGlobal("LK#ArathToBLovetalks","GLOBAL",7) RealSetGlobalTimer("LK#ArathToBRomanceTimer","GLOBAL",3600)~ + a10.2
END

IF ~~ a10.1
  SAY @257
  IF ~~ + a10.2
END

IF ~~ a10.2
  SAY @258
  = @259
  ++ @260 + a10.3
  ++ @261 + a10.4
  ++ @262 + a10.5
  ++ @263 + a10.8
  ++ @264 + a10.6
  ++ @265 + a10.7
END

IF ~~ a10.3
  SAY @266
  IF ~~ + a10.10
END

IF ~~ a10.4
  SAY @267
  IF ~~ + a10.10
END

IF ~~ a10.5
  SAY @268
  IF ~~ + a10.10
END

IF ~~ a10.6
  SAY @269
  IF ~~ + a10.10
END

IF ~~ a10.7
  SAY @270
  IF ~~ + a10.10
END

IF ~~ a10.8
  SAY @271
  IF ~~ + a10.10
END

IF ~~ a10.9
  SAY @272
  IF ~~ + a10.10
END

IF ~~ a10.10
  SAY @273
  IF ~~ EXIT
END

// Talk 4 at rest
IF ~Global("LK#ArathToBLovetalks","GLOBAL",8)~ a11
  SAY @274
  ++ @275 DO ~SetGlobal("LK#ArathToBLovetalks","GLOBAL",9)~ + a11.3
  ++ @276 DO ~SetGlobal("LK#ArathToBLovetalks","GLOBAL",9) ~ + a11.3
  ++ @277 DO ~SetGlobal("LK#ArathToBLovetalks","GLOBAL",9)~ + a11.1
  ++ @278 DO ~SetGlobal("LK#ArathToBLovetalks","GLOBAL",9)~ + a11.2
END

IF ~~ a11.1
  SAY @279
  IF ~~ + a11.3
END

IF ~~ a11.2
  SAY @280
  IF ~~ + a11.3
END

IF ~~ a11.3
  SAY @281
  ++ @282 + a11.5
  ++ @283 + a11.5
  ++ @284 + a11.5
  ++ @285 + a11.4
END

IF ~~ a11.4
  SAY @286
  IF ~~ + a11.5
END

IF ~~ a11.5
  SAY @287
  = @288
  ++ @289 + a11.6
  ++ @290 + a11.6
  ++ @291 + a11.6
  ++ @292 + a11.6
END

IF ~~ a11.6
  SAY @293
  = @294
  ++ @295 + a11.7
  ++ @296 + a11.7
  ++ @297 + a11.7
  ++ @298 + a11.8
END

IF ~~ a11.7
  SAY @299
  IF ~~ + a11.9
END

IF ~~ a11.8
  SAY @300
  IF ~~ + a11.9
END

IF ~~ a11.9
  SAY @301
  ++ @302 + a11.10
  ++ @303 + a11.11
  ++ @304 + a11.12
  ++ @305 + a11.13
END

IF ~~ a11.10
  SAY @306
  IF ~~ + a11.14
END

IF ~~ a11.11
  SAY @307
  IF ~~ + a11.14
END

IF ~~ a11.12
  SAY @308
  IF ~~ + a11.14
END

IF ~~ a11.13
  SAY @309
  = @310
  = @311
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ a11.14
  SAY @312
  = @313
  IF ~~ DO ~RestParty()~ EXIT
END


// Talk 5: morning after.
IF ~Global("LK#ArathToBLovetalks","GLOBAL",10)~ a9
  SAY @314
  ++ @315 DO ~SetGlobal("LK#ArathToBLovetalks","GLOBAL",11) RealSetGlobalTimer("LK#ArathToBRomanceTimer","GLOBAL",3600)~ + a9.1
  ++ @316 DO ~SetGlobal("LK#ArathToBLovetalks","GLOBAL",11) RealSetGlobalTimer("LK#ArathToBRomanceTimer","GLOBAL",3600)~ + a9.1
  ++ @317 DO ~SetGlobal("LK#ArathToBLovetalks","GLOBAL",11) RealSetGlobalTimer("LK#ArathToBRomanceTimer","GLOBAL",3600)~ + a9.1
  ++ @318 DO ~SetGlobal("LK#ArathToBLovetalks","GLOBAL",11) RealSetGlobalTimer("LK#ArathToBRomanceTimer","GLOBAL",3600)~ + a9.1
END

IF ~~ a9.1
  SAY @319
  ++ @320 + a9.3
  ++ @321 + a9.3
  ++ @322 + a9.2
END

IF ~~ a9.2
  SAY @323
  ++ @324 + a9.5
  ++ @325 + a9.6
  ++ @326 + a9.6
END

IF ~~ a9.3
  SAY @327
  = @328
  = @329
  = @330
  = @331
  ++ @332 + a9.4
  ++ @333 + a9.4
  ++ @334 + a9.5
  ++ @335 +  a9.2
END

IF ~~ a9.4
  SAY @336
  ++ @337 + a9.7
  ++ @338 + a9.7
  ++ @339 + a9.7
  ++ @340 + a9.6
END

IF ~~ a9.5
  SAY @341
  IF ~~ + a9.4
END

IF ~~ a9.6
  SAY @342
  = @343
  = @344
  IF ~~ DO ~SetGlobal("LK#ArathRomanceActive","GLOBAL",3) DropInventory() SetGlobal("LK#ArathJoined","GLOBAL",0) LeaveParty() EscapeArea()~ EXIT
END

IF ~~ a9.7
  SAY @345
  IF ~~ EXIT
END

// talk6. At night.
IF ~Global("LK#ArathToBLovetalks","GLOBAL",12)~ a14
  SAY @346
  ++ @347 DO ~SetGlobal("LK#ArathToBLovetalks","GLOBAL",13) RealSetGlobalTimer("LK#ArathToBRomanceTimer","GLOBAL",3600)~ + a14.2
  ++ @348 DO ~SetGlobal("LK#ArathToBLovetalks","GLOBAL",13) RealSetGlobalTimer("LK#ArathToBRomanceTimer","GLOBAL",3600)~ + a14.2
  ++ @349 DO ~SetGlobal("LK#ArathToBLovetalks","GLOBAL",13) RealSetGlobalTimer("LK#ArathToBRomanceTimer","GLOBAL",3600)~ + a14.2
  ++ @350 DO ~SetGlobal("LK#ArathToBLovetalks","GLOBAL",13) RealSetGlobalTimer("LK#ArathToBRomanceTimer","GLOBAL",3600)~ + a14.1
END

IF ~~ a14.1
  SAY @351
  IF ~~ + a14.2
END

IF ~~ a14.2
  SAY @352
  = @353
  = @354
  = @355
  = @356
  = @357
  = @358
  ++ @359 + a14.3
  ++ @360 + a14.4
  ++ @361 + a14.5
  ++ @362 + a14.6
END

IF ~~ a14.3
  SAY @363
  IF ~~ + a14.7
END

IF ~~ a14.4
  SAY @364
  IF ~~ + a14.7
END

IF ~~ a14.5
  SAY @365
  = @366
  IF ~~ + a14.7
END

IF ~~ a14.6
  SAY @367
  = @366
  IF ~~ + a14.7
END

IF ~~ a14.7
  SAY @368
  = @369
  ++ @370 + a14.8
  ++ @371 + a14.9
  ++ @372 + a14.10
  ++ @373 + a14.11
  ++ @374 + a14.12
END

IF ~~ a14.8
  SAY @375
  IF ~~ + a14.13
END

IF ~~ a14.9
  SAY @376
  IF ~~ + a14.13
END

IF ~~ a14.10
  SAY @377
  IF ~~ + a14.13
END

IF ~~ a14.11
  SAY @378
  IF ~~ + a14.13
END

IF ~~ a14.12
  SAY @379
  IF ~~ + a14.13
END

IF ~~ a14.13
  SAY @380
  = @381
  ++ @382 + a14.14
  ++ @383 + a14.15
  ++ @384 + a14.16
  ++ @385 + a14.14
END

IF ~~ a14.14
  SAY @386
  IF ~~ EXIT
END

IF ~~ a14.15
  SAY @387
  IF ~~ EXIT
END

IF ~~ a14.16
  SAY @388
  = @389
  IF ~~ EXIT
END

// Talk 7 - in place of hugging dialogue
IF ~Global("LK#ArathToBLovetalks","GLOBAL",14)~ a12
  SAY @390
  ++ @391 DO ~SetGlobal("LK#ArathToBLovetalks","GLOBAL",15)~ + a12.1
  ++ @392 DO ~SetGlobal("LK#ArathToBLovetalks","GLOBAL",15)~ + a12.2
  ++ @393 DO ~SetGlobal("LK#ArathToBLovetalks","GLOBAL",15)~ + a12.3
  ++ @394 DO ~SetGlobal("LK#ArathToBLovetalks","GLOBAL",15)~ + a12.4
END

IF ~~ a12.1
  SAY @395
  = @396
  ++ @397 + a12.5
  ++ @398 + a12.6
  ++ @399 + a12.7
  ++ @400 + a12.8
END

IF ~~ a12.2
  SAY @401
  IF ~~ + a12.1
END

IF ~~ a12.3
  SAY @402
  IF ~~ + a12.1
END

IF ~~ a12.4
  SAY @403
  IF ~~ + a12.1
END

IF ~~ a12.5
  SAY @404
  IF ~~ + a12.9
END

IF ~~ a12.6
  SAY @405
  IF ~~ + a12.9
END

IF ~~ a12.7
  SAY @406
  IF ~~ + a12.9
END

IF ~~ a12.8
  SAY @407
  = @408
  IF ~~ + a12.9
END

IF ~~ a12.9
  SAY @409
  ++ @410 + a12.10
  ++ @411 + a12.11
  ++ @270 + a12.11
  ++ @412 + a12.12
  ++ @413 + a12.11
END

IF ~~ a12.10
  SAY @414
  = @415
  IF ~~ EXIT
END

IF ~~ a12.11
  SAY @416
  IF ~~ + a12.10
END

IF ~~ a12.12
  SAY @417
  IF ~~ + a12.10
END


// Plot: Saradush
IF ~Global("LK#ArathToBSaradush","GLOBAL",2)~ a3
  SAY @418
  ++ @419 DO ~SetGlobal("LK#ArathToBSaradush","GLOBAL",3)~ + a3.4
  ++ @420 DO ~SetGlobal("LK#ArathToBSaradush","GLOBAL",3)~ + a3.4
  ++ @421 DO ~SetGlobal("LK#ArathToBSaradush","GLOBAL",3)~ + a3.1
  ++ @422 DO ~SetGlobal("LK#ArathToBSaradush","GLOBAL",3)~ + a3.2
  ++ @423 DO ~SetGlobal("LK#ArathToBSaradush","GLOBAL",3)~ + a3.3
END

IF ~~ a3.1
  SAY @424
  IF ~~ + a3.4
END

IF ~~ a3.2
  SAY @419
  = @425
  IF ~~ + a3.4
END

IF ~~ a3.3
  SAY @426
  = @427
  IF ~~ DO ~RealSetGlobalTimer("LK#ArathToBRomanceTimer","GLOBAL",3600)~ EXIT
END

IF ~~ a3.4
  SAY @428
  IF ~~ DO ~RealSetGlobalTimer("LK#ArathToBRomanceTimer","GLOBAL",3600)~ + a3.4a
END

IF ~~ a3.4a
  SAY @429
  ++ @430 + a3.5
  ++ @431 + a3.6
  ++ @432 + a3.7
  ++ @433 + a3.8
  ++ @434 + a3.3
END

IF ~~ a3.5
  SAY @435
  IF ~~ + a3.9
END

IF ~~ a3.6
  SAY @436
  IF ~~ + a3.9
END

IF ~~ a3.7
  SAY @437
  IF ~~ + a3.9
END

IF ~~ a3.8
  SAY @438
  = @439
  IF ~~ + a3.9
END

IF ~~ a3.9
  SAY @440
  ++ @441 + a3.10
  ++ @442 + a3.11
  ++ @443 + a3.12
  ++ @444 + a3.13
  ++ @445 + a3.14
END

IF ~~ a3.10
  SAY @446
  IF ~~ + a3.15
END

IF ~~ a3.11
  SAY @447
  IF ~~ + a3.15
END

IF ~~ a3.12
  SAY @448
  IF ~~ + a3.15
END

IF ~~ a3.13
  SAY @449
  IF ~~ + a3.15
END

IF ~~ a3.14
  SAY @450
  IF ~~ + a3.15
END

IF ~~ a3.15
  SAY @451
  = @452
  ++ @453 + a3.16
  ++ @454 + a3.17
  ++ @455 + a3.18
  ++ @456 + a3.19
  ++ @457 + a3.20
END

IF ~~ a3.16
  SAY @458
  IF ~~ + a3.21
END

IF ~~ a3.17
  SAY @459
  = @460
  IF ~~ + a3.21
END

IF ~~ a3.18
  SAY @461
  IF ~~ + a3.21
END

IF ~~ a3.19
  SAY @462
  IF ~~ + a3.21
END

IF ~~ a3.20
  SAY @463
  IF ~~ + a3.21
END

IF ~~ a3.21
  SAY @464
  IF ~~ EXIT
END

END

// Wraith
//  Wraith is about his mother 'abandoning' him because he wasn't good enough.

EXTEND_BOTTOM HGWRA01 18
  IF ~Global("LK#ArathRomanceActive","GLOBAL",2) InParty("Arath")~ DO ~SetGlobal("LK#ArathWraith","GLOBAL",1)~ EXTERN HGWRA01 wraith
END

EXTEND_BOTTOM HGWRA01 24
  IF ~Global("LK#ArathRomanceActive","GLOBAL",2)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("lk#arwr1")~ EXIT
END

CHAIN HGWRA01 wraith
  @465
  == LK#AR25J @466
  == HGWRA01 @467
EXTERN HGWRA01 24

//summons Arath's mother

CHAIN IF ~Global("LK#ArathWraith","GLOBAL",1)~ THEN LK#ARMOM wraith.1
  @468
  == LK#AR25J @469
  == LK#ARMOM @470
  == LK#AR25J @471
  == LK#ARMOM @472
  == LK#AR25J @421
  == LK#ARMOM @473
  = @474
  == LK#AR25J @475
  == LK#ARMOM @476
  == LK#AR25J @477
  == LK#ARMOM @478
  == LK#AR25J @479
END
  ++ @480 DO ~SetGlobal("LK#ArathWraith","GLOBAL",2)~ EXTERN HGWRA01 25
  ++ @481 DO ~SetGlobal("LK#ArathWraith","GLOBAL",2)~ EXTERN HGWRA01 25
  ++ @482 DO ~SetGlobal("LK#ArathWraith","GLOBAL",2)~ EXTERN HGWRA01 25
  ++ @483 DO ~SetGlobal("LK#ArathWraith","GLOBAL",2)~ EXTERN HGWRA01 25


APPEND LK#AR25J
// Post-wraith dialogue
IF ~Global("LK#ArathWraith","GLOBAL",3)~ a13
  SAY @484
  ++ @485 + a13.1
  ++ @486 + a13.2
  ++ @487 + a13.2
  ++ @488 + a13.3
  ++ @489 + a13.4
END

IF ~~ a13.1
  SAY @490
  IF ~~ DO ~SetGlobal("LK#ArathWraith","GLOBAL",4) RealSetGlobalTimer("LK#ArathToBRomanceTimer","GLOBAL",1800)~ EXIT
END

IF ~~ a13.2
  SAY @491
  IF ~~ DO ~SetGlobal("LK#ArathWraith","GLOBAL",4) RealSetGlobalTimer("LK#ArathToBRomanceTimer","GLOBAL",1800)~ EXIT
END

IF ~~ a13.3
  SAY @492
  IF ~~ + a13.2
END

IF ~~ a13.4
  SAY @493
  IF ~~ + a13.2
END
END


// Interjections
// Draconis
I_C_T BAZDRA01 0 LK#ArathDraconis
  == LK#AR25J IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @494
END

I_C_T HGNYA01 6 LK#ArathNyalee
  == LK#AR25J IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @495
END

I_C_T HGNYA01 29 LK#ArathNyalee2
  == LK#AR25J IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @496
END

I_C_T AMMAYOR 5 LK#ArathAmmayor
  == LK#AR25J IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @497
END

I_C_T BAZEYE01 9 LK#ArathBazeye
  == LK#AR25J IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @498
END

I_C_T SARKIS01 15 LK#ArathSarkis
  == LK#AR25J IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @499
END

I_C_T SARMEL01 36 LK#ArathMelissan
  == LK#AR25J IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @500
  == SARMEL01 @501
END

I_C_T SARWAI01 1 LK#ArathWaitress
  == LK#AR25J IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @502
END

I_C_T SENDAI 13 LK#ArathSendai
  == LK#AR25J IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @503
END

// Volo
EXTEND_BOTTOM SARVOLO 9 #7
+ ~InParty("Arath") Global("LK#ArathRomanceActive","GLOBAL",2)~ + @504 EXTERN SARVOLO arathromance
+ ~InParty("Arath") !Global("LK#ArathRomanceActive","GLOBAL",2)~ + @504 EXTERN SARVOLO arath
END

CHAIN SARVOLO arathromance
  @505
EXTERN LK#AR25J arath_volo

CHAIN SARVOLO arath
  @506
EXTERN LK#AR25J arath_volo

CHAIN LK#AR25J arath_volo
 @507
EXTERN SARVOLO 9

// Solar
EXTEND_BOTTOM FINSOL01 27
  IF ~InParty("Arath") !Global("LK#ArathRomanceActive","GLOBAL",2) Global("LK#ArathFinSol","GLOBAL",0)~ DO ~SetGlobal("LK#ArathFinSol","GLOBAL",1)~ EXTERN LK#AR25J LK#ArathFinSol1
  IF ~InParty("Arath") Global("LK#ArathRomanceActive","GLOBAL",2) Global("LK#ArathFinSol","GLOBAL",0)~ DO ~SetGlobal("LK#ArathFinSol","GLOBAL",1)~ EXTERN LK#AR25J LK#ArathFinSol2
END

CHAIN LK#AR25J LK#ArathFinSol1
  @508
COPY_TRANS FINSOL01 27

CHAIN LK#AR25J LK#ArathFinSol2
  @509
END
  ++ @510 EXTERN LK#AR25J LK#ArathFinSol2.1
  ++ @511 EXTERN LK#AR25J LK#ArathFinSol2.1
  ++ @512 EXTERN LK#AR25J LK#ArathFinSol2.2

CHAIN LK#AR25J LK#ArathFinSol2.1
  @513
COPY_TRANS FINSOL01 27

CHAIN LK#AR25J LK#ArathFinSol2.2
  @514
  = @515
EXTERN LK#AR25J LK#ArathFinSol2.1

EXTEND_BOTTOM FINSOL01 29
  IF ~InParty("Arath") Global("ArathPCGod","GLOBAL",0) Global("LK#ArathRomanceActive","GLOBAL",2)~ DO ~SetGlobal("ArathPCGod","GLOBAL",1)~ EXTERN LK#AR25J ArathPCGodRomance
  IF ~InParty("Arath") Global("ArathPCGod","GLOBAL",0) !Global("LK#ArathRomanceActive","GLOBAL",2)~ DO ~SetGlobal("ArathPCGod","GLOBAL",1)~ EXTERN LK#AR25J ArathPCGod
END

EXTEND_BOTTOM FINSOL01 30
  IF ~InParty("Arath") Global("ArathPCGod","GLOBAL",0) Global("LK#ArathRomanceActive","GLOBAL",2)~ DO ~SetGlobal("ArathPCGod","GLOBAL",1)~ EXTERN LK#AR25J ArathPCGodRomance
  IF ~InParty("Arath") Global("ArathPCGod","GLOBAL",0) !Global("LK#ArathRomanceActive","GLOBAL",2)~ DO ~SetGlobal("ArathPCGod","GLOBAL",1)~ EXTERN LK#AR25J ArathPCGod
END

EXTEND_BOTTOM FINSOL01 31
  IF ~InParty("Arath") Global("ArathPCGod","GLOBAL",0) Global("LK#ArathRomanceActive","GLOBAL",2)~ DO ~SetGlobal("ArathPCGod","GLOBAL",1)~ EXTERN LK#AR25J ArathPCGodRomance
  IF ~InParty("Arath") Global("ArathPCGod","GLOBAL",0) !Global("LK#ArathRomanceActive","GLOBAL",2)~ DO ~SetGlobal("ArathPCGod","GLOBAL",1)~ EXTERN LK#AR25J ArathPCGod
END

EXTEND_BOTTOM FINSOL01 32
  IF ~InParty("Arath") Global("ArathPCNotGod","GLOBAL",0) Global("LK#ArathRomanceActive","GLOBAL",2)~ DO ~SetGlobal("ArathPCNotGod","GLOBAL",1)~ EXTERN LK#AR25J ArathPCNotGodRomance
  IF ~InParty("Arath") Global("ArathPCNotGod","GLOBAL",0) !Global("LK#ArathRomanceActive","GLOBAL",2)~ DO ~SetGlobal("ArathPCNotGod","GLOBAL",1)~ EXTERN LK#AR25J ArathPCNotGod
END

CHAIN LK#AR25J ArathPCGodRomance
  @516
  = @517
  = @518
  = @519
  = @520
COPY_TRANS FINSOL01 29

CHAIN LK#AR25J ArathPCGod
  @521
COPY_TRANS FINSOL01 29

CHAIN LK#AR25J ArathPCNotGodRomance
  @522
COPY_TRANS FINSOL01 32

CHAIN LK#AR25J ArathPCNotGod
  @523
COPY_TRANS FINSOL01 32