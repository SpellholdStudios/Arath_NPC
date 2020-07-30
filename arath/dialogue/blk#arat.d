BEGIN BLK#ARAT

// Aerie SoA
CHAIN IF ~InParty("Arath")
See("Arath")
!StateCheck("Arath",CD_STATE_NOTVALID)
!StateCheck("Aerie",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathAerie","GLOBAL",0)~ THEN BAERIE a1
  @0
  DO ~SetGlobal("LK#ArathAerie","GLOBAL",1)~
  == BLK#ARAT @1
  == BAERIE @2
  = @3
  == BLK#ARAT @4
  == BAERIE @5
  == BLK#ARAT @6
EXIT

CHAIN IF ~InParty("Arath")
See("Arath")
!StateCheck("Arath",CD_STATE_NOTVALID)
!StateCheck("Aerie",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathAerie","GLOBAL",1)~ THEN BAERIE a2  
  @7
  DO ~SetGlobal("LK#ArathAerie","GLOBAL",2)~
  == BLK#ARAT @8
  == BAERIE @9
  == BLK#ARAT @10
EXIT

CHAIN IF ~InParty("Arath")
See("Arath")
!StateCheck("Arath",CD_STATE_NOTVALID)
!StateCheck("Aerie",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathAerie","GLOBAL",2)~ THEN BAERIE a3
  @11
  DO ~SetGlobal("LK#ArathAerie","GLOBAL",3)~
  == BLK#ARAT @12
  == BAERIE @13
  == BLK#ARAT @14
  == BAERIE @15
  = @16
EXIT

CHAIN IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Arath",CD_STATE_NOTVALID)
!StateCheck("Aerie",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathAerie","GLOBAL",3)~ THEN BLK#ARAT a4
  @17
  DO ~SetGlobal("LK#ArathAerie","GLOBAL",4)~
  == BAERIE @18
  == BLK#ARAT @19
  = @20
  == BAERIE @21
  = @22
  = @23
EXIT

CHAIN IF ~InParty("Arath")
See("Arath")
!StateCheck("Arath",CD_STATE_NOTVALID)
!StateCheck("Aerie",CD_STATE_NOTVALID)
CombatCounter(0)
Gender(Player1,MALE)
Global("LK#ArathRomanceActive","GLOBAL",1)
Global("AerieRomanceActive","GLOBAL",1)
Global("LK#ArathAerieRom","GLOBAL",0)~ THEN BAERIE a5
  @24
  DO ~SetGlobal("LK#ArathAerieRom","GLOBAL",1)~
  == BLK#ARAT @25
  = @26
  == BAERIE @27
  == BLK#ARAT @28
  == BAERIE @29
  == BLK#ARAT @30
  == BAERIE @31
  == BLK#ARAT @32
  = @33
EXIT


// Anomen SoA
CHAIN IF ~InParty("Arath")
See("Arath")
!StateCheck("Arath",CD_STATE_NOTVALID)
!StateCheck("Anomen",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathAnomen","GLOBAL",0)~ THEN BANOMEN an1
  @34
  DO ~SetGlobal("LK#ArathAnomen","GLOBAL",1)~
  == BLK#ARAT @35
  == BANOMEN @36
  == BLK#ARAT @37
  == BANOMEN @38
  = @39
  == BLK#ARAT @40
  == BANOMEN @41
EXIT

// CN Anomen SoA
CHAIN IF ~OR(11)
  AreaCheck("AR0021") //City Gates - Crooked Crane 1st floor
  AreaCheck("AR0313") //Docks - Sea's Bounty 1st floor
  AreaCheck("AR0406") //Slums - Copper Coronet
  AreaCheck("AR0509") //Bridge - Five Flagons 1st floor
  AreaCheck("AR0513") //Bridge - Calbor's Inn 1st floor
  AreaCheck("AR0522") //Bridge - Five Flagons 1st floor (stronghold)
  AreaCheck("AR0704") //Waukeen's Promenade - Mithrest Inn
  AreaCheck("AR0709") //Waukeen's Promenade - Den of the Seven Vales
  AreaCheck("AR1105") //Umar Hills - Imnesvale Inn
  AreaCheck("AR1602") //Brynnlaw - Brynnlaw Inn
  AreaCheck("AR2010") //Trademeet - Vytori's Pub
InParty("Anomen")
See("Anomen")
!StateCheck("Arath",CD_STATE_NOTVALID)
!StateCheck("Anomen",CD_STATE_NOTVALID)
CombatCounter(0)
Alignment("Anomen",CHAOTIC_NEUTRAL)
Global("LK#ArathAnomen","GLOBAL",1)~ THEN BLK#ARAT an2
  @42
  DO ~SetGlobal("LK#ArathAnomen","GLOBAL",2)~
  == BANOMEN @43
  == BLK#ARAT @44
  == BANOMEN @45
  == BLK#ARAT @46
  = @47
  == BANOMEN @48
EXIT

// LG Anomen SoA
CHAIN IF ~InParty("Arath")
See("Arath")
!StateCheck("Arath",CD_STATE_NOTVALID)
!StateCheck("Anomen",CD_STATE_NOTVALID)
CombatCounter(0)
Alignment("Anomen",LAWFUL_GOOD)
Global("LK#ArathAnomen","GLOBAL",1)~ THEN BANOMEN an3
  @49
  DO ~SetGlobal("LK#ArathAnomen","GLOBAL",2)~
  == BLK#ARAT @50
  == BANOMEN @51
  == BLK#ARAT @52
  == BANOMEN @53
EXIT

CHAIN IF ~InParty("Arath")
See("Arath")
!StateCheck("Arath",CD_STATE_NOTVALID)
!StateCheck("Anomen",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathRomanceActive","GLOBAL",1)
Global("AnomenRomanceActive","GLOBAL",1)
Global("LK#ArathAnomenRom","GLOBAL",1)~ THEN BANOMEN an4
  @54
  == LK#ARATJ @55
  == BANOMEN @56
  == LK#ARATJ @57
  == BANOMEN @58
  == LK#ARATJ @59
  == BANOMEN @60
EXIT


// Cernd SoA
CHAIN IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
AreaType([CITY])
Global("LK#ArathCernd","GLOBAL",0)~ THEN BLK#ARAT c1
  @61
  DO ~SetGlobal("LK#ArathCernd","GLOBAL",1)~
  == BCERND @62
  = @63
  == BLK#ARAT @64
  == BCERND @65
  == BLK#ARAT @66
  == BCERND @67
  == BLK#ARAT @68
  == BCERND @69
  == BLK#ARAT @70
  == BCERND @71
EXIT

CHAIN IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
AreaType([FOREST])
Global("LK#ArathCernd","GLOBAL",1)~ THEN BLK#ARAT c2
  @72
  DO ~SetGlobal("LK#ArathCernd","GLOBAL",2)~
  == BCERND @73
  == BLK#ARAT @74
  == BCERND @75
  == BLK#ARAT @76
  = @77
  == BCERND @78
  = @79
  == BLK#ARAT @80
  == BCERND @81
  = @82
EXIT

// Edwin SoA
CHAIN IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathEdwin","GLOBAL",0)~ THEN BLK#ARAT e1
  @83
  DO ~SetGlobal("LK#ArathEdwin","GLOBAL",1)~
  == BEDWIN  @84
  == BLK#ARAT @85
  == BEDWIN  @86
EXIT

CHAIN IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathEdwin","GLOBAL",1)~ THEN BLK#ARAT e2
  @87
  DO ~SetGlobal("LK#ArathEdwin","GLOBAL",2)~
  == BEDWIN  @88
  == BLK#ARAT @89
  == BEDWIN  @90
  == BLK#ARAT @91
  == BEDWIN  @92
EXIT

CHAIN IF ~InParty("Arath")
See("Arath")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathEdwin","GLOBAL",2)~ THEN BEDWIN e3
  @93
  DO ~SetGlobal("LK#ArathEdwin","GLOBAL",3)~
  == BLK#ARAT @94
  == BEDWIN  @95
  == BLK#ARAT @96
  == BEDWIN  @97
  = @98
  = @99
  == BLK#ARAT @100
  == BEDWIN  @101
  == BLK#ARAT @102
  == BEDWIN  @103
EXIT

CHAIN IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Gender("Edwin",FEMALE)
Global("LK#ArathEdwinChange","GLOBAL",0)~ THEN BLK#ARAT e4
  @104
  DO ~SetGlobal("LK#ArathEdwinChange","GLOBAL",1)~
  == BEDWIN @105
  == BLK#ARAT @106
  == BEDWIN @107
  == BLK#ARAT @108
  == BEDWIN @109
EXIT

// Haer'Dalis SoA
CHAIN IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathHaer","GLOBAL",0)~ THEN BLK#ARAT h1
  @110
  DO ~SetGlobal("LK#ArathHaer","GLOBAL",1)~
  == BLK#ARAT @111
  == BHAERDA @112
  = @113
  == BLK#ARAT @114
  == BHAERDA @115
  == BLK#ARAT @116
  = @117
  == BHAERDA @118
EXIT

CHAIN IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathHaer","GLOBAL",1)~ THEN BLK#ARAT h2
  @119
  DO ~SetGlobal("LK#ArathHaer","GLOBAL",2)~
  == BHAERDA @120
  == BLK#ARAT @121
  == BHAERDA @122
  == BLK#ARAT @123
  == BHAERDA @124
EXIT

// Imoen SoA
CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathImoen","GLOBAL",0)~ THEN BLK#ARAT i1
  @125
  DO ~SetGlobal("LK#ArathImoen","GLOBAL",1)~
  == BIMOEN2 @126
  == BLK#ARAT @127
  == BIMOEN2 @128
  = @129
  == BLK#ARAT @130
EXIT

CHAIN IF ~InParty("Arath")
See("Arath")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathImoen","GLOBAL",1)~ THEN BIMOEN2 i2
  @131
  DO ~SetGlobal("LK#ArathImoen","GLOBAL",2)~
  == BLK#ARAT @132
  = @133
  == BIMOEN2 @134
  = @135
  = @136
  == BLK#ARAT @137
  == BIMOEN2 @138
EXIT

// Jaheira SoA
CHAIN IF ~InParty("Arath")
See("Arath")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
AreaType([CITY])
Global("LK#ArathJaheira","GLOBAL",0)~ THEN BJAHEIR j1
  @139
  DO ~SetGlobal("LK#ArathJaheira","GLOBAL",1)~
  == BLK#ARAT @140
  == BJAHEIR @141
  == BLK#ARAT @142
  == BJAHEIR @143
EXIT

CHAIN IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathJaheira","GLOBAL",1)~ THEN BLK#ARAT j2
  @144
  DO ~SetGlobal("LK#ArathJaheira","GLOBAL",2)~
  == BJAHEIR @145
  == BLK#ARAT @146
  == BJAHEIR @147
  == BLK#ARAT @148
  == BJAHEIR @149
  == BLK#ARAT @150
  == BJAHEIR @151
EXIT

CHAIN IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathRomanceActive","GLOBAL",1)
Global("JaheiraRomanceActive","GLOBAL",1)
Global("LK#ArathJaheiraRom","GLOBAL",0)~ THEN BLK#ARAT j3
  @152
  DO ~SetGlobal("LK#ArathJaheiraRom","GLOBAL",1)~
  == BJAHEIR @153
  == BLK#ARAT @154
  == BJAHEIR @155
  == BLK#ARAT @156
  == BJAHEIR @157
  == BLK#ARAT @158
  == BJAHEIR @159
  == BLK#ARAT @160
  == BJAHEIR @161
EXIT


// Jan SoA
CHAIN IF ~InParty("Jan")
See("Jan")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathJan","GLOBAL",0)~ THEN BLK#ARAT jn1
  @162
  DO ~SetGlobal("LK#ArathJan","GLOBAL",1)~
  == BJAN @163
  == BLK#ARAT @164
  == BJAN @165
  == BLK#ARAT @166
  == BJAN @167
  == BLK#ARAT @168
  == BJAN @169
  == BLK#ARAT @170
  == BJAN @171
  == BLK#ARAT @172
EXIT

CHAIN IF ~InParty("Jan")
See("Jan")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathJan","GLOBAL",1)~ THEN BLK#ARAT jn2
  @173
  DO ~SetGlobal("LK#ArathJan","GLOBAL",2)~
  == BJAN @174
  == BLK#ARAT @175
  == BJAN @176
  == BLK#ARAT @177
  = @178
  == BJAN @179
  == BLK#ARAT @180
  == BJAN @181
  == BLK#ARAT @182
  == BJAN @183
EXIT

// Keldorn SoA
CHAIN IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathKeldorn","GLOBAL",0)~ THEN BLK#ARAT k1
  @184
  DO ~SetGlobal("LK#ArathKeldorn","GLOBAL",1)~
  == BKELDOR @185
  == BLK#ARAT @186
  == BKELDOR @187
  == BLK#ARAT @188
  == BKELDOR @189
EXIT

CHAIN IF ~InParty("Arath")
See("Arath")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathKeldorn","GLOBAL",1)~ THEN BKELDOR k2
  @190
  DO ~SetGlobal("LK#ArathKeldorn","GLOBAL",2)~
  == BLK#ARAT @191
  == BKELDOR @192 
  == BLK#ARAT @193 
  = @194
  == BKELDOR @195 
  = @196
  == BLK#ARAT @197
  == BKELDOR @198
EXIT

CHAIN IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathKeldorn","GLOBAL",2)~ THEN BLK#ARAT k3
  @199
  DO ~SetGlobal("LK#ArathKeldorn","GLOBAL",3)~
  == BKELDOR @200
  == BLK#ARAT @201
  == BKELDOR @202
  == BLK#ARAT @203
  == BKELDOR @204
  == BLK#ARAT @205
  == BKELDOR @206
  = @207
  == BLK#ARAT @208
  == BKELDOR @209
EXIT

// Korgan SoA
CHAIN IF ~InParty("Arath")
See("Arath")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathKorgan","GLOBAL",0)~ THEN BKORGAN kn1
  @210
  DO ~SetGlobal("LK#ArathKorgan","GLOBAL",1)~
  == BLK#ARAT @211
  == BKORGAN @212
  == BLK#ARAT @213
  = @214
  == BKORGAN @215
  == BLK#ARAT @216
  = @217
  = @218
  == BKORGAN @219
  == BLK#ARAT @220
EXIT

CHAIN IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathKorgan","GLOBAL",1)~ THEN BLK#ARAT kn2
  @221
  DO ~SetGlobal("LK#ArathKorgan","GLOBAL",2)~
  == BLK#ARAT @222
  == BKORGAN @223
  == BLK#ARAT @224
  == BKORGAN @225
  == BLK#ARAT @226
EXIT

// Mazzy SoA
CHAIN IF ~InParty("Arath")
See("Arath")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathMazzy","GLOBAL",0)~ THEN BMAZZY m1
  @227
  DO ~SetGlobal("LK#ArathMazzy","GLOBAL",1)~
  == BLK#ARAT @228
  = @229
  == BMAZZY  @230
  == BLK#ARAT @231
  == BMAZZY  @232
  == BLK#ARAT @233
  == BMAZZY  @234
  == BLK#ARAT @235
  == BMAZZY  @236
EXIT

CHAIN IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathMazzy","GLOBAL",1)~ THEN BLK#ARAT m2
  @237
  DO ~SetGlobal("LK#ArathMazzy","GLOBAL",2)~
  == BMAZZY  @238
  == BLK#ARAT @239
  == BMAZZY  @240
  == BLK#ARAT @241
  == BMAZZY  @242
  == BLK#ARAT @243
  = @244
  == BMAZZY  @208
  = @245
  == BLK#ARAT @246
EXIT

CHAIN IF ~InParty("Arath")
See("Arath")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathMazzy","GLOBAL",2)~ THEN BMAZZY m3
  @247
  DO ~SetGlobal("LK#ArathMazzy","GLOBAL",3)~
  == BLK#ARAT @248
  == BMAZZY  @249
  == BLK#ARAT @250
  == BMAZZY  @251
  == BLK#ARAT @252
  == BMAZZY  @253
  == BLK#ARAT @254
  == BMAZZY  @255
EXIT

// Minsc SoA
CHAIN IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathMinsc","GLOBAL",0)~ THEN BLK#ARAT mn1
  @256
  DO ~SetGlobal("LK#ArathMinsc","GLOBAL",1)~
  == BMINSC @257
  == BLK#ARAT @258
  = @259
  == BMINSC @260
  = @261
  == BLK#ARAT @262
EXIT

CHAIN IF ~InParty("Arath")
See("Arath")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathMinsc","GLOBAL",1)~ THEN BMINSC mn2
  @263
  DO ~SetGlobal("LK#ArathMinsc","GLOBAL",2)~ 
  == BMINSC @264
  == BLK#ARAT @265
  == BMINSC @266
  == BLK#ARAT @267
  == BMINSC @268
  == BLK#ARAT @269
  = @270
  == BMINSC @271
  == BLK#ARAT @272
  == BMINSC @273
  == BLK#ARAT @274
  == BMINSC @275
  == BLK#ARAT @276
EXIT


// Nalia
CHAIN IF ~InParty("Arath")
See("Arath")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathNalia","GLOBAL",0)~ THEN BNALIA n1
  @277
  DO ~SetGlobal("LK#ArathNalia","GLOBAL",1)~
  == BLK#ARAT @278
  == BNALIA @279
  == BLK#ARAT @280
  == BNALIA @281
  == BLK#ARAT @282
  == BNALIA @283
  = @284
  == BLK#ARAT @208
  == BNALIA @285
EXIT

CHAIN IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathNalia","GLOBAL",1)~ THEN BLK#ARAT n2
  @286
  DO ~SetGlobal("LK#ArathNalia","GLOBAL",2)~
  == BNALIA @287
  == BLK#ARAT @288
  == BNALIA @289
  == BLK#ARAT @290
  == BNALIA @291
  == BLK#ARAT @292
EXIT

CHAIN IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("NaliaKeepPlot","GLOBAL",1)
Global("LK#ArathNalia","GLOBAL",2)~ THEN BLK#ARAT n3
  @293
  DO ~SetGlobal("LK#ArathNalia","GLOBAL",3)~
  == BNALIA @294
  == BLK#ARAT @295
EXIT

// Valygar SoA
CHAIN IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathValygar","GLOBAL",0)~ THEN BLK#ARAT v1
  @296
  DO ~SetGlobal("LK#ArathValygar","GLOBAL",1)~
  == BVALYGA @297
  == BLK#ARAT @298
  == BVALYGA @299
  = @300
  == BLK#ARAT @301
  == BVALYGA @302
EXIT

CHAIN IF ~InParty("Arath")
See("Arath")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LavokDead","GLOBAL",1)
Global("LK#ArathValygar","GLOBAL",1)~ THEN BVALYGA v2
  @303
  DO ~SetGlobal("LK#ArathValygar","GLOBAL",2)~
  == BLK#ARAT @304
  == BVALYGA @305
  = @306
  == BLK#ARAT @307
  == BVALYGA @308
EXIT

// Viconia SoA
CHAIN IF ~InParty("Arath")
See("Arath")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathViconia","GLOBAL",0)~ THEN BVICONI vc1
  @309
  DO ~SetGlobal("LK#ArathViconia","GLOBAL",1)~ 
  == BLK#ARAT @310
  == BVICONI @311
  == BLK#ARAT @312
  == BVICONI @313
  == BLK#ARAT @314
  == BVICONI @315
  == BLK#ARAT @102
EXIT

CHAIN IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathViconia","GLOBAL",1)~ THEN BLK#ARAT vc2
  @316
  DO ~SetGlobal("LK#ArathViconia","GLOBAL",2)~
  == BVICONI @317
  = @318
  == BLK#ARAT @319
  == BVICONI @320
  == BLK#ARAT @321
EXIT

CHAIN IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathViconia","GLOBAL",2)~ THEN BLK#ARAT vc3
  @322
  DO ~SetGlobal("LK#ArathViconia","GLOBAL",3)~
  == BVICONI @323
  == BLK#ARAT @324
  = @325
  == BVICONI @326
  == BLK#ARAT @327
  == BVICONI @328
  == BLK#ARAT @329
  == BVICONI @330
  == BLK#ARAT @331
  = @332
EXIT

// (in Underdark)
CHAIN IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("chapter","GLOBAL",%bg2_chapter_5%)
Global("LK#ArathViconiaUD","GLOBAL",0)~ THEN BLK#ARAT vc4
  @333
  DO ~SetGlobal("LK#ArathViconiaUD","GLOBAL",1)~
  == BVICONI @334
  = @335
  == BLK#ARAT @336
  == BVICONI @337
  == BLK#ARAT @338
  == BVICONI @339
EXIT

CHAIN IF ~InParty("Arath")
See("Arath")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathRomanceActive","GLOBAL",1)
Global("ViconiaRomanceActive","GLOBAL",1)
Global("LK#ArathViconiaRom","GLOBAL",0)~ THEN BVICONI vc5
  @340
  DO ~SetGlobal("LK#ArathViconiaRom","GLOBAL",1) SetGlobal("LK#ArathViconia","GLOBAL",3)~
  == BLK#ARAT @341
  == BVICONI @342
  == BLK#ARAT @343
  == BVICONI @344
  == BLK#ARAT @345
  == BVICONI @346
EXIT


// Yoshimo SoA
CHAIN IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathYosh","GLOBAL",0)~ THEN BLK#ARAT y1
  @347
  DO ~SetGlobal("LK#ArathYosh","GLOBAL",1)~
  == BYOSHIM @348
  == BLK#ARAT @349
  == BYOSHIM  @350
  == BLK#ARAT @351
  == BYOSHIM  @352
EXIT

CHAIN IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathYosh","GLOBAL",1)~ THEN BLK#ARAT y2
  @353
  DO ~SetGlobal("LK#ArathYosh","GLOBAL",2)~
  == BYOSHIM  @354
  == BLK#ARAT @355
  == BYOSHIM  @356
  == BLK#ARAT @357
  == BYOSHIM  @358
  == BLK#ARAT @359
  == BYOSHIM  @360
  == BLK#ARAT @361
EXIT


APPEND BLK#ARAT
// Misc: Oh God, The Hair, It Has Been Cut
IF WEIGHT #4 ~InParty(Myself)
    See(Player1)
    !StateCheck(Myself,CD_STATE_NOTVALID)
    !StateCheck(Player1,CD_STATE_NOTVALID)
    CombatCounter(0)
    !Detect([ENEMY])
    Global("LK#ArathBhaal","GLOBAL",9)
    Global("LK#ArathHair","GLOBAL",0)~ a16
  SAY @362
  = @363
  ++ @364 DO ~SetGlobal("LK#ArathHair","GLOBAL",1)~ + a16.1
  ++ @365 DO ~SetGlobal("LK#ArathHair","GLOBAL",1)~ + a16.11
  ++ @366 DO ~SetGlobal("LK#ArathHair","GLOBAL",1)~ + a16.2
  ++ @367 DO ~SetGlobal("LK#ArathHair","GLOBAL",1)~ + a16.3
  ++ @368 DO ~SetGlobal("LK#ArathHair","GLOBAL",1)~ + a16.4
END

IF ~~ a16.1
  SAY @369
  IF ~~ + a16.5
END

IF ~~ a16.2
  SAY @370
  IF ~~ + a16.5
END

IF ~~ a16.3
  SAY @371
  IF ~~ + a16.5
END

IF ~~ a16.4
  SAY @372
  IF ~~ + a16.5
END

IF ~~ a16.5
  SAY @373
  ++ @374 + a16.6
  ++ @375 + a16.11
  ++ @376 + a16.7
  ++ @377 + a16.8
  ++ @378 + a16.9
END

IF ~~ a16.6
  SAY @379
  IF ~~ + a16.10
END

IF ~~ a16.7
  SAY @380
  IF ~~ + a16.10
END

IF ~~ a16.8
  SAY @381
  IF ~~ + a16.10
END

IF ~~ a16.9
  SAY @382
  = @383
  IF ~~ + a16.10
END

IF ~~ a16.10
  SAY @384
  IF ~~ EXIT
END

IF ~~ a16.11
  SAY @385
  ++ @386 + a16.12
  ++ @387 + a16.13
  ++ @388 + a16.14
  ++ @389 + a16.15
END

IF ~~ a16.12
  SAY @390
  = @391
  IF ~~ EXIT
END

IF ~~ a16.13
  SAY @392
  ++ @393 + a16.16
  ++ @394 + a16.17
  ++ @395 + a16.18
  ++ @396 + a16.19
  ++ @397 + a16.20
  ++ @398 + a16.21
  ++ @399 + a16.22
  ++ @400 + a16.23
  ++ @401 + a16.24
END

IF ~~ a16.14
  SAY @402
  ++ @403 + a16.25
  ++ @404 + a16.26
  ++ @405 + a16.13
END

IF ~~ a16.15
  SAY @406
  = @407
  IF ~~ EXIT
END

IF ~~ a16.16
  SAY @408
  ++ @394 + a16.17
  ++ @395 + a16.18
  ++ @396 + a16.18
  ++ @397 + a16.20
  ++ @398 + a16.19
  ++ @399 + a16.18
  ++ @400 + a16.18
  ++ @401 + a16.20
END

IF ~~ a16.17
  SAY @409
  = @410
  = @411
  = @412
  ++ @413 + a16.12
  ++ @414 + a16.12
  ++ @415 + a16.21
  ++ @416 + a16.22
  ++ @417 + a16.23
END

IF ~~ a16.18
  SAY @418
  ++ @413 + a16.12
  ++ @419 + a16.24
  ++ @389 + a16.15
END

IF ~~ a16.19
  SAY @331
  = @420
  IF ~~ + a16.25
END

IF ~~ a16.20
  SAY @421
  IF ~~ + a16.25
END

IF ~~ a16.21
  SAY @422
  IF ~~ + a16.10
END

IF ~~ a16.22
  SAY @423
  IF ~~ + a16.26
END

IF ~~ a16.23
  SAY @424
  = @425
  IF ~~ + a16.26
END

IF ~~ a16.24
  SAY @426
  IF ~~ EXIT
END

IF ~~ a16.25
  SAY @427
  IF ~~ EXIT
END

IF ~~ a16.26
  SAY @428
  IF ~~ EXIT
END
END