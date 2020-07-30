// ----------------------------------------------------------
// Arath NPC, Joined Dialogue 
// By K'aeloree
// ----------------------------------------------------------

// ******************
// INDEX OF CONTENT *
// ******************

// ----------------------------------------------------------
// JOINING SEQUENCE CONTENT & INTERJECTIONS
// ----------------------------------------------------------

// ----------------------------------------------------------
// NON-ROMANTIC CONTENT
// ----------------------------------------------------------
// -- Underdark
// -- North Forest
// Killing the Dragon in Suldanessellar
// -- Killing Firkraag
// -- On Being Raised
// On Being Raised... again
// -- Caged Animals in Athkatla
// * Lavok and the Planar Sphere
// -- Corrupted Forest
// -- Working for Bodhi
// -- Working for the Shadow Thieves
// -- Under Spellhold
// -- Sahuagin City
// -- Shadow Druids pt. I
// -- Shadow Druids pt. II
// -- The de'Arnise Keep
// -- Post-Killing Bodhi
// -- The Bhaalspawn Thing, pt. I
// -- The Bhaalspawn Thing, pt. II
// -- The Bhaalspawn Thing, pt. III
// -- The Bhaalspawn Thing, pt. IV

// ----------------------------------------------------------
// ROMANTIC CONTENT
// ----------------------------------------------------------
// -- Lovetalk 1 - Class-based Flirting (spellcaster, fighter, thief, bard)
// -- Lovetalk 2 - Further Compliments
// -- Lovetalk 3 - A "Romantic" Proposal
// -- Lovetalk 4 - A "Romantic" Dinner
// -- Lovetalk 5 - The Wonders of Athkatla
// -- Lovetalk 6 - Bizarre Dreams
// -- Lovetalk 7 - More compliments!
// -- Lovetalk 8 - Hottubs and Death
// -- Lovetalk 9 - The Rash
// -- Lovetalk 10 - Candlekeep and Siblings
// -- Lovetalk 11 - Take a fucking break, <CHARNAME>!
// -- Lovetalk 12 - Smalltalk and Intimations
// -- Lovetalk 13 - Post-Spellhold, Continued Lack of Sleep
// -- Lovetalk 14 - Logistics of a Lost Soul
// -- Lovetalk 15 - A Potion for <CHARNAME>
// -- Lovetalk 16 - Breaking Point
// -- Lovetalk 17 - A Drunken Kiss
// -- Lovetalk 18 - Morning After
// -- Lovetalk 19 - Revelations
// -- Lovetalk 20 - The Bracelet
// -- Sex Scene 2 - The Forest
// -- Sex Scene 3 - The Massage

// ----------------------------------------------------------
// INTERJECTIONS
// ----------------------------------------------------------

// ----------------------------------------------------------
// BODHINAPPING
// ----------------------------------------------------------

// ----------------------------------------------------------
// QUEST
// ----------------------------------------------------------

BEGIN LK#ARATJ


IF ~Global("LK#ArathCCSlavers","GLOBAL",1)~ LK#Arath_Hendak5
  SAY @0
  ++ @1 DO ~SetGlobal("LK#ArathCCSlavers","GLOBAL",2)~ + LK#Arath_Hendak5.1
  ++ @2 DO ~SetGlobal("LK#ArathCCSlavers","GLOBAL",2)~ + LK#Arath_Hendak5.2
  ++ @3 DO ~SetGlobal("LK#ArathCCSlavers","GLOBAL",2)~ + LK#Arath_Hendak5.3
END

IF ~~ LK#Arath_Hendak5.1
  SAY @4
  = @5
  = @6
  ++ @7 + LK#Arath_Hendak5.4
  ++ @8 + LK#Arath_Hendak5.5
  ++ @9 + LK#Arath_Hendak5.6
END

IF ~~ LK#Arath_Hendak5.2
  SAY @10
  = @11
  IF ~~ DO ~SetGlobal("LK#ArathJoined","LOCALS",0) LeaveParty() MoveToPoint([931.1227]) Face(0)~ EXIT
END

IF ~~ LK#Arath_Hendak5.3
  SAY @12
  = @13
  IF ~~ DO ~SetGlobal("LK#ArathJoined","LOCALS",0) LeaveParty() MoveToPoint([931.1227]) Face(0)~ EXIT
END

IF ~~ LK#Arath_Hendak5.4
  SAY @14
  IF ~~ EXIT
END

IF ~~ LK#Arath_Hendak5.5
  SAY @15
  IF ~~ + LK#Arath_Hendak5.6
END

IF ~~ LK#Arath_Hendak5.6
  SAY @16
  ++ @17 + LK#Arath_Hendak5.4
  ++ @18 + LK#Arath_Hendak5.7
  ++ @19 + LK#Arath_Hendak5.8
END

IF ~~ LK#Arath_Hendak5.7
  SAY @20
  IF ~~ + LK#Arath_Hendak5.4
END

IF ~~ LK#Arath_Hendak5.8
  SAY @21
  = @22
  IF ~~ DO ~SetGlobal("LK#ArathJoined","LOCALS",0) LeaveParty() MoveToPoint([931.1227]) Face(0)~ EXIT
END


I_C_T HENDAK 41 LK#Arath_Hendak6
  == LK#ARATJ IF ~InParty("Arath") !Dead("Arath")~ THEN @23
END

INTERJECT HENDAK 63 LK#Arath_Hendak6
  == LK#ARATJ IF ~InParty("Arath") !Dead("Arath")~ THEN @24
  DO ~ActionOverride("hendak",Enemy()) ActionOverride("Arath",Enemy())~
EXIT

// Lehtinan
// (hurrrrm)  You are back.  I see.  You wish something else?
EXTEND_BOTTOM LEHTIN 1 #3
  + ~Global("LK#ArathMet","AR0406",1) !Dead("Arath") !InParty("Arath")~ + @25 EXTERN LEHTIN LK#Arath_Leht
END

CHAIN LEHTIN LK#Arath_Leht
  @26
  = @27
  DO ~GiveGoldForce(200) SetGlobal("LK#ArathCCKill","AR0406",1)~
EXIT

// (hurrrmm..) Excellent. Here is the key to the cell. Punish the slave and return to me. You shall be well rewarded.
INTERJECT LEHTIN 22 LK#Arath_Leht2
  == LK#ARATJ IF ~InParty("Arath") !Dead("Arath")~ THEN @28
  = @29
END
  ++ @30 EXTERN LK#ARATJ LK#Arath_Leht2.1
  ++ @31 EXTERN LK#ARATJ LK#Arath_Leht2.2
  ++ @32 EXTERN LK#ARATJ LK#Arath_Leht2.3

CHAIN LK#ARATJ LK#Arath_Leht2.1
  @33
  DO ~SetGlobal("SlavingJerk","GLOBAL",1) GiveItemCreate("MISC4Z",Player1,0,0,0) AddJournalEntry(#15705,QUEST)~
EXIT

CHAIN LK#ARATJ LK#Arath_Leht2.2
  @34
  DO ~SetGlobal("SlavingJerk","GLOBAL",1) GiveItemCreate("MISC4Z",Player1,0,0,0) AddJournalEntry(#15705,QUEST)~
EXIT

CHAIN LK#ARATJ LK#Arath_Leht2.3
  @35
  DO ~SetGlobal("SlavingJerk","GLOBAL",1) GiveItemCreate("MISC4Z",Player1,0,0,0) AddJournalEntry(#15705,QUEST) SetGlobal("LK#ArathJoined","LOCALS",0) LeaveParty() EscapeArea()~
EXIT


// Beastmaster
// Fool!  You'll never escape here alive!  Come, Tabitha!  Come...open the cages!  Aid your master!
I_C_T SAFE BEAST 1 LK#Arath_Beastmaster
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @35
  == BEAST @36
END

// Bah!  I have had enough of your insolence!  It is time to feed my Tabitha anyway!  Come...open the cages...attack!!
I_C_T SAFE BEAST 5 LK#Arath_Beastmaster1
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @35
  == BEAST @36
END

// Insolent!  Did I not tell you to leave?!  Bah!  It is time to feed my Tabitha, now, anyway.  Come...open the cages...attack!
I_C_T SAFE BEAST 6 LK#Arath_Beastmaster2
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @35
  == BEAST @36
END

APPEND LK#ARATJ

// On seeing the door (DOOR0405) or new trigger area
IF ~Global("LK#ArathJoinDoor","GLOBAL",1)~ tr1
  SAY @37
  = @38
  = @39
  ++ @40 DO ~SetGlobal("LK#ArathJoinDoor","GLOBAL",2)~ + tr1.3
  ++ @41 DO ~SetGlobal("LK#ArathJoinDoor","GLOBAL",2)~ + tr1.1
  ++ @42 DO ~SetGlobal("LK#ArathJoinDoor","GLOBAL",2)~ + tr1.1
  ++ @43 DO ~SetGlobal("LK#ArathJoinDoor","GLOBAL",2)~ + tr1.4
  ++ @44 DO ~SetGlobal("LK#ArathJoinDoor","GLOBAL",2)~ + tr1.2
  ++ @45 DO ~SetGlobal("LK#ArathJoinDoor","GLOBAL",2)~ + tr1.3
END

IF ~~ tr1.1
  SAY @46
  IF ~~ + tr1.3
END

IF ~~ tr1.2
  SAY @47
  IF ~~ + tr1.3
END

IF ~~ tr1.3
  SAY @48
  IF ~~ EXIT
END

IF ~~ tr1.4
  SAY @49
  IF ~~ + tr1.3
END


// After killing slavers; in top left room w/ desk (area trigger)
IF ~Global("LK#ArathSlavers","GLOBAL",1)~ tr2
  SAY @50
  ++ @51 DO ~SetGlobal("LK#ArathSlavers","GLOBAL",2)~ + tr2.1
  ++ @52 DO ~SetGlobal("LK#ArathSlavers","GLOBAL",2)~ + tr2.2
  ++ @53 DO ~SetGlobal("LK#ArathSlavers","GLOBAL",2)~ + tr2.3
  ++ @54 DO ~SetGlobal("LK#ArathSlavers","GLOBAL",2)~ + tr2.1
END

IF ~~ tr2.1
  SAY @55
  = @56
  = @57
  IF ~~ EXIT
END

IF ~~ tr2.2
  SAY @58
  IF ~~ + tr2.1
END

IF ~~ tr2.3
  SAY @59
  IF ~~ + tr2.1
END

END

CHAIN IF WEIGHT #-1 ~InParty("Arath") !Dead("Arath")~ THEN HAEGAN h1
  @60
  == LK#ARATJ @61
  == HAEGAN @62
  == LK#ARATJ @63
  == HAEGAN @64
  == LK#ARATJ @65
EXTERN HAEGAN 1
// These dregs could nary be called persons! This is no different than trading in cattle! Speakin' of which, it's about time you were butchered!

APPEND LK#ARATJ
// Scenery: Post-Joining Introduction (after speaking to Hendak)  --  Global("HendakReleased","AR0406",4)
IF ~Global("LK#ArathJoinTalk","GLOBAL",1)~ tr3
  SAY @66
  ++ @2 DO ~SetGlobal("LK#ArathJoinTalk","GLOBAL",2)~ + tr3.1
  ++ @67 DO ~SetGlobal("LK#ArathJoinTalk","GLOBAL",2)~ + tr3.2
  ++ @68 DO ~SetGlobal("LK#ArathJoinTalk","GLOBAL",2)~ + tr3.3
  ++ @69 DO ~SetGlobal("LK#ArathJoinTalk","GLOBAL",2)~ + tr3.1
END

IF ~~ tr3.1
  SAY @70
  IF ~~ + tr3.9
END
  
IF ~~ tr3.2
  SAY @71
  IF ~~ + tr3.4
END

IF ~~ tr3.3
  SAY @72
  IF ~~ + tr3.4
END

IF ~~ tr3.4
  SAY @73
  ++ @74 + tr3.5
  ++ @75 + tr3.6
  ++ @76 + tr3.7
  + ~Gender(Player1,MALE)~ + @77 + tr3.8a
  + ~Gender(Player1,FEMALE)~ + @77 + tr3.8b
END

IF ~~ tr3.5
  SAY @78
  IF ~~ + tr3.9
END

IF ~~ tr3.6
  SAY @79
  IF ~~ + tr3.9
END

IF ~~ tr3.7
  SAY @80
  IF ~~ + tr3.9
END

IF ~~ tr3.8a
  SAY @81
  = @82
  IF ~~ + tr3.5
END

IF ~~ tr3.8b
  SAY @83
  = @84
  IF ~~ + tr3.5
END

IF ~~ tr3.9
  SAY @85
  = @86
  ++ @87 + tr3.10
  ++ @88 + tr3.10
  ++ @89 + tr3.11
  + ~OR(2) CheckStatGT(Player1,12,WIS) CheckStatGT(Player1,12,INT)~ + @90 + tr3.12
END

IF ~~ tr3.10
  SAY @91
  IF ~~ + tr3.12
END

IF ~~ tr3.11
  SAY @92
  IF ~~ + tr3.12
END

IF ~~ tr3.12
  SAY @93
  ++ @94 + tr3.13
  ++ @95 + tr3.14
  ++ @96 + tr3.15
  ++ @97 + tr3.16
  ++ @98 + tr3.17
END

IF ~~ tr3.13
  SAY @99
  = @100
  IF ~~ EXIT
END

IF ~~ tr3.14
  SAY @101
  = @102
  IF ~~ EXIT
END

IF ~~ tr3.15
  SAY @103
  IF ~~ + tr3.18
END

IF ~~ tr3.16
  SAY @104
  IF ~~ + tr3.18
END

IF ~~ tr3.17
  SAY @105
  IF ~~ + tr3.18
END
  
IF ~~ tr3.18
  SAY @106
  IF ~~ DO ~SetGlobal("LK#ArathMet","AR0406",2) SetGlobal("LK#ArathJoined","LOCALS",0) LeaveParty() MoveToPoint([931.1227])~ EXIT
END

// ************************
//                        *
// Non-romantic dialogues *
//                        *
// ************************



// Scenery: Underdark
IF ~Global("LK#ArathUnderdark","GLOBAL",2)~ a1
  SAY @107
  ++ @108 DO ~SetGlobal("LK#ArathUnderdark","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a1.5
  ++ @109 DO ~SetGlobal("LK#ArathUnderdark","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a1.1
  ++ @110 DO ~SetGlobal("LK#ArathUnderdark","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a1.2
  ++ @111 DO ~SetGlobal("LK#ArathUnderdark","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a1.3
  ++ @112 DO ~SetGlobal("LK#ArathUnderdark","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a1.4
END

IF ~~ a1.1
  SAY @113
  IF ~~ + a1.5
END

IF ~~ a1.2
  SAY @114
  IF ~~ + a1.5
END


IF ~~ a1.3
  SAY @115
  IF ~~ + a1.5
END


IF ~~ a1.4
  SAY @116
  IF ~~ EXIT
END

IF ~~ a1.5
  SAY @117
  ++ @118 + a1.6
  ++ @119 + a1.9
  ++ @120 + a1.7
  ++ @121 + a1.8
END

IF ~~ a1.6
  SAY @122
  IF ~~ + a1.9
END

IF ~~ a1.7
  SAY @123
  IF ~~ + a1.9
END

IF ~~ a1.8
  SAY @124
  IF ~~ + a1.9
END

IF ~~ a1.9
  SAY @125
  = @126
  IF ~~ EXIT
END


// Scenery: North Forest
IF ~Global("LK#ArathNorthForest","GLOBAL",2)~ a2
  SAY @127
  ++ @128 DO ~SetGlobal("LK#ArathNorthForest","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a2.1
  ++ @129 DO ~SetGlobal("LK#ArathNorthForest","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a2.2
  ++ @130 DO ~SetGlobal("LK#ArathNorthForest","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a2.3
  ++ @131 DO ~SetGlobal("LK#ArathNorthForest","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a2.4
END

IF ~~ a2.1
  SAY @132
  IF ~~ + a2.5
END

IF ~~ a2.2
  SAY @133
  IF ~~ + a2.5
END

IF ~~ a2.3
  SAY @134
  IF ~~ + a2.5
END

IF ~~ a2.4
  SAY @135
  = @136
  IF ~~ + a2.5
END

IF ~~ a2.5
  SAY @137
  ++ @138 + a2.6
  ++ @139 + a2.7
  ++ @140 + a2.8
  ++ @141 + a2.9
END

IF ~~ a2.6
  SAY @142
  IF ~~ + a2.10
END

IF ~~ a2.7
  SAY @143
  IF ~~ + a2.10
END

IF ~~ a2.8
  SAY @144
  IF ~~ + a2.10
END

IF ~~ a2.9
  SAY @145
  IF ~~ + a2.10
END

IF ~~ a2.10
  SAY @146
  ++ @147 + a2.11
  ++ @148 + a2.12
  ++ @149 + a2.13
  ++ @150 + a2.14
END

IF ~~ a2.11
  SAY @151
  IF ~~ + a2.15
END

IF ~~ a2.12
  SAY @152
  IF ~~ + a2.15
END

IF ~~ a2.13
  SAY @153
  IF ~~ + a2.15
END

IF ~~ a2.14
  SAY @154
  IF ~~ + a2.15
END

IF ~~ a2.15
  SAY @155
  = @156
  IF ~~ EXIT
END


// Plot - Killing the Dragon in Suldanessellar
IF ~Global("LK#ArathSuldanessellar","GLOBAL",1)~ a3
  SAY @157
  ++ @158 DO ~SetGlobal("LK#ArathSuldanessellar","GLOBAL",2) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a3.6
  ++ @159 DO ~SetGlobal("LK#ArathSuldanessellar","GLOBAL",2) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a3.1
  + ~Gender(Player1,MALE) Global("LK#ArathRomanceActive","GLOBAL",2)~ + @160 DO ~SetGlobal("LK#ArathSuldanessellar","GLOBAL",2) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a3.2
  + ~Gender(Player1,FEMALE) Global("LK#ArathRomanceActive","GLOBAL",2)~ + @161 DO ~SetGlobal("LK#ArathSuldanessellar","GLOBAL",2) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a3.3
  ++ @162 DO ~SetGlobal("LK#ArathSuldanessellar","GLOBAL",2) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a3.5
  ++ @163 DO ~SetGlobal("LK#ArathSuldanessellar","GLOBAL",2) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a3.4
  ++ @164 DO ~SetGlobal("LK#ArathSuldanessellar","GLOBAL",32) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a3.5
END

IF ~~ a3.1
  SAY @165
  IF ~~ + a3.6
END

IF ~~ a3.2
  SAY @166
  = @167
  IF ~~ + a3.6
END

IF ~~ a3.3
  SAY @168
  IF ~~ + a3.6
END

IF ~~ a3.4
  SAY @169
  IF ~~ + a3.6
END

IF ~~ a3.5
  SAY @170
  IF ~~ + a3.6
END

IF ~~ a3.6
  SAY @171
  = @172
  + ~Global("LK#ArathRomanceActive","GLOBAL",2)~ + @173 + a3.7
  ++ @174 + a3.8
  ++ @175 + a3.9
  ++ @176 + a3.10
  ++ @177 + a3.11
END

IF ~~ a3.7
  SAY @178
  = @179
  IF ~~ EXIT
END

IF ~~ a3.8
  SAY @180
  IF ~~ + a3.12
END

IF ~~ a3.9
  SAY @181
  + ~Global("LK#ArathRomanceActive","GLOBAL",2)~ + @173 + a3.7
  ++ @182 + a3.7
  ++ @183 + a3.15
  ++ @184 + a3.14
  ++ @185 + a3.13
END

IF ~~ a3.10
  SAY @186
  IF ~~ + a3.12
END

IF ~~ a3.11
  SAY @187
  IF ~~ EXIT
END

IF ~~ a3.12
  SAY @188
  IF ~~ EXIT
END

IF ~~ a3.13
  SAY @189
  IF ~~ + a3.12
END

IF ~~ a3.14
  SAY @190
  IF ~~ + a3.12
END

IF ~~ a3.15
  SAY @191
  IF ~~ + a3.12
END


// Plot: Killing Firkraag
IF ~Global("LK#ArathFirkraag","GLOBAL",2)~ a4
  SAY @192
  ++ @193 DO ~SetGlobal("LK#ArathFirkraag","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a4.1
  ++ @194 DO ~SetGlobal("LK#ArathFirkraag","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a4.2
  ++ @195 DO ~SetGlobal("LK#ArathFirkraag","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a4.3
  ++ @196 DO ~SetGlobal("LK#ArathFirkraag","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a4.4
END

IF ~~ a4.1
  SAY @197
  IF ~~ + a4.5
END

IF ~~ a4.2
  SAY @198
  IF ~~ + a4.5
END

IF ~~ a4.3
  SAY @199
  IF ~~ + a4.5
END

IF ~~ a4.4
  SAY @200
  IF ~~ + a4.5
END

IF ~~ a4.5
  SAY @201
  ++ @202 + a4.6
  ++ @203 + a4.7
  ++ @204 + a4.8
  ++ @205 + a4.9
END

IF ~~ a4.6
  SAY @206
  IF ~~ + a4.10
END

IF ~~ a4.7
  SAY @207
  IF ~~ + a4.10
END

IF ~~ a4.8
  SAY @208
  IF ~~ + a4.10
END

IF ~~ a4.9
  SAY @209
  IF ~~ + a4.10
END

IF ~~ a4.10
  SAY @210
  = @211
  IF ~~ + a4.11
  IF ~Global("asylumplot","GLOBAL",1)~ + a4.12
END

IF ~~ a4.11
  SAY @212
  IF ~~ + a4.13
END

IF ~~ a4.12
  SAY @213
  IF ~~ + a4.13
END

IF ~~ a4.13
  SAY @214
  IF ~~ EXIT
END


// Scenery: On Being Raised
IF ~Global("LK#ArathRaised","GLOBAL",2)~ a5
  SAY @215
  ++ @216 DO ~SetGlobal("LK#ArathRaised","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a5.1
  ++ @217 DO ~SetGlobal("LK#ArathRaised","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a5.2
  ++ @218 DO ~SetGlobal("LK#ArathRaised","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a5.2
  ++ @219 DO ~SetGlobal("LK#ArathRaised","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a5.2
END

IF ~~ a5.1
  SAY @220
  IF ~~ + a5.6
END

IF ~~ a5.2
  SAY @221
  = @222
  ++ @223 + a5.1
  ++ @224 + a5.3
  ++ @225 + a5.4
  ++ @226 + a5.5
END

IF ~~ a5.3
  SAY @227
  IF ~~ + a5.1
END

IF ~~ a5.4
  SAY @228
  IF ~~ + a5.1
END

IF ~~ a5.5
  SAY @229
  IF ~~ + a5.1
END

IF ~~ a5.6
  SAY @230
  ++ @231 + a5.7
  ++ @232 + a5.8
  ++ @233 + a5.9
END

IF ~~ a5.7
  SAY @234
  IF ~~ + a5.10
END

IF ~~ a5.8
  SAY @235
  IF ~~ + a5.10
END

IF ~~ a5.9
  SAY @236
  IF ~~ + a5.10
END

IF ~~ a5.10
  SAY @237
  IF ~~ EXIT
END


// Scenery: Raised Again
IF ~Global("LK#ArathRaised","GLOBAL",4)~ a6
  SAY @238
  ++ @239 DO ~SetGlobal("LK#ArathRaised","GLOBAL",5) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a6.1
  ++ @240 DO ~SetGlobal("LK#ArathRaised","GLOBAL",5) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a6.2
  ++ @241 DO ~SetGlobal("LK#ArathRaised","GLOBAL",5) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a6.3
  ++ @242 DO ~SetGlobal("LK#ArathRaised","GLOBAL",5) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a6.4
END

IF ~~ a6.1
  SAY @243
  IF ~~ + a6.5
END

IF ~~ a6.2
  SAY @244
  = @245
  IF ~~ + a6.5
END

IF ~~ a6.3
  SAY @246
  IF ~~ + a6.5
END

IF ~~ a6.4
  SAY @247
  IF ~~ + a6.5
END

IF ~~ a6.5
  SAY @248
  = @249
  = @250
  IF ~~ EXIT
END


// Scenery: Caged Animals in Promenade
IF ~Global("LK#ArathAnimals","GLOBAL",1)~ a7
  SAY @251
  ++ @252 DO ~SetGlobal("LK#ArathAnimals","GLOBAL",2) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a7.1
  ++ @253 DO ~SetGlobal("LK#ArathAnimals","GLOBAL",2) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a7.1
  ++ @254 DO ~SetGlobal("LK#ArathAnimals","GLOBAL",2) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a7.2
  ++ @255DO ~SetGlobal("LK#ArathAnimals","GLOBAL",2) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a7.3
  ++ @256 DO ~SetGlobal("LK#ArathAnimals","GLOBAL",2) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a7.4
END

IF ~~ a7.1
  SAY @257
  IF ~~ + a7.5
END

IF ~~ a7.2
  SAY @258
  IF ~~ + a7.5
END

IF ~~ a7.3
  SAY @259
  IF ~~ + a7.5
END

IF ~~ a7.4
  SAY @260
  IF ~~ EXIT
END

IF ~~ a7.5
  SAY @261
  = @262
  ++ @263 + a7.6
  ++ @264 + a7.7
  ++ @265 + a7.8
  ++ @266 + a7.9
END

IF ~~ a7.6
  SAY @267
  IF ~~ + a7.10
END

IF ~~ a7.7
  SAY @268
  = @269
  IF ~~ + a7.10
END

IF ~~ a7.8
  SAY @270
  IF ~~ + a7.10
END

IF ~~ a7.9
  SAY @271
  IF ~~ + a7.10a
END

IF ~~ a7.10
  SAY @272
  IF ~~ + a7.10a
END

IF ~~ a7.10a
  SAY @273
  ++ @274 + a7.11
  ++ @275 + a7.12
  ++ @276 + a7.13
  ++ @277 + a7.14
  ++ @278 + a7.15
END

IF ~~ a7.11
  SAY @279
  IF ~~ + a7.16
END

IF ~~ a7.12
  SAY @280
  IF ~~ + a7.12a
END

IF ~~ a7.12a
  SAY @281
  IF ~~ + a7.16
END

IF ~~ a7.13
  SAY @282
  = @283
  IF ~~ + a7.12a
END

IF ~~ a7.14
  SAY @284
  IF ~~ + a7.16
END

IF ~~ a7.15
  SAY @285
  = @286
  IF ~~ EXIT
END

IF ~~ a7.16
  SAY @287
  IF ~~ EXIT
END


// Plot: Lavok and the Planar Sphere
IF ~Global("LK#ArathSphere","GLOBAL",2)~ a8
  SAY @288
  ++ @289 DO ~SetGlobal("LK#ArathSphere","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a8.1
  ++ @290 DO ~SetGlobal("LK#ArathSphere","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a8.1
  ++ @291 DO ~SetGlobal("LK#ArathSphere","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a8.1
  ++ @292 DO ~SetGlobal("LK#ArathSphere","GLOBAL",3)~ EXIT
END

IF ~~ a8.1
  SAY @293
  = @294
  ++ @295 + a8.5
  ++ @296 +  a8.2
  ++ @297 + a8.3
  ++ @298 + a8.4
END

IF ~~ a8.2
  SAY @299
  = @300
  = @301
  IF ~~ + a8.5
END

IF ~~ a8.3
  SAY @301
  IF ~~ + a8.5
END

IF ~~ a8.4
  SAY @116
  IF ~~ EXIT
END

IF ~~ a8.5
  SAY @302
  = @303
  ++ @252 + a8.6
  ++ @304 + a8.6
  ++ @305 + a8.6
  ++ @306 + a8.6
END

IF ~~ a8.6
  SAY @307
  ++ @308 + a8.7
  ++ @309 + a8.8
  ++ @310 + a8.8
  ++ @311 + a8.9
  ++ @312 + a8.10
END

IF ~~ a8.7
  SAY @313
  IF ~~ + a8.11
END

IF ~~ a8.8
  SAY @314
  IF ~~ + a8.11
END

IF ~~ a8.9
  SAY @315
  IF ~~ + a8.11
END

IF ~~ a8.10
  SAY @316
  IF ~~ + a8.11
END

IF ~~ a8.11
  SAY @317
  = @318
  IF ~~ EXIT
END


// Plot: Corrupted Forest
IF ~Global("LK#ArathShade","GLOBAL",2)~ a9
  SAY @319
  ++ @320 DO ~SetGlobal("LK#ArathShade","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a9.3
  ++ @321 DO ~SetGlobal("LK#ArathShade","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a9.3
  ++ @322 DO ~SetGlobal("LK#ArathShade","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ +  a9.2
  ++ @323 DO ~SetGlobal("LK#ArathShade","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a9.1
END

IF ~~ a9.1
  SAY @324
  IF ~~ EXIT
END

IF ~~ a9.2
  SAY @325
  IF ~~ + a9.3
END

IF ~~ a9.3
  SAY @326
  = @327
  ++ @328 + a9.4
  ++ @329 + a9.5
  ++ @330 + a9.6
  ++ @331 + a9.7
END

IF ~~ a9.4
  SAY @332
  IF ~~ EXIT
END

IF ~~ a9.5
  SAY @333
  IF ~~ + a9.7
END

IF ~~ a9.6
  SAY @334
  IF ~~ EXIT
END

IF ~~ a9.7
  SAY @335
  IF ~~ EXIT
END


// Plot: Working for Bodhi
IF ~Global("LK#ArathBodhi","GLOBAL",1)~ a10
  SAY @336
  ++ @337 DO ~SetGlobal("LK#ArathBodhi","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a10.4
  ++ @338 DO ~SetGlobal("LK#ArathBodhi","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a10.4
  ++ @339 DO ~SetGlobal("LK#ArathBodhi","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a10.1
  ++ @340 DO ~SetGlobal("LK#ArathBodhi","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a10.2
  ++ @341 DO ~SetGlobal("LK#ArathBodhi","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a10.3
END

IF ~~ a10.1
  SAY @342
  IF ~~ + a10.4
END

IF ~~ a10.2
  SAY @343
  IF ~~ + a10.4
END

IF ~~ a10.3
  SAY @344
  IF ~~ DO ~SetGlobal("LK#ArathJoined","LOCALS",0) DropInventory() LeaveParty() EscapeArea()~ EXIT
END

IF ~~ a10.4
  SAY @345
  ++ @346 + a10.5
  ++ @347 + a10.10
  ++ @348 + a10.5
  ++ @349 + a10.6
END

IF ~~ a10.5
  SAY @350
  ++ @351 + a10.8
  ++ @352 + a10.8
  ++ @353 + a10.8
  ++ @354 + a10.8
END

IF ~~ a10.6
  SAY @355
  ++ @356 + a10.9
  ++ @357 + a10.5
  ++ @358 + a10.3
END

IF ~~ a10.8
  SAY @359
  IF ~~ + a10.9
END

IF ~~ a10.9
  SAY @360
  ++ @361 + a10.10
  ++ @362 + a10.11
  ++ @363 + a10.3
  ++ @364 + a10.3
END

IF ~~ a10.10
  SAY @365
  ++ @366 + a10.12
  ++ @367 + a10.12
  ++ @368 + a10.12
  ++ @369 + a10.12
END

IF ~~ a10.11
  SAY @370
  IF ~~ + a10.10
END

IF ~~ a10.12
  SAY @371
  = @372
  IF ~~ EXIT
END


// Plot: Working for the Shadow Thieves
IF ~Global("LK#ArathShadowThieves","GLOBAL",1)~ a11
  SAY @373
  ++ @374 DO ~SetGlobal("LK#ArathShadowThieves","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a11.1
  ++ @375 DO ~SetGlobal("LK#ArathShadowThieves","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ +  a11.2
  ++ @376 DO ~SetGlobal("LK#ArathShadowThieves","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a11.3
  ++ @377 DO ~SetGlobal("LK#ArathShadowThieves","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a11.4
END

IF ~~ a11.1
  SAY @378
  IF ~~ + a11.4
END

IF ~~ a11.2
  SAY @379
  IF ~~ + a11.4
END

IF ~~ a11.3
  SAY @380
  IF ~~ + a11.4
END

IF ~~ a11.4
  SAY @381
  = @382
  ++ @383 + a11.5
  ++ @384 + a11.6
  ++ @385 + a11.6
  ++ @386 + a11.6
END

IF ~~ a11.5
  SAY @387
  IF ~~ + a11.6
END

IF ~~ a11.6
  SAY @388
  IF ~~ EXIT
END


// Plot: Spellhold
IF ~Global("LK#ArathSpellhold","GLOBAL",2)~ a12
  SAY @389
  ++ @390 DO ~SetGlobal("LK#ArathSpellhold","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a12.2
  ++ @391 DO ~SetGlobal("LK#ArathSpellhold","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a12.2
  ++ @392 DO ~SetGlobal("LK#ArathSpellhold","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a12.2
  ++ @393 DO ~SetGlobal("LK#ArathSpellhold","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a12.1
END

IF ~~ a12.1
  SAY @394
  = @395
  ++ @396 + a12.3
  ++ @397 + a12.3
  ++ @398 + a12.3
  ++ @399 + a12.3
END

IF ~~ a12.2
  SAY @400
  ++ @396 + a12.3
  ++ @397 + a12.3
  ++ @398 + a12.3
  ++ @399 + a12.3
END

IF ~~ a12.3
  SAY @401
  ++ @402 + a12.6
  ++ @403 + a12.4
  ++ @404 + a12.6
  ++ @405 + a12.5
END

IF ~~ a12.4
  SAY @406
  IF ~~ + a12.6
END

IF ~~ a12.5
  SAY @320
  IF ~~ + a12.6
END

IF ~~ a12.6
  SAY @407
  IF ~~ EXIT
END


// Plot: Sahuagin City
IF ~Global("LK#ArathSahuagin","GLOBAL",2)~ a13.
  SAY @408
  ++ @409 DO ~SetGlobal("LK#ArathSahuagin","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a13.1
  ++ @410 DO ~SetGlobal("LK#ArathSahuagin","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a13.2
  ++ @411 DO ~SetGlobal("LK#ArathSahuagin","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a13.2
  ++ @412 DO ~SetGlobal("LK#ArathSahuagin","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a13.3
END

IF ~~ a13.1
  SAY @413
  = @414
  IF ~~ + a13.4
END

IF ~~ a13.2
  SAY @415
  IF ~~ + a13.4
END

IF ~~ a13.3
  SAY @416
  IF ~~ + a13.4
END

IF ~~ a13.4
  SAY @417
  ++ @418 + a13.5
  ++ @419 + a13.6
  ++ @420 + a13.7
  ++ @421 + a13.8
END

IF ~~ a13.5
  SAY @422
  IF ~~ + a13.9
END

IF ~~ a13.6
  SAY @423
  IF ~~ + a13.9
END

IF ~~ a13.7
  SAY @424
  IF ~~ + a13.9
END

IF ~~ a13.8
  SAY @425
  IF ~~ + a13.9
END

IF ~~ a13.9
  SAY @426
  = @427
  IF ~~ EXIT
END


// Plot: Shadow Druids pt. I
IF ~Global("LK#ArathShadowDruids","GLOBAL",1)~ a14
  SAY @428
  = @429
  ++ @430 DO ~SetGlobal("LK#ArathShadowDruids","GLOBAL",2) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a14.1
  ++ @431 DO ~SetGlobal("LK#ArathShadowDruids","GLOBAL",2) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a14.1
  ++ @432 DO ~SetGlobal("LK#ArathShadowDruids","GLOBAL",2) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a14.1
  ++ @433 DO ~SetGlobal("LK#ArathShadowDruids","GLOBAL",2) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a14.2
END

IF ~~ a14.1
  SAY @434
  = @435  
  ++ @436 + a14.3
  ++ @437 + a14.3
  ++ @438 + a14.2
  ++ @439 + a14.2
  ++ @440 + a14.2
END

IF ~~ a14.2
  SAY @441
  IF ~~ EXIT
END

IF ~~ a14.3
  SAY @442
  IF ~~ + a14.2
END


// Plot: Shadow Druids pt. II
IF ~Global("LK#ArathShadowDruids2","GLOBAL",1)~ a15
  SAY @443
  ++ @444 DO ~SetGlobal("LK#ArathShadowDruids2","GLOBAL",2) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a15.1
  ++ @445 DO ~SetGlobal("LK#ArathShadowDruids2","GLOBAL",2) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a15.2
  ++ @446 DO ~SetGlobal("LK#ArathShadowDruids2","GLOBAL",2) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a15.3
  ++ @447 DO ~SetGlobal("LK#ArathShadowDruids2","GLOBAL",2) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a15.4
END

IF ~~ a15.1
  SAY @448
  IF ~~ + a15.5
END

IF ~~ a15.2
  SAY @449
  IF ~~ + a15.5
END

IF ~~ a15.3
  SAY @396
  IF ~~ + a15.5
END

IF ~~ a15.4
  SAY @450
  IF ~~ EXIT
END

IF ~~ a15.5
  SAY @451
  ++ @452 + a15.6
  ++ @453 + a15.7
  ++ @454 + a15.7
  ++ @455 + a15.8
  ++ @456 + a15.9
END

IF ~~ a15.6
  SAY @457
  IF ~~ + a15.10
END

IF ~~ a15.7
  SAY @458
  IF ~~ + a15.10
END

IF ~~ a15.8
  SAY @459
  IF ~~ + a15.10
END

IF ~~ a15.9
  SAY @460
  = @461
  IF ~~ + a15.10
END

IF ~~ a15.10
  SAY @462
  ++ @463 + a15.11
  ++ @464 + a15.12
  ++ @465 + a15.13
  ++ @466 + a15.14
  ++ @467 + a15.15
END

IF ~~ a15.11
  SAY @468
  IF ~~ + a15.16
END

IF ~~ a15.12
  SAY @469
  IF ~~ + a15.16
END

IF ~~ a15.13
  SAY @470
  IF ~~ + a15.16
END

IF ~~ a15.14
  SAY @471
  IF ~~ + a15.16
END

IF ~~ a15.15
  SAY @472
  IF ~~ EXIT
END

IF ~~ a15.16
  SAY @473
  = @474
  IF ~~ EXIT
END


// Plot: the de'Arnise Keep
IF ~Global("LK#ArathKeep","GLOBAL",2)~ a17
  SAY @475
  = @476
  = @477
  ++ @478 DO ~SetGlobal("LK#ArathKeep","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a17.1
  ++ @479 DO ~SetGlobal("LK#ArathKeep","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a17.2
  ++ @480 DO ~SetGlobal("LK#ArathKeep","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a17.3
  ++ @481 DO ~SetGlobal("LK#ArathKeep","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a17.4
  ++ @482 DO ~SetGlobal("LK#ArathKeep","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a17.5
END

IF ~~ a17.1
  SAY @483
  IF ~~ + a17.6
END

IF ~~ a17.2
  SAY @484
  IF ~~ + a17.6
END

IF ~~ a17.3
  SAY @485
  IF ~~ + a17.6
END

IF ~~ a17.4
  SAY @486
  IF ~~ + a17.6
END

IF ~~ a17.5
  SAY @487
  IF ~~ EXIT
END

IF ~~ a17.6
  SAY @488
  = @489
  = @490
  ++ @491 + a17.7
  ++ @492 + a17.7
  ++ @493 +  a17.8
  ++ @494 + a17.9
  ++ @495 + a17.10
  + ~GlobalLT("chapter","GLOBAL",4)~ + @496 + a17.11
END

IF ~~ a17.7
  SAY @497
  IF ~~ + a17.12
END

IF ~~ a17.8
  SAY @498
  IF ~~ + a17.12
END

IF ~~ a17.9
  SAY @499
  IF ~~ + a17.12
END

IF ~~ a17.10
  SAY @500
  IF ~~ + a17.12
END

IF ~~ a17.11
  SAY @501
  = @502
  IF ~~ + a17.12
END
IF ~~ a17.12
  SAY @503
  IF ~~ EXIT
END


// Plot: Post-Killing Bodhi
IF ~Global("LK#ArathVampires","GLOBAL",2)~ a18
  SAY @504
  + ~OR(4) PartyHasItem("miscbl") PartyHasItem("miscbm") PartyHasItem("miscbn") PartyHasItem("miscbo")~ + @505 DO ~SetGlobal("LK#ArathVampires","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a18.7
  ++ @506 DO ~SetGlobal("LK#ArathVampires","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a18.1
  ++ @507 DO ~SetGlobal("LK#ArathVampires","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a18.1
  + ~!InParty("Imoen2")~ + @508 DO ~SetGlobal("LK#ArathVampires","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a18.2
  + ~InParty("Imoen2")~ + @509 DO ~SetGlobal("LK#ArathVampires","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a18.2
  ++ @510 DO ~SetGlobal("LK#ArathVampires","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a18.3
  ++ @511 DO ~SetGlobal("LK#ArathVampires","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a18.4
  ++ @512 DO ~SetGlobal("LK#ArathVampires","GLOBAL",3) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + a18.5
END

IF ~~ a18.1
  SAY @513
  IF ~~ + a18.6
END

IF ~~ a18.2
  SAY @514
  IF ~~ + a18.6
END

IF ~~ a18.3
  SAY @515
  IF ~~ + a18.6
END

IF ~~ a18.4
  SAY @516
  IF ~~ + a18.1
END

IF ~~ a18.5
  SAY @517
  IF ~~ EXIT
END

IF ~~ a18.6
  SAY @518
  ++ @519 + a18.8
  ++ @520 + a18.9
  ++ @521 + a18.10
  ++ @522 + a18.11
  ++ @523 + a18.12
END

IF ~~ a18.7
  SAY @524
  IF ~~ + a18.12
END

IF ~~ a18.8
  SAY @525
  IF ~~ + a18.12
END

IF ~~ a18.9
  SAY @526
  IF ~~ + a18.12
END

IF ~~ a18.10
  SAY @527
  IF ~~ + a18.12
END

IF ~~ a18.11
  SAY @528
  IF ~~ + a18.12
END
IF ~~ a18.12
  SAY @529
  + ~OR(4) PartyHasItem("miscbl") PartyHasItem("miscbm") PartyHasItem("miscbn") PartyHasItem("miscbo")~ + @530 + a18.13
  ++ @531 + a18.14
  ++ @532 + a18.17
  ++ @533 + a18.14
  ++ @534 + a18.14
  ++ @535 + a18.15
END

IF ~~ a18.13
  SAY @536
  IF ~~ + a18.16
END

IF ~~ a18.14
  SAY @537
  IF ~~ EXIT
END

IF ~~ a18.15
  SAY @538
  IF ~~ EXIT
END

IF ~~ a18.16
  SAY @539
  IF ~~ EXIT
END

IF ~~ a18.17
  SAY @540
  IF ~~ EXIT
END



// Cycle: The Bhaalspawn Thing, pt. I
IF ~Global("LK#ArathBhaalspawn","GLOBAL",2)~ a19
  SAY @541
  IF ~~ + a19.2
  IF ~NumInPartyGT(2)~ + a19.1
END

IF ~~ a19.1
  SAY @542
  ++ @543 DO ~SetGlobal("LK#ArathBhaalspawn","GLOBAL",3) RealSetGlobalTimer("LK#ArathBhaalspawnTimer","GLOBAL",3600)~ + a19.3
  ++ @544 DO ~SetGlobal("LK#ArathBhaalspawn","GLOBAL",3) RealSetGlobalTimer("LK#ArathBhaalspawnTimer","GLOBAL",3600)~ + a19.3
  ++ @545 DO ~SetGlobal("LK#ArathBhaalspawn","GLOBAL",3) RealSetGlobalTimer("LK#ArathBhaalspawnTimer","GLOBAL",3600)~ + a19.3
  ++ @546 DO ~SetGlobal("LK#ArathBhaalspawn","GLOBAL",3) RealSetGlobalTimer("LK#ArathBhaalspawnTimer","GLOBAL",3600)~ + a19.4
END

IF ~~ a19.2
  SAY @547
  ++ @543 DO ~SetGlobal("LK#ArathBhaalspawn","GLOBAL",3) RealSetGlobalTimer("LK#ArathBhaalspawnTimer","GLOBAL",3600)~ + a19.3
  ++ @544 DO ~SetGlobal("LK#ArathBhaalspawn","GLOBAL",3) RealSetGlobalTimer("LK#ArathBhaalspawnTimer","GLOBAL",3600)~ + a19.3
  ++ @545 DO ~SetGlobal("LK#ArathBhaalspawn","GLOBAL",3) RealSetGlobalTimer("LK#ArathBhaalspawnTimer","GLOBAL",3600)~ + a19.3
  ++ @546 DO ~SetGlobal("LK#ArathBhaalspawn","GLOBAL",3) RealSetGlobalTimer("LK#ArathBhaalspawnTimer","GLOBAL",3600)~ + a19.4
END

IF ~~ a19.3
  SAY @548
  = @549
  ++ @550 + a19.5
  ++ @551 + a19.6
  ++ @552 + a19.5
  ++ @164 + a19.7
END

IF ~~ a19.4
  SAY @553
  IF ~~ + a19.3
END

IF ~~ a19.5
  SAY @554
  ++ @555 + a19.8
  ++ @556 + a19.8
  ++ @557 + a19.9
END

IF ~~ a19.6
  SAY @558
  IF ~~ + a19.8
END

IF ~~ a19.7
  SAY @559
  IF ~~ + a19.8
END

IF ~~ a19.8
  SAY @560
  = @561
  ++ @562 + a19.10
  ++ @563 + a19.11
  ++ @564 + a19.12
  ++ @565 + a19.13
END

IF ~~ a19.9
  SAY @566
  IF ~~ + a19.8
END

IF ~~ a19.10
  SAY @567
  IF ~~ + a19.14
END

IF ~~ a19.11
  SAY @568
  IF ~~ + a19.10
END

IF ~~ a19.12
  SAY @569
  IF ~~ + a19.10
END

IF ~~ a19.13
  SAY @570
  IF ~~ + a19.10
END

IF ~~ a19.14
  SAY @571
  = @572
  IF ~~ EXIT
END


// Cycle: The Bhaalspawn Thing, pt. II
IF ~Global("LK#ArathBhaalspawn","GLOBAL",4)~ a20
  SAY @573
  ++ @252 DO ~SetGlobal("LK#ArathBhaalspawn","GLOBAL",5) RealSetGlobalTimer("LK#ArathBhaalspawnTimer","GLOBAL",3600)~ + a20.1
  ++ @574 DO ~SetGlobal("LK#ArathBhaalspawn","GLOBAL",5) RealSetGlobalTimer("LK#ArathBhaalspawnTimer","GLOBAL",3600)~ + a20.1
  + ~OR(2) CheckStatGT(Player1,12,WIS) CheckStatGT(Player1,12,INT)~ + @575 DO ~SetGlobal("LK#ArathBhaalspawn","GLOBAL",5) RealSetGlobalTimer("LK#ArathBhaalspawnTimer","GLOBAL",3600)~ + a20.2
  ++ @576 DO ~SetGlobal("LK#ArathBhaalspawn","GLOBAL",5) RealSetGlobalTimer("LK#ArathBhaalspawnTimer","GLOBAL",3600)~ + a20.3
END

IF ~~ a20.1
  SAY @577
  ++ @578 + a20.4
  ++ @579 + a20.5
  ++ @580 + a20.5
END

IF ~~ a20.2
  SAY @581
  ++ @578 + a20.4
  ++ @579 + a20.4
  ++ @580 + a20.4
END

IF ~~ a20.3
  SAY @582
  IF ~~ + a20.5
END

IF ~~ a20.4
 SAY @583
 ++ @584 + a20.5
 ++ @585 + a20.5
 ++ @586 + a20.5
 ++ @587 + a20.6
 + ~OR(2) CheckStatGT(Player1,12,WIS) CheckStatGT(Player1,12,INT)~ + @588 + a20.7
END

IF ~~ a20.5
  SAY @589
  = @590
  ++ @591 + a20.8
  ++ @592 + a20.9
  ++ @593 + a20.10
  ++ @594 + a20.8
  ++ @595 + a20.11
END

IF ~~ a20.6
  SAY @596
  IF ~~ + a20.5
END

IF ~~ a20.7
  SAY @597
  IF ~~ + a20.5
END

IF ~~ a20.8
  SAY @598
  IF ~~ + a20.12
END

IF ~~ a20.9
  SAY @599
  IF ~~ + a20.12
END

IF ~~ a20.10
  SAY @600
  IF ~~ + a20.12
END

IF ~~ a20.11
  SAY @601
  IF ~~ + a20.12
END

IF ~~ a20.12
  SAY @602
  = @603
  IF ~~ EXIT
END


// Cycle: The Bhaalspawn Thing, pt. III
IF ~Global("LK#ArathBhaalspawn","GLOBAL",6)~ a21
  SAY @604
  ++ @605 DO ~SetGlobal("LK#ArathBhaalspawn","GLOBAL",7) RealSetGlobalTimer("LK#ArathBhaalspawnTimer","GLOBAL",3600)~ + a21.1
  ++ @606 DO ~SetGlobal("LK#ArathBhaalspawn","GLOBAL",7) RealSetGlobalTimer("LK#ArathBhaalspawnTimer","GLOBAL",3600)~ + a21.1
  ++ @607 DO ~SetGlobal("LK#ArathBhaalspawn","GLOBAL",7) RealSetGlobalTimer("LK#ArathBhaalspawnTimer","GLOBAL",3600)~ + a21.1
  ++ @292 DO ~SetGlobal("LK#ArathBhaalspawn","GLOBAL",7) RealSetGlobalTimer("LK#ArathBhaalspawnTimer","GLOBAL",3600)~ + a21.1
END

IF ~~ a21.1
  SAY @608
  = @609
  ++ @610 + a21.2
  ++ @611 + a21.3
  ++ @612 + a21.5
  ++ @613 + a21.5
  ++ @614 + a21.4
END

IF ~~ a21.2
  SAY @615
  IF ~~ + a21.5
END

IF ~~ a21.3
  SAY @616
  IF ~~ + a21.5
END

IF ~~ a21.4
  SAY @617
  IF ~~ + a21.5
END

IF ~~ a21.5
  SAY @618
  ++ @619 + a21.6          
  ++ @620 + a21.7
  ++ @621 + a21.8
  ++ @622 + a21.9
  ++ @623 + a21.10
END

IF ~~ a21.6
  SAY @624
  IF ~~ + a21.11
END

IF ~~ a21.7
  SAY @625
  IF ~~ + a21.11
END

IF ~~ a21.8
  SAY @366
  IF ~~ + a21.11
END

IF ~~ a21.9
  SAY @626
  IF ~~ + a21.11
END

IF ~~ a21.10
  SAY @627
  IF ~~ + a21.11
END

IF ~~ a21.11
  SAY @628
  IF ~~ EXIT
END


// Cycle: The Bhaalspawn Thing, pt. IV
IF ~Global("LK#ArathBhaalspawn","GLOBAL",8)~ a22
  SAY @629
  ++ @630 DO ~SetGlobal("LK#ArathBhaalspawn","GLOBAL",9)~ + a22.1
  ++ @631 DO ~SetGlobal("LK#ArathBhaalspawn","GLOBAL",9)~ + a22.12
  ++ @632 DO ~SetGlobal("LK#ArathBhaalspawn","GLOBAL",9)~ + a22.2
  ++ @633 DO ~SetGlobal("LK#ArathBhaalspawn","GLOBAL",9)~ + a22.3
  ++ @634 DO ~SetGlobal("LK#ArathBhaalspawn","GLOBAL",9)~ + a22.4
  ++ @635 DO ~SetGlobal("LK#ArathBhaalspawn","GLOBAL",9)~ + a22.5
END

IF ~~ a22.1
  SAY @636
  IF ~~ + a22.6
END

IF ~~ a22.2
  SAY @637
  = @638
  IF ~~ + a22.6
END

IF ~~ a22.3
  SAY @639
  IF ~~ + a22.6
END

IF ~~ a22.4
  SAY @640
  IF ~~ + a22.6
END

IF ~~ a22.5
  SAY @641
  IF ~~ + a22.6
END

IF ~~ a22.6
  SAY @642
  ++ @643 + a22.7
  ++ @644 + a22.8
  ++ @645 + a22.9
  ++ @646 + a22.10
  ++ @647 + a22.10
  ++ @648 + a22.11
END

IF ~~ a22.7
  SAY @649
  IF ~~ + a22.13
END

IF ~~ a22.8
  SAY @650
  = @651
  IF ~~ + a22.13
END

IF ~~ a22.9
  SAY @650
  = @652
  IF ~~ + a22.13
END

IF ~~ a22.10
  SAY @653
  IF ~~ + a22.13
END

IF ~~ a22.11
  SAY @654
  IF ~~ + a22.13
END

IF ~~ a22.12
  SAY @655
  IF ~~ + a22.6
END

IF ~~ a22.13
  SAY @656
  IF ~~ EXIT
END


// ***********************
//                       *
//   Romance dialogues   *
//                       *
// ***********************

// LT1: Spellcaster
IF ~Global("LK#ArathLovetalks","GLOBAL",2) OR(11) Class(Player1,DRUID_ALL) Class(Player1,CLERIC) Class(Player1,MAGE_ALL) Class(Player1,SORCERER) Class(Player1,FIGHTER_MAGE) Class(Player1,FIGHTER_CLERIC) Class(Player1,FIGHTER_MAGE_THIEF) Class(Player1,MAGE_THIEF) Class(Player1,CLERIC_MAGE) Class(Player1,CLERIC_THIEF) Class(Player1,CLERIC_RANGER)~ f1
  SAY @657
  ++ @658 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + f1.1
  ++ @659 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + f1.2
  ++ @660 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + f1.3
END

IF ~~ f1.1
  SAY @661
  = @662
  IF ~~ + f1.4
END

IF ~~ f1.2
  SAY @663
  IF ~~ + f1.4
END

IF ~~ f1.3
  SAY @664
  IF ~~ EXIT
END

IF ~~ f1.4
  SAY @665
  ++ @666 + f1.5
  ++ @667 + f1.6
  ++ @668 + f1.7
END

IF ~~ f1.5
  SAY @669
  IF ~~ + f1.8
END

IF ~~ f1.6
  SAY @670
  IF ~~ + f1.8
END

IF ~~ f1.7
  SAY @671
  = @672
  IF ~~ EXIT
END
  
IF ~~ f1.8
  SAY @673
  = @674
  IF ~~ EXIT
END


// LT1: Thieves
IF ~Global("LK#ArathLovetalks","GLOBAL",2) Class(Player1,THIEF_ALL)~ f1.18
  SAY @675
  ++ @676 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + f1.19
  ++ @677 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + f1.20
  ++ @678 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + f1.21
  ++ @679 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + f1.22
END

IF ~~ f1.19
  SAY @680
  IF ~~ + f1.23
END

IF ~~ f1.20
  SAY @681
  IF ~~ + f1.23
END

IF ~~ f1.21
  SAY @682
  IF ~~ + f1.23
END

IF ~~ f1.22
  SAY @664
  IF ~~ EXIT
END

IF ~~ f1.23
  SAY @683
  IF ~~ EXIT
END


// LT1: Bard
IF ~Global("LK#ArathLovetalks","GLOBAL",2) Class(Player1,BARD_ALL)~ f1.24
  SAY @684
  = @685
  = @686
  ++ @687 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + f1.25
  ++ @688 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + f1.26
  ++ @689 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + f1.27
  ++ @690 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + f1.12
END

IF ~~ f1.25
  SAY @691
  IF ~~ + f1.28
END

IF ~~ f1.26
  SAY @692
  = @693
  IF ~~ EXIT
END

IF ~~ f1.27
  SAY @694
  IF ~~ + f1.28
END

IF ~~ f1.28
  SAY @695
  = @696
  IF ~~ EXIT
END


// LT1: Fighter
IF ~Global("LK#ArathLovetalks","GLOBAL",2)~ f1.9
  SAY @697
  ++ @698 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + f1.10
  ++ @699 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + f1.11
  ++ @700 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + f1.10
  ++ @690 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + f1.12
END

IF ~~ f1.10
  SAY @701
  = @702
  IF ~~ + f1.13
END

IF ~~ f1.11
  SAY @703
  IF ~~ + f1.13
END

IF ~~ f1.12
  SAY @704
  IF ~~ EXIT
END

IF ~~ f1.13
  SAY @705
  ++ @706 + f1.14
  ++ @707 + f1.15
  ++ @708 + f1.16
  ++ @709 + f1.17
END

IF ~~ f1.14
  SAY @710
  IF ~~ EXIT
END

IF ~~ f1.15
  SAY @711
  IF ~~ EXIT
END

IF ~~ f1.16
  SAY @712
  IF ~~ EXIT
END

IF ~~ f1.17
  SAY @713
  IF ~~ EXIT
END


// LT2

IF ~Gender(Player1,MALE) Global("LK#ArathLovetalks","GLOBAL",4)~ f2.a
  SAY @714
  ++ @715 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + f2.1
  ++ @716 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + f2.1
  ++ @717 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + f2.2
  ++ @718 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + f2.1
  ++ @719 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + f2.3
END

IF ~Gender(Player1,FEMALE) Global("LK#ArathLovetalks","GLOBAL",4)~ f2.b
  SAY @720
  ++ @715 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + f2.1
  ++ @716 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + f2.1
  ++ @717 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + f2.2
  ++ @718 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + f2.1
  ++ @719 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + f2.3
END

IF ~~ f2.1
  SAY @721
  IF ~~ + f2.7
END

IF ~~ f2.2
  SAY @722
  IF ~~ + f2.7
END

IF ~~ f2.3
  SAY @723
  IF ~~ EXIT
END

// * no f2.4-f2.6 *

IF ~~ f2.7
  SAY @724
  ++ @725 + f2.8
  ++ @726 + f2.9
  ++ @727 + f2.10
  + ~Gender(Player1,MALE)~ + @728 + f2.11a
  + ~Gender(Player1,FEMALE)~ + @728 + f2.11b
  ++ @729 + f2.12
END

IF ~~ f2.8
  SAY @730
  IF ~~ EXIT
END

IF ~~ f2.9
  SAY @731
  = @732
  IF ~~ EXIT
END

IF ~~ f2.10
  SAY @733
  IF ~~ EXIT
END

IF ~~ f2.11a
  SAY @734
  IF ~~ EXIT
END

IF ~~ f2.11b
  SAY @735
  IF ~~ EXIT
END

IF ~~ f2.12
  SAY @736
  IF ~~ EXIT
END



// LT3: A romantic proposal
IF ~Global("LK#ArathLovetalks","GLOBAL",6)~ l1
  SAY @737
  ++ @738 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",1800)~ + l1.1
  ++ @739 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",1800)~ + l1.1
  ++ @740 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",1800)~ + l1.1
  ++ @741 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",1800)~ + l1.2
END

IF ~~ l1.1
  SAY @742
  ++ @743 + l1.3
  ++ @744 + l1.4
  ++ @745 + l1.4
  ++ @746 + l1.5
  ++ @747 + l1.6
END

IF ~~ l1.2
  SAY @748
  IF ~~ + l1.1
END

IF ~~ l1.3
  SAY @749
  IF ~~ + l1.9
END

IF ~~ l1.4
  SAY @750
  IF ~~ + l1.9
END

IF ~~ l1.5
  SAY @751
  IF ~~ + l1.8
END

IF ~~ l1.6
  SAY @752
  IF ~~ + l1.8
END

// no l1.7

IF ~~ l1.8
  SAY @753
  IF ~~ DO ~SetGlobal("LK#ArathRomance","GLOBAL",3)~ EXIT
END

IF ~~ l1.9
  SAY @754
  ++ @755 + l1.10
  ++ @756 + l1.11
  ++ @757 + l1.12
  ++ @758 + l1.12
  ++ @759 + l1.5
END

IF ~~ l1.10
  SAY @760
  IF ~~ + l1.13
END

IF ~~ l1.11
  SAY @761
  IF ~~ + l1.13
END

IF ~~ l1.12
  SAY @762
  = @763
  IF ~~ + l1.13
END

IF ~~ l1.13
  SAY @764
  IF ~~ EXIT
END


// A romantic dinner
IF ~Global("LK#ArathLovetalks","GLOBAL",8)~ l4
  SAY @765
  = @766
  ++ @767 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600) RealSetGlobalTimer("LK#ArathSexTimer","GLOBAL",10800)~ + l4.1
  ++ @768 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600) RealSetGlobalTimer("LK#ArathSexTimer","GLOBAL",10800)~ + l4.2
  ++ @769 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600) RealSetGlobalTimer("LK#ArathSexTimer","GLOBAL",10800)~ + l4.2
  ++ @770 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600) RealSetGlobalTimer("LK#ArathSexTimer","GLOBAL",10800)~ + l4.3
  ++ @771 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600) RealSetGlobalTimer("LK#ArathSexTimer","GLOBAL",10800)~ + l4.4
END

IF ~~ l4.1
  SAY @772
  IF ~~ + l4.5
END

IF ~~ l4.2
  SAY @773
  IF ~~ + l4.5
END

IF ~~ l4.3
  SAY @774
  IF ~~ + l4.5
END

IF ~~ l4.4
  SAY @775
  IF ~~ + l4.5
END

IF ~~ l4.5
  SAY @776
  = @777
  = @778 
  ++ @779 + l4.6
  ++ @780 + l4.7
  ++ @781 + l4.8
  ++ @782 + l4.9
  ++ @783 + l4.10
  + ~Gender(Player1,FEMALE)~ + @784 + l4.11a
  + ~Gender(Player1,MALE)~ + @784 + l4.11b
END

IF ~~ l4.6
  SAY @785
  IF ~~ + l4.15
END

IF ~~ l4.7
  SAY @786
  IF ~~ + l4.15
END

IF ~~ l4.8
  SAY @787
  IF ~~ + l4.15
END

IF ~~ l4.9
  SAY @788
  ++ @789 + l4.12
  ++ @790 + l4.13
  ++ @771 + l4.14
END

IF ~~ l4.10
  SAY @791
  IF ~~ + l4.19
END

IF ~~ l4.11a
  SAY @792
  IF ~~ + l4.15
END

IF ~~ l4.11b
  SAY @793
  IF ~~ + l4.15
END

IF ~~ l4.12
  SAY @794
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ l4.13
  SAY @795
  IF ~~ + l4.19
END

IF ~~ l4.14
  SAY @796
  = @797
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ l4.15
  SAY @798
  + ~Gender(Player1,MALE)~ + @799 + l4.16a
  + ~Gender(Player1,FEMALE)~ + @799 + l4.16b
  ++ @800 + l4.17
  ++ @801 + l4.19
  ++ @802 + l4.18
END

IF ~~ l4.16a
  SAY @803
  IF ~~ + l4.19
END

IF ~~ l4.16b
  SAY @804
  IF ~~ + l4.19
END

IF ~~ l4.17
  SAY @805
  IF ~~ + l4.19
END

IF ~~ l4.18
  SAY @806
  IF ~~ + l4.19
END

IF ~~ l4.19
  SAY @807
  IF ~Gender(Player1,MALE)~ + l4.20a
  IF ~Gender(Player1,FEMALE)~ + l4.20b
END

IF ~~ l4.20a
  SAY @808
  ++ @809 + l4.21
  ++ @810 + l4.22
  ++ @811 + l4.22
  ++ @812 + l4.22
  ++ @813 + l4.23
  ++ @814 + l4.24
  ++ @815 + l4.25
END

IF ~~ l4.20b
  SAY @816
  ++ @809 + l4.21
  ++ @817 + l4.22
  ++ @811 + l4.22
  ++ @812 + l4.22
  ++ @813 + l4.23
  ++ @814 + l4.24
  ++ @815 + l4.25
END

IF ~~ l4.21
  SAY @818
  IF ~~ + l4.24
END

IF ~~ l4.22
  SAY @819
  IF ~~ DO ~SetGlobal("LK#ArathSex","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ l4.23
  SAY @820
  ++ @821 + l4.27
  ++ @822 + l4.22
  ++ @823 DO ~SetGlobal("LK#ArathPCVirgin","GLOBAL",1)~ + l4.28
  ++ @824 DO ~SetGlobal("LK#ArathPCVirgin","GLOBAL",1)~ + l4.25
END

IF ~~ l4.24
  SAY @825
  ++ @826 + l4.22
  ++ @827 + l4.22
  + ~Gender(Player1,MALE)~ + @828 DO ~SetGlobal("LK#ArathPCsTerms","GLOBAL",1)~ + l4.26a
  + ~Gender(Player1,FEMALE)~ + @828 DO ~SetGlobal("LK#ArathPCsTerms","GLOBAL",1)~ + l4.26b
  ++ @829 + l4.25
  ++ @830 + l4.12
END

IF ~~ l4.25
  SAY @831
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ l4.26a
  SAY @832
  ++ @833 + l4.29
  ++ @834 + l4.29
  ++ @835 + l4.30
  ++ @836 + l4.31
END

IF ~~ l4.26b
  SAY @837
  ++ @833 + l4.29
  ++ @834 + l4.29
  ++ @835 + l4.30
  ++ @836 + l4.31
END

IF ~~ l4.27
  SAY @838
  IF ~~ + l4.22
END

IF ~~ l4.28
  SAY @839
  IF ~~ + l4.32
END

IF ~~ l4.29
  SAY @840
  IF ~~ DO ~SetGlobal("LK#ArathSex","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ l4.30
  SAY @841
  = @842
  IF ~~ + l4.32
END

IF ~~ l4.31
  SAY @843
  IF ~~ DO ~SetGlobal("LK#ArathSex","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ l4.32
  SAY @844
  IF ~~ DO ~RestParty()~ EXIT
END


// LT5: The wonders of Athkatla
IF ~Global("LK#ArathLovetalks","GLOBAL",10)~ l5
  SAY @845
  ++ @846 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l5.1
  ++ @847 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l5.2
  ++ @848 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l5.3
  ++ @849 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l5.4
END

IF ~~ l5.1
  SAY @850
  IF ~~ + l5.5
END

IF ~~ l5.2
  SAY @851
  IF ~~ + l5.5
END

IF ~~ l5.3
  SAY @852
  IF ~~ + l5.5
END

IF ~~ l5.4
  SAY @853
  IF ~~ + l5.5
END

IF ~~ l5.5
  SAY @854
  = @855
  ++ @856 + l5.6
  ++ @857 + l5.7
  ++ @858 + l5.8
  ++ @859 + l5.9
  ++ @860 + l5.10
END

IF ~~ l5.6
  SAY @861
  IF ~~ + l5.11
END

IF ~~ l5.7
  SAY @862
  IF ~~ + l5.11
END

IF ~~ l5.8
  SAY @863
  IF ~~ + l5.11
END

IF ~~ l5.9
  SAY @864
  IF ~~ + l5.11
END

IF ~~ l5.10
  SAY @865
  = @866
  IF ~~ + l5.11
END

IF ~~ l5.11
  SAY @867
  = @868
  ++ @869 + l5.12
  ++ @870 + l5.13
  ++ @871 + l5.14
  ++ @872 + l5.15
END

IF ~~ l5.12
  SAY @873
  IF ~~ + l5.16
END

IF ~~ l5.13
  SAY @874
  IF ~~ + l5.16
END

IF ~~ l5.14
  SAY @875
  IF ~~ + l5.16
END

IF ~~ l5.15
  SAY @876
  IF ~~ + l5.16
END

IF ~~ l5.16
  SAY @877
  IF ~~ EXIT
END


// LT6: Bizarre dreams
IF ~Global("LK#ArathLovetalks","GLOBAL",12)~ l6
  SAY @878
  ++ @879 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l6.3
  ++ @880 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l6.3
  ++ @881 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l6.1
  ++ @882 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l6.1
  ++ @883 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l6.2
END

IF ~~ l6.1
  SAY @884
  IF ~~ + l6.3
END

IF ~~ l6.2
  SAY @885
  IF ~~ EXIT
END

IF ~~ l6.3
  SAY @886
  = @887
  = @888
  ++ @889 + l6.4
  ++ @890 + l6.5
  ++ @891 + l6.6
  ++ @892 + l6.7
END

IF ~~ l6.4
  SAY @893
  IF ~~ + l6.8
END

IF ~~ l6.5
  SAY @894
  IF ~~ + l6.8
END

IF ~~ l6.6
  SAY @895
  IF ~~ + l6.8
END

IF ~~ l6.7
  SAY @896
  IF ~~ EXIT
END

IF ~~ l6.8
  SAY @897
  ++ @898 + l6.9
  ++ @899 + l6.10
  ++ @900 + l6.11
  ++ @901 + l6.12
  ++ @902 + l6.13
END

IF ~~ l6.9
  SAY @903
  IF ~~ + l6.14
END

IF ~~ l6.10
  SAY @904
  IF ~~ + l6.14
END

IF ~~ l6.11
  SAY @905
  IF ~~ + l6.14
END

IF ~~ l6.12
  SAY @906
  IF ~~ + l6.14
END

IF ~~ l6.13
  SAY @907
  IF ~~ + l6.14
END

IF ~~ l6.14
  SAY @908
  = @909
  ++ @910 + l6.15
  ++ @911 + l6.16
  ++ @912 + l6.17
  ++ @913 + l6.18
END

IF ~~ l6.15
  SAY @914
  IF ~~ EXIT
END

IF ~~ l6.16
  SAY @915
  IF ~~ EXIT
END

IF ~~ l6.17
  SAY @916
  IF ~~ EXIT
END

IF ~~ l6.18
  SAY @917
  IF ~~ EXIT
END


// LT7: More compliments!
IF ~Global("LK#ArathLovetalks","GLOBAL",14) Gender(Player1,FEMALE)~ l7a
  SAY @918
  ++ @919 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l7.5
  ++ @920 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l7.1a
  ++ @921 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l7.2
  ++ @922 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l7.3a
  ++ @923 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l7.6
  ++ @924 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l7.4
  + ~Global("LK#ArathSex","GLOBAL",1)~ + @925 + l7.x
END

IF ~Global("LK#ArathLovetalks","GLOBAL",14) Gender(Player1,MALE)~ l7b
  SAY @926
  ++ @919 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l7.5
  ++ @920 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l7.1b
  ++ @927 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l7.2
  ++ @922 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l7.3b
  ++ @923 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l7.6
  ++ @924 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l7.4
END

IF ~~ l7.x
  SAY @928
  IF ~~ + l7.6
END

IF ~~ l7.1a
  SAY @929
  = @930
  IF ~~ + l7.6
END

IF ~~ l7.1b
  SAY @931
  = @930
  IF ~~ + l7.6
END

IF ~~ l7.2
  SAY @932
  IF ~~ + l7.6
END

IF ~~ l7.3a
  SAY @933
  IF ~~ + l7.6
END

IF ~~ l7.3b
  SAY @934
  IF ~~ + l7.6
END

IF ~~ l7.4
  SAY @935
  IF ~~ + l7.6
END

IF ~~ l7.5
  SAY @936
  IF ~~ + l7.6
END

IF ~~ l7.6
  SAY @937
  ++ @938 + l7.7
  + ~!Global("LK#ArathSex","GLOBAL",1) Global("LK#ArathPCVirgin","GLOBAL",1)~ + @939 + l7.8a
  + ~!Global("LK#ArathSex","GLOBAL",1) !Global("LK#ArathPCVirgin","GLOBAL",1)~ + @939 + l7.8b
  + ~Global("LK#ArathSex","GLOBAL",1)~ + @939 + l7.8c
  ++ @940 + l7.9
  + ~Global("LK#ArathSex","GLOBAL",1)~ + @941 + l7.10
  + ~!Global("LK#ArathSex","GLOBAL",1)~ + @942 + l7.10
  + ~Global("LK#ArathSex","GLOBAL",1)~ + @943 + l7.11
  + ~!Global("LK#ArathSex","GLOBAL",1) Gender(Player1,MALE)~ + @944 + l7.12a
  + ~!Global("LK#ArathSex","GLOBAL",1) Gender(Player1,FEMALE)~ + @944 + l7.12b
END

IF ~~ l7.7
  SAY @945
  IF ~!Global("LK#ArathSex","GLOBAL",1) Global("LK#ArathPCVirgin","GLOBAL",1)~ + l7.8a
  IF ~!Global("LK#ArathSex","GLOBAL",1) !Global("LK#ArathPCVirgin","GLOBAL",1)~ + l7.8b
  IF ~Global("LK#ArathSex","GLOBAL",1)~ + l7.8c
END

IF ~~ l7.8a
  SAY @946
  = @947
  ++ @948 + l7.14
  ++ @949 + l7.15
  ++ @950 + l7.16
END

IF ~~ l7.8b
  SAY @951
  IF ~~ + l7.13
END

IF ~~ l7.8c
  SAY @952
  IF ~~ + l7.13
END

IF ~~ l7.9
  SAY @953
  ++ @954 + l7.15
  ++ @955 + l7.17
  ++ @956 + l7.18
  ++ @957 + l7.19
END

IF ~~ l7.10
  SAY @958
  ++ @954 + l7.15
  ++ @955 + l7.17
  ++ @956 + l7.18
  ++ @957 + l7.19
END

IF ~~ l7.11
  SAY @959
  = @960
  IF ~~ + l7.13
END

IF ~~ l7.12a
  SAY @961
  IF ~~ + l7.13
END

IF ~~ l7.12b
  SAY @962
  IF ~~ + l7.13
END

IF ~~ l7.13
  SAY @963
  = @964
  = @965
  = @966
  IF ~~ EXIT
END

IF ~~ l7.14
  SAY @967
  IF ~~ EXIT
END

IF ~~ l7.15
  SAY @968
  IF ~~ EXIT
END

IF ~~ l7.16
  SAY @969
  IF ~~ EXIT
END

IF ~~ l7.17
  SAY @970 
  = @971
  IF ~~ + l7.15
END

IF ~~ l7.18
  SAY @972
  IF ~~ EXIT
END

IF ~~ l7.19
  SAY @973
  = @974
  IF ~~ EXIT
END


// LT8: The fantastical hot-tub and the boringness of death
IF ~Global("LK#ArathLovetalks","GLOBAL",16) GlobalLT("chapter","GLOBAL",3)~ l8a
  SAY @975
  IF ~~ DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l8.1
END

IF ~Global("LK#ArathLovetalks","GLOBAL",16) GlobalGT("chapter","GLOBAL",2)~ l8b
  SAY @976
  IF ~~ DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l8.1
END

IF ~~ l8.1
  SAY @977
  ++ @978 + l8.2
  ++ @979 + l8.3
  ++ @980 + l8.4
  ++ @981 + l8.5
  ++ @982 + l8.6
  ++ @983 + l8.7
END

IF ~~ l8.2
  SAY @984
  IF ~~ + l8.8
END

IF ~~ l8.3
  SAY @985
  IF ~~ + l8.8
END

IF ~~ l8.4
  SAY @986
  = @987
  IF ~~ + l8.8
END

IF ~~ l8.5
  SAY @988
  IF ~~ + l8.8
END

IF ~~ l8.6
  SAY @989
  IF ~~ + l8.8
END

IF ~~ l8.7
  SAY @990
  IF ~~ EXIT
END

IF ~~ l8.8
  SAY @991
  = @992
  = @993
  ++ @994 + l8.9
  ++ @995 + l8.10
  ++ @996 + l8.11
  ++ @997 + l8.12
END

IF ~~ l8.9
  SAY @998
  = @999
  IF ~~ + l8.13
END

IF ~~ l8.10
  SAY @1000
  IF ~~ + l8.13
END

IF ~~ l8.11
  SAY @1001
  IF ~~ + l8.13
END

IF ~~ l8.12
  SAY @1002
  IF ~~ + l8.13
END

IF ~~ l8.13
  SAY @1003
  = @1004
  IF ~~ EXIT
END


// LT 9
IF ~Global("LK#ArathLovetalks","GLOBAL",18)~ l9
  SAY @1005
  ++ @1006 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l9.4
  ++ @1007 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l9.4
  ++ @1008 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l9.1
  ++ @1009 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l9.2
  ++ @1010 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l9.3
END

IF ~~ l9.1
  SAY @1011
  IF ~~ + l9.6
END

IF ~~ l9.2
  SAY @1012
  IF ~~ + l9.6
END

IF ~~ l9.3
  SAY @1013
  IF ~~ EXIT
END

IF ~~ l9.4
  SAY @1014
  ++ @1015 + l9.5
  + ~Global("LK#ArathSex","GLOBAL",1)~ + @1016 + l9.6
  ++ @51 + l9.7
  ++ @1017 + l9.8
  ++ @1018 + l9.9
  + ~OR(8) Class(Player1,DRUID_ALL) Class(Player1,FIGHTER_DRUID) Class(Player1,RANGER_ALL) Class(Player1,CLERIC_ALL) Class(Player1,FIGHTER_CLERIC) Class(Player1,CLERIC_MAGE) Class(Player1,CLERIC_THIEF) Class(Player1,CLERIC_RANGER)~ + @1019 + l9.11
END

IF ~~ l9.5
  SAY @1020
  IF ~~ + l9.11
END

IF ~~ l9.6
  SAY @1021
  IF ~~ + l9.10
END

IF ~~ l9.7
  SAY @1022
  IF ~~ + l9.10
END

IF ~~ l9.8
  SAY @1023
  IF ~~ + l9.10
END

IF ~~ l9.9
  SAY @1024
  IF ~~ EXIT
END

IF ~~ l9.10
  SAY @1025
  IF ~~ + l9.11
END

IF ~~ l9.11
  SAY @1026
  ++ @1027 + l9.12
  ++ @1028 + l9.12
  ++ @1029 + l9.12
END

IF ~~ l9.12
  SAY @1030
  = @1031
  IF ~~ EXIT
END


// LT 10
IF ~Global("LK#ArathLovetalks","GLOBAL",20)~ l10
  SAY @1032
  ++ @1033 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l10.1
  ++ @1034 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l10.2
  ++ @1035 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l10.1
  ++ @1036 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l10.3
  ++ @892 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l10.4
END

IF ~~ l10.1
  SAY @1037
  IF ~~ + l10.5
END

IF ~~ l10.2
  SAY @1038
  IF ~~ + l10.5
END

IF ~~ l10.3
  SAY @1039
  IF ~~ + l10.5
END

IF ~~ l10.4
  SAY @1040
  IF ~~ EXIT
END

IF ~~ l10.5
  SAY @1041
  = @1042
  ++ @1043 + l10.6
  ++ @1044 + l10.6
  ++ @1045 + l10.6
  ++ @1046 + l10.7
END
  
IF ~~ l10.6
  SAY @1047
  ++ @1048 + l10.8
  ++ @1049 + l10.9
  ++ @1050 + l10.10
  ++ @1051 + l10.10
END

IF ~~ l10.7
  SAY @1052
  ++ @1053 + l10.9
  ++ @1050 + l10.10
  ++ @1051 + l10.10
END

IF ~~ l10.8
  SAY @1054
  IF ~~ EXIT
END

IF ~~ l10.9
  SAY @1055
  IF ~~ + l10.11
END

IF ~~ l10.10
  SAY @1056
  IF ~~ + l10.11
END

IF ~~ l10.11
  SAY @1057
  IF ~~ EXIT
END


// LT 11
IF ~Global("LK#ArathLovetalks","GLOBAL",22)~ l11
  SAY @1058
  ++ @1059 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l11.1
  ++ @1060 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l11.1
  ++ @1061 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l11.1
  ++ @1062 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l11.1
  ++ @1063 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l11.1
END

IF ~~ l11.1
  SAY @1064
  ++ @1065 + l11.3
  ++ @1066 + l11.3
  ++ @1067 + l11.3
  ++ @1068 + l11.3
  ++ @1069 + l11.3
  ++ @1070 + l11.2
END

IF ~~ l11.2
  SAY @1071
  = @1072
  IF ~~ EXIT
END

IF ~~ l11.3
  SAY @1073
  ++ @1074 + l11.4
  ++ @1075 + l11.4
  ++ @1076 + l11.4
  ++ @1077 + l11.5
  ++ @1078 + l11.6
END

IF ~~ l11.4
  SAY @1079
  IF ~~ + l11.6
END

IF ~~ l11.5
  SAY @1080
  IF ~~ + l11.6
END

IF ~~ l11.6
  SAY @1081
  IF ~~ EXIT
END


// LT12
IF ~Global("LK#ArathLovetalks","GLOBAL",24)~ l12
  SAY @1082
  ++ @1083 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l12.3
  ++ @1084 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l12.3
  ++ @1085 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l12.1
  ++ @1086 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l12.2
END

IF ~~ l12.1
  SAY @1087
  IF ~~ + l12.4
END

IF ~~ l12.2
  SAY @1088
  IF ~~ + l12.4
END

IF ~~ l12.3
  SAY @1089
  IF ~~ + l12.4
END

IF ~~ l12.4
  SAY @1090
  ++ @1091 + l12.5
  ++ @1092 + l12.6
  ++ @1093 + l12.7
  ++ @1094 + l12.5
END

IF ~~ l12.5
  SAY @1095
  IF ~~ + l12.8
END

IF ~~ l12.6
  SAY @1096
  IF ~~ + l12.8
END

IF ~~ l12.7
  SAY @1097
  = @1098
  IF ~~ + l12.8
END

IF ~~ l12.8
  SAY @1099
  = @1100
  ++ @1101 + l12.9
  ++ @1102 + l12.10
  ++ @1103 + l12.11
  ++ @1104 + l12.12
  ++ @1105 + l12.13
END

IF ~~ l12.9
  SAY @1106
  IF ~~ + l12.14
END

IF ~~ l12.10
  SAY @1107
  IF ~~ + l12.14
END

IF ~~ l12.11
  SAY @1108
  IF ~~ + l12.14
END

IF ~~ l12.12
  SAY @1109
  IF ~~ + l12.14
END

IF ~~ l12.13
  SAY @1110
  IF ~~ + l12.14
END

IF ~~ l12.14
  SAY @1111
  IF ~~ EXIT
END


// Post-spellhold romance
IF ~Global("LK#ArathLovetalks","GLOBAL",26)~ l13
  SAY @1112
  ++ @1113 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l13.1
  ++ @1114 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l13.2
  ++ @1115 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l13.3
  ++ @1116 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l13.4
END

IF ~~ l13.1
  SAY @1117
  IF ~~ + l13.5
END

IF ~~ l13.2
  SAY @1118
  IF ~~ + l13.5
END

IF ~~ l13.3
  SAY @1119
  IF ~~ + l13.5
END

IF ~~ l13.4
  SAY @1120
  IF ~~ + l13.5
END

IF ~~ l13.5
  SAY @1121
  ++ @1122 + l13.6
  ++ @1123 + l13.6
  ++ @1124 + l13.6
  ++ @1125 + l13.6
END

IF ~~ l13.6
  SAY @1126
  ++ @1127 + l13.7
  ++ @1128 + l13.7
  + ~OR(2) CheckStatGT(Player1,12,INT) CheckStatGT(Player1,12,WIS)~ + @1129 + l13.8
  ++ @1130 + l13.7
END

IF ~~ l13.7
  SAY @1131
  IF ~~ + l13.9
END

IF ~~ l13.8
  SAY @1132
  IF ~~ + l13.9
END

IF ~~ l13.9
  SAY @1133
  = @1134
  IF ~~ EXIT
END


//
IF ~Global("LK#ArathLovetalks","GLOBAL",28)~ l14
  SAY @1135
  ++ @1136 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l14.4
  ++ @1137 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l14.1
  + ~OR(2) CheckStatGT(Player1,12,INT) CheckStatGT(Player1,12,WIS)~ + @1138 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l12.2
  ++ @1139 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l12.3
END

IF ~~ l14.1
  SAY @1140
  IF ~~ + l14.4
END

IF ~~ l14.2
  SAY @1141
  ++ @1142 + l14.8
  ++ @1143 + l14.5
  ++ @1144 + l14.8
  ++ @1145 + l14.8
  ++ @1146 + l14.6
  ++ @892 + l14.7
END

IF ~~ l14.3
  SAY @1147
  = @1148
  ++ @1142 + l14.8
  ++ @1143 + l14.5
  ++ @1144 + l14.8
  ++ @1145 + l14.8
  ++ @1146 + l14.6
  ++ @892 + l14.7
END

IF ~~ l14.4
  SAY @1149
  ++ @1142 + l14.8
  ++ @1143 + l14.5
  ++ @1144 + l14.8
  ++ @1145 + l14.8
  ++ @1146 + l14.6
  ++ @892 + l14.7
END

IF ~~ l14.5
  SAY @1150
  IF ~~ + l14.8
END

IF ~~ l14.6
  SAY @1151
  IF ~~ + l14.8
END

IF ~~ l14.7
  SAY @1152
  IF ~~ EXIT
END

IF ~~ l14.8
  SAY @1153
  ++ @1154 + l14.12
  ++ @1155 + l14.9
  ++ @1156 + l14.10
  ++ @1157 + l14.11
END

IF ~~ l14.9
  SAY @1158
  IF ~~ + l14.12
END

IF ~~ l14.10
  SAY @1159
  ++ @1160 + l14.13
  ++ @1161 + l14.13
  ++ @1162 + l14.14
  ++ @1163 + l14.13
END

IF ~~ l14.11
  SAY @1164
  IF ~~ EXIT
END

IF ~~ l14.12
  SAY @1165
  ++ @1160 + l14.13
  ++ @1161 + l14.13
  ++ @1162 + l14.14
  ++ @1163 + l14.13
END

IF ~~ l14.13
  SAY @1166
  = @1167
  IF ~~ EXIT
END

IF ~~ l14.14
  SAY @1168
  IF ~~ EXIT
END


//
IF ~Global("LK#ArathLovetalks","GLOBAL",30)~ l15
  SAY @1169
  ++ @582 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l15.1
  ++ @1170 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l15.2
  ++ @1171 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l15.2
  ++ @1172 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l15.2
END

IF ~~ l15.1
  SAY @1173
  IF ~~ + l15.6
END

IF ~~ l15.2
  SAY @1174
  ++ @1175 + l15.3
  ++ @1176 + l15.3
  ++ @1177 + l15.4
  ++ @1178 + l15.5
END

IF ~~ l15.3
  SAY @1179
  IF ~~ + l15.6
END

IF ~~ l15.4
  SAY @1180
  IF ~~ + l15.6
END

IF ~~ l15.5
  SAY @1181
  IF ~~ + l15.6
END

IF ~~ l15.6
  SAY @1182
  ++ @1183 + l15.10
  ++ @1184 + l15.7
  ++ @1185 + l15.8
  ++ @1186 + l15.9
END

IF ~~ l15.7
  SAY @1187
  IF ~~ + l15.9
END

IF ~~ l15.8
  SAY @1188
  IF ~~ + l15.9
END

IF ~~ l15.9
  SAY @1189
  IF ~~ EXIT
END

IF ~~ l15.10
  SAY @1190
  IF ~~ EXIT
END


//
IF ~Global("LK#ArathLovetalks","GLOBAL",32)~ l16
  SAY @1191
  ++ @1192 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",7200)~ + l16.1
  ++ @1193 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",7200)~ + l16.1
  ++ @1194 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",7200)~ + l16.1
  ++ @1195 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",7200)~ + l16.1
END

IF ~~ l16.1
  SAY @1196
  = @1197
  ++ @1198 + l16.2
  ++ @1199 + l16.2
  ++ @1200 + l16.2
  ++ @1201 + l16.3
END

IF ~~ l16.2
  SAY @1202
  = @1203
  IF ~~ + l16.3
END

IF ~~ l16.3
  SAY @1204
  = @1205
  IF ~~ EXIT
END


//(2 hour break here)


// at night, about to rest
IF ~Global("LK#ArathLovetalks","GLOBAL",34)~ l17
  SAY @1206
  = @1207
  ++ @1208 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1)~ + l17.1
  ++ @1209 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1)~ + l17.1
  ++ @1210 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1)~ + l17.1
  ++ @1211 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1)~ + l17.1
END

IF ~~ l17.1
  SAY @1212
  = @1213
  ++ @1214 + l17.2
  ++ @1215 + l17.3
  ++ @1216 + l17.4
  ++ @1217 + l17.5
  ++ @1218 + l17.6
  ++ @1219 + l17.6
END

IF ~~ l17.2
  SAY @1220
  ++ @1221 + l17.7
  ++ @1222 + l17.8
  ++ @1223 + l17.8
  ++ @1224 + l17.9
END

IF ~~ l17.3
  SAY @1225
  ++ @1226 + l17.2
  ++ @1227 + l17.2
  ++ @1228 + l17.6
  ++ @1229 + l17.10
END

IF ~~ l17.4
  SAY @1230
  ++ @1226 + l17.2
  ++ @1227 + l17.2
  ++ @1228 + l17.6
  ++ @1229 + l17.10
END

IF ~~ l17.5
  SAY @1231
  ++ @1226 + l17.2
  ++ @1227 + l17.2
  ++ @1228 + l17.6
  ++ @1229 + l17.10
END

IF ~~ l17.6
  SAY @1232
  = @1233
  = @1234
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ l17.7
  SAY @1235
  = @1236
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ l17.8
  SAY @567
  IF ~~ + l17.7
END

IF ~~ l17.9
  SAY @1237
  IF ~~ + l17.7
END

IF ~~ l17.10
  SAY @1233
  = @1238
  IF ~~ DO ~RestParty()~ EXIT
END


// morning after
IF ~Global("LK#ArathLovetalks","GLOBAL",36)~ l18
  SAY @1239
  ++ @1240 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l18.3
  ++ @1241 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l18.3
  ++ @1242 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l18.1
  ++ @1243 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l18.2
END

IF ~~ l18.1
  SAY @1244
  IF ~~ + l18.3
END

IF ~~ l18.2
  SAY @1232
  = @1245
  IF ~~ DO ~SetGlobal("LK#ArathRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ l18.3
  SAY @1246
  = @1247
  ++ @1248 + l18.6
  ++ @1249 + l18.4
  ++ @1250 + l18.5
  ++ @1251 + l18.6
END

IF ~~ l18.4
  SAY @1252
  IF ~~ + l18.6
END

IF ~~ l18.5
  SAY @1253
  IF ~~ + l18.6
END

IF ~~ l18.6
  SAY @1254
  ++ @1255 + l18.7
  ++ @1256 + l18.8
  ++ @1257 + l18.9
  ++ @1258 + l18.10
  ++ @1259 + l18.11
  ++ @1260 + l18.12
  ++ @1261 + l18.8
  ++ @1262 + l18.11
END

IF ~~ l18.7
  SAY @1263
  IF ~~ + l18.8
END

IF ~~ l18.8
  SAY @1264
  ++ @1265 + l18.12
  ++ @1266 + l18.12
  ++ @1267 + l18.13
  ++ @1268 + l18.14
  ++ @1269 +  l18.15
END
  
IF ~~ l18.9
  SAY @1270
  IF ~~ + l18.11
END

IF ~~ l18.10
  SAY @1271
  IF ~~ + l18.8
END

IF ~~ l18.11
  SAY @1272
  IF ~~ + l18.8
END

IF ~~ l18.12
  SAY @1273
  IF ~~ DO ~SetGlobal("LK#ArathRomanceActive","GLOBAL",2)~ EXIT
END

IF ~~ l18.13
  SAY @1274
  IF ~~ DO ~SetGlobal("LK#ArathRomanceActive","GLOBAL",2)~ EXIT
END

IF ~~ l18.14
  SAY @1275
  = @1276
  IF ~~ DO ~SetGlobal("LK#ArathRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ l18.15
  SAY @1277
  = @1278
  ++ @1279 + l18.16
  ++ @1280 + l18.17
  ++ @1281 + l18.18
  ++ @1282 + l18.19
END

IF ~~ l18.16
  SAY @1283
  = @1284
  = @1285
  IF ~~ EXIT
END

IF ~~ l18.17
  SAY @1286
  ++ @1287 + l18.20
  ++ @1288 + l18.21
  ++ @1289 + l18.22
  ++ @1290 + l18.23
END

IF ~~ l18.18
  SAY @1291
  IF ~~ + l18.24
END

IF ~~ l18.19
  SAY @1292
  IF ~~ + l18.24
END

IF ~~ l18.20
  SAY @1293
  IF ~~ DO ~SetGlobal("LK#ArathRomanceActive","GLOBAL",2)~ EXIT
END

IF ~~ l18.21
  SAY @1294
  = @1295
  IF ~~ DO ~SetGlobal("LK#ArathRomanceActive","GLOBAL",2)~ EXIT
END

IF ~~ l18.22
  SAY @1296
  IF ~~ + l18.24
END

IF ~~ l18.23
  SAY @1297
  IF ~~ + l18.24
END

IF ~~ l18.24
  SAY @1298
  IF ~~ DO ~SetGlobal("LK#ArathRomanceActive","GLOBAL",3)~ EXIT
END


//
IF ~Global("LK#ArathLovetalks","GLOBAL",38)~ l19
  SAY @1299
  ++ @1300 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l19.3
  ++ @1301 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l19.3
  ++ @1302 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l19.2
  ++ @1303 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1) RealSetGlobalTimer("LK#ArathLovetalkTimer","GLOBAL",3600)~ + l19.1
END

IF ~~ l19.1
  SAY @1304
  IF ~~ + l19.3
END

IF ~~ l19.2
  SAY @1305
  IF ~~ + l19.3
END

IF ~~ l19.3
  SAY @1306
  = @1307
  = @1308
  = @1309
  = @1310
  ++ @1311 + l19.6
  ++ @1312 + l19.4
  ++ @1313 + l19.6
  ++ @1314 + l19.5
END

IF ~~ l19.4
  SAY @1315
  IF ~~ + l19.6
END

IF ~~ l19.5
  SAY @1316 
  IF ~~ + l19.6
END

IF ~~ l19.6
  SAY @1317
  = @1318
  = @1319
  = @1320
  = @1321
  ++ @1322 + l19.7
  ++ @1323 + l19.8
  ++ @1324 + l19.9
  ++ @1325 + l19.10
END

IF ~~ l19.7
  SAY @1326
  IF ~~ + l19.8
END

IF ~~ l19.8
  SAY @1327
  IF ~~ EXIT
END

IF ~~ l19.9
  SAY @1328
  IF ~~ + l19.8
END

IF ~~ l19.10
  SAY @1329
  IF ~~ + l19.8
END


// last LT
IF ~Global("LK#ArathLovetalks","GLOBAL",40)~ l20
  SAY @1330
  ++ @1331 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1)~ + l20.1
  ++ @1332 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1)~ + l20.1
  ++ @1333 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1)~ + l20.1
  ++ @1334 DO ~IncrementGlobal("LK#ArathLovetalks","GLOBAL",1)~ + l20.1
END

IF ~~ l20.1
  SAY @1335
  IF ~Gender(Player1,MALE)~ + l20.2a
  IF ~Gender(Player1,FEMALE)~ + l20.2b
END

IF ~~ l20.2a
  SAY @1336
  = @1337
  = @1338
  ++ @1208 + l20.3
  ++ @1339 + l20.4
  ++ @1340 + l20.5
  ++ @1341 + l20.6
END
  
IF ~~ l20.2b
  SAY @1342
  = @1337
  = @1343
  ++ @1208 + l20.3
  ++ @1339 + l20.4
  ++ @1340 + l20.5
  ++ @1341 + l20.6
END

IF ~~ l20.3
  SAY @1344
  IF ~~ + l20.7
END

IF ~~ l20.4
  SAY @1345
  IF ~~ + l20.7
END

IF ~~ l20.5
  SAY @1346
  = @1347
  IF ~~ + l20.7
END

IF ~~ l20.6
  SAY @1348
  IF ~~ + l20.7
END

IF ~~ l20.7
  SAY @1349
  = @1350
  ++ @1351 + l20.8
  ++ @1352 + l20.9
  ++ @1353 + l20.10
  ++ @1354 + l20.11
END

IF ~~ l20.8
  SAY @1355
  IF ~~ + l20.12
END

IF ~~ l20.9
  SAY @1356
  IF ~~ + l20.12
END

IF ~~ l20.10
  SAY @1357
  IF ~~ + l20.12
END

IF ~~ l20.11
  SAY @1358
  IF ~~ + l20.12
END

IF ~~ l20.12
  SAY @1359
  ++ @1360 + l20.13
  ++ @1361 + l20.14
  ++ @1362 + l20.15
  ++ @1363 + l20.16
END

IF ~~ l20.13
  SAY @1364
  IF ~~ EXIT
END

IF ~~ l20.14
  SAY @1365
  IF ~~ EXIT
END

IF ~~ l20.15
  SAY @1366
  IF ~~ EXIT
END

IF ~~ l20.16
  SAY @1367
  = @1368
  IF ~~ DO ~SetGlobal("LK#ArathRomanceActive","GLOBAL",3)~ EXIT
END


// sex scenes

// In forest
IF ~Global("LK#ArathForestSex","GLOBAL",1)~ s1
  SAY @1369
  = @1370
  = @1371
  IF ~Gender(Player1,MALE)~ DO ~SetGlobal("LK#ArathForestSex","GLOBAL",2) SetGlobal("LK#ArathBreak","GLOBAL",1) RealSetGlobalTimer("LK#ArathSexTimer","GLOBAL",10800)~ + s1.1a
  IF ~Gender(Player1,FEMALE)~ DO ~SetGlobal("LK#ArathForestSex","GLOBAL",2) SetGlobal("LK#ArathBreak","GLOBAL",1) RealSetGlobalTimer("LK#ArathSexTimer","GLOBAL",10800)~ + s1.1b
END

IF ~~ s1.1a
  SAY @1372
  IF ~~ + s1.2
END

IF ~~ s1.1b
  SAY @1373
  IF ~~ + s1.2
END

IF ~~ s1.2
  SAY @1374
  ++ @1375 + s1.3
  ++ @1376 + s1.4
  ++ @1377 + s1.5
  ++ @1378 + s1.3
  ++ @1379 + s1.3
  ++ @1380 + s1.3
  ++ @1381 + s1.9
END

IF ~~ s1.3
  SAY @1382
  ++ @1208 + s1.12
  ++ @1383 + s1.6
  ++ @1384 + s1.7
  ++ @1385 + s1.4
  ++ @1386 + s1.8
END

IF ~~ s1.4
  SAY @1387
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ s1.5
  SAY @1388
  = @1389
  IF ~~ + s1.3
END

IF ~~ s1.6
  SAY @1390
  IF ~~ DO ~IncrementGlobal("LK#ArathSex","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ s1.7
  SAY @1391
  ++ @1392 + s1.10
  ++ @1393 + s1.10
  ++ @1394 + s1.11
  ++ @1395 + s1.10
END

IF ~~ s1.8
  SAY @1396
  = @1397
  IF ~~ DO ~SetGlobal("LK#ArathRomanceActive","GLOBAL",3) RestParty()~ EXIT
END

IF ~~ s1.9
  SAY @1398
  IF ~~ DO ~SetGlobal("LK#ArathRomanceActive","GLOBAL",3) RestParty()~ EXIT
END

IF ~~ s1.10
  SAY @1399
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ s1.11
  SAY @1400
  ++ @1208 + s1.12
  ++ @1401 + s1.6
  ++ @1402 + s1.8
END

IF ~~ s1.12
  SAY @1403
  IF ~~ + s1.6
END


// In inn
IF ~Global("LK#ArathInnSex","GLOBAL",1)~ s2
  SAY @1404
  ++ @1405 DO ~SetGlobal("LK#ArathInnSex","GLOBAL",2) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + s2.1
  ++ @1406 DO ~SetGlobal("LK#ArathInnSex","GLOBAL",2) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + s2.1
  ++ @1407 DO ~SetGlobal("LK#ArathInnSex","GLOBAL",2) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + s2.2
  ++ @1408 DO ~SetGlobal("LK#ArathInnSex","GLOBAL",2) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + s2.2
  ++ @1409 DO ~SetGlobal("LK#ArathInnSex","GLOBAL",2) SetGlobal("LK#ArathBreak","GLOBAL",1)~ + s2.3
END

IF ~~ s2.1
  SAY @1410
  ++ @1411 + s2.4
  ++ @1412 + s2.5
  ++ @1413 + s2.6
  ++ @1414 + s2.7
END

IF ~~ s2.2
  SAY @1415
  IF ~~ + s2.8
END

IF ~~ s2.3
  SAY @1416
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ s2.4
  SAY @1417
  = @1418
  ++ @1419 + s2.9
  ++ @1420 + s2.10
  ++ @1421 + s2.11
  ++ @1422 + s2.12
END

IF ~~ s2.5
  SAY @1423
  IF ~~ + s2.8
END

IF ~~ s2.6
  SAY @1424
  ++ @1425 + s2.13
  ++ @1426 + s2.14
  ++ @1427 + s2.15
  ++ @1428 + s2.16
  ++ @1429 + s2.17
  ++ @1430 + s2.18
END

IF ~~ s2.7
  SAY @1431
  ++ @1425 + s2.13
  ++ @1426 + s2.14
  ++ @1428 + s2.16
  ++ @1429 + s2.17
  ++ @1427 + s2.15
  ++ @1430 + s2.18
END

IF ~~ s2.8
  SAY @1432
  ++ @1433 + s2.19
  ++ @1434 + s2.20
  ++ @1435 + s2.19
  ++ @1436 + s2.21
END

IF ~~ s2.9
  SAY @1437
  IF ~~ DO ~IncrementGlobal("LK#ArathSex","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ s2.10
  SAY @1438
  ++ @1439 + s2.23
  + ~Gender(Player1,MALE)~ + @1440 + s2.24a
  + ~Gender(Player1,FEMALE)~ + @1440 + s2.24b
  ++ @1441 + s2.21
  ++ @1442 + s2.25
END

IF ~~ s2.11
  SAY @1443
  ++ @1444 + s2.23
  + ~Gender(Player1,MALE)~ + @1445 + s2.24a
  + ~Gender(Player1,FEMALE)~ + @1445 + s2.24b
  ++ @1446 + s2.3
END

IF ~~ s2.12
  SAY @1447
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ s2.13
  SAY @1448
  IF ~~ + s2.8
END

IF ~~ s2.14
  SAY @1449
  IF ~~ + s2.8
END

IF ~~ s2.15
  SAY @1450
  IF ~~ + s2.8
END

IF ~~ s2.16
  SAY @1451
  IF ~~ + s2.8
END

IF ~~ s2.17
  SAY @1452
  IF ~~ + s2.8
END

IF ~~ s2.18
  SAY @1453
  IF ~~ + s2.8
END

IF ~~ s2.19
  SAY @1454
  = @1455
  IF ~~ + s2.20
END

IF ~~ s2.20
  SAY @1418
  ++ @1419 + s2.9
  ++ @1456 + s2.10
  ++ @1457 + s2.22
  ++ @1422 + s2.12
END

IF ~~ s2.21
  SAY @1458
  = @1459
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ s2.22
  SAY @1460
  IF ~~ DO ~IncrementGlobal("LK#ArathSex","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ s2.23
  SAY @1461
  IF ~~ DO ~IncrementGlobal("LK#ArathSex","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ s2.24a
  SAY @1462
  IF ~~ DO ~IncrementGlobal("LK#ArathSex","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ s2.24b
  SAY @1463
  IF ~~ DO ~IncrementGlobal("LK#ArathSex","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ s2.25
  SAY @1464
  = @1459
  IF ~~ DO ~RestParty()~ EXIT
END


IF ~Global("LK#ArathRomKill","GLOBAL",2)~ rk1
  SAY @1465
  IF ~Global("AnomenRomanceActive","GLOBAL",2)~ + rk.ano
  IF ~Global("AerieRomanceActive","GLOBAL",2)~ + rk.aer
  IF ~Global("JaheiraRomanceActive","GLOBAL",2)~ + rk.jah
  IF ~Global("ViconiaRomanceActive","GLOBAL",2)~ + rk.vic
END

IF ~~ rk.ano
  SAY @1466
  IF ~~ + rk.end
END

IF ~~ rk.aer
  SAY @1467
  IF ~~ + rk.end
END

IF ~~ rk.jah
  SAY @1468
  IF ~~ + rk.end
END

IF ~~ rk.vic
  SAY @1469
  IF ~~ + rk.end
END

IF ~~ rk.end
  SAY @1470
  IF ~~ DO ~SetGlobal("LK#ArathRomKill","GLOBAL",3) SetGlobal("LK#ArathRomanceActive","GLOBAL",3)~ EXIT
END

END


// ***********************
//                       *
//     Interjections     *
//                       *
// ***********************

I_C_T ACOLYTE1 1 LK#Arath_acolyte1
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1471
END

I_C_T ANNO1 0 LK#Arath_anno1
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1472
END

I_C_T ARAN 49 LK#Arath_aran1
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1473
END

I_C_T ARAN 24 LK#Arath_aran2
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1474
END

CHAIN IF WEIGHT #-1 ~See("Arath")
InParty("Arath")
!StateCheck("Arath",CD_STATE_NOTVALID)
Global("LK#Arath_argrim","LOCALS",0)~ THEN ARGRIM LK#Arath_argrim
  @1475
  DO ~SetGlobal("LK#Arath_argrim","LOCALS",1)~
  == LK#ARATJ @1476
  == ARGRIM @1477
  == LK#ARATJ @1478
  == ARGRIM @1479
  == LK#ARATJ @1480
  == ARGRIM @1481
EXIT

I_C_T ARNBOY01 0 LK#Arath_arnboy01
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1482
  = @1483
  == ARNBOY01 @1484
  == LK#ARATJ @1485
END

CHAIN IF WEIGHT #-1 ~See("Arath")
InParty("Arath")
!StateCheck("Arath",CD_STATE_NOTVALID)
RandomNum(2,1)
Global("LK#Arath_bftown3","LOCALS",0)~ THEN BFTOWN3 LK#Arath_bftown3
  @1486
  DO ~SetGlobal("LK#Arathbftown3","LOCALS",1)~
  == LK#ARATJ @1487
  == BFTOWN3 @1488
  == LK#ARATJ @1489
EXIT

I_C_T BDOCK2 1 LK#Arath_bdock2
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1490
  = @1491
END

I_C_T BMTOWN3 0 LK#Arath_bmtown3
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1492
  == BMTOWN3 @1493
END

I_C_T BODHI 1 LK#Arath_bodhi1
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1494
END

I_C_T BOOTER 3 LK#Arath_booter
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1495
  = @1496
END

I_C_T BRAT3 4 LK#Arath_brat3
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1497
END

I_C_T BSHOP01 1 LK#Arath_bshop1
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1498
  == KORGANJ IF ~InParty("Korgan") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1499
  == LK#ARATJ @1500
END

CHAIN IF WEIGHT #-1 ~See("Arath")
InParty("Arath")
!StateCheck("Arath",CD_STATE_NOTVALID)
RandomNum(2,2)
Global("LK#Arath_burch2","LOCALS",0)~ THEN BURCH2 LK#Arath_burch2
@1501
DO ~SetGlobal("LK#Arath_burch2","LOCALS",1)~
== LK#ARATJ @1502
EXIT

I_C_T c6BODHI 0 LK#Arath_bodhi2
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1503
  == C6BODHI @1504
END

I_C_T c6DRIZZ1 1 LK#Arath_drizzt
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1505
END

I_C_T c6REGIS1 2 LK#Arath_drizzt
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1506
END

I_C_T C6ELHAN2 28 LK#Arath_elhan
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1507
END

I_C_T C6ELHAN2 45 LK#Arath_elhan2
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1508
END

I_C_T C6ELHAN2 59 LK#Arath_elhan3
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1509
  == JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @1510
  == VICONIJ IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @1511
END

INTERJECT CEFALD04 3 LK#Arath_cefald04
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1512
COPY_TRANS CEFALD04 3

/*
EXTEND_TOP CEFALDOR 2 #0
  + ~!Class(Player1,DRUID_ALL) InParty("Arath") !Dead("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ + ~The old rituals still hold sway here! Arath shall challenge you for leadership!~ EXTERN LK#ARATJ LK#Arath_cefaldor
END

CHAIN LK#ARATJ LK#Arath_cefaldor
  ~I will? Uh, okay... would have been nice to have a heads up, maybe.~
  = ~I, Arath Duskhelm of Athkatla, challenge your authority in this grove, as is my right by the ancient laws laid down aeons ago in this place!~
*/

CHAIN IF WEIGHT #-1 ~See("Arath")
InParty("Arath")
!StateCheck("Arath",CD_STATE_NOTVALID)
RandomNum(2,2)
Global("LK#Arath_celvan","LOCALS",0)~ THEN CELVAN LK#Arath_celvan
  @1513
  DO ~SetGlobal("LK#Arath_celvan","LOCALS",1)~
  == LK#ARATJ @1514
EXTERN CELVAN 1

CHAIN IF WEIGHT #-1 ~See("Arath")
InParty("Arath")
!StateCheck("Arath",CD_STATE_NOTVALID)
RandomNum(2,2)
Global("LK#Arath_civil02","LOCALS",0)~ THEN CIVIL02 LK#Arath_civil02
  @1515
  DO ~SetGlobal("LK#Arath_civil02","LOCALS",1)~
  == LK#ARATJ @1516
  == CIVIL02 @1517
  == LK#ARATJ @1518
  == CIVIL02 @1519 
  = @1520
EXIT

I_C_T DASLAVE1 7 LK#Arath_daslave1
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1521
END

I_C_T DASLAVE1 8 LK#Arath_daslave2
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1521
END

I_C_T DASLAVE1 9 LK#Arath_daslave3
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1521
END

I_C_T DASLAVE1 10 LK#Arath_daslave4
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1521
END

I_C_T DBEGGAR 8 LK#Arath_dbeggar
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1522
  == DBEGGAR @1523
END

I_C_T DELCIA 1 LK#Arath_delcia
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1524
END

I_C_T DELCIA 32 LK#Arath_delcia2
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1525
END

CHAIN IF WEIGHT #-1 ~See("Arath")
InParty("Arath")
!StateCheck("Arath",CD_STATE_NOTVALID)
RandomNum(2,2)
Global("LK#Arath_deltow01","LOCALS",0)~ THEN DELTOW01 LK#Arath_deltow01
  @1526
  DO ~SetGlobal("LK#Arath_deltow01","LOCALS",1)~
  == LK#ARATJ @1527
  == DELTOW01 @1528
EXIT

CHAIN IF WEIGHT #-1 ~See("Arath")
InParty("Arath")
!StateCheck("Arath",CD_STATE_NOTVALID)
RandomNum(2,2)
Global("LK#Arath_dharlot1","LOCALS",0)~ THEN DHARLOT1 LK#Arath_dharlot1
  @1529
  DO ~SetGlobal("LK#Arath_dharlot1","LOCALS",1)~
  == LK#ARATJ @1530
  == DHARLOT1 @1531
  == LK#ARATJ @1532
  == DHARLOT1 @1533
EXIT

CHAIN IF WEIGHT #-1 ~See("Arath")
InParty("Arath")
!StateCheck("Arath",CD_STATE_NOTVALID)
RandomNum(2,2)
Global("LK#Arath_dmtown2","LOCALS",0)~ THEN DMTOWN2 LK#Arath_dmtown2
  @1534
  == LK#ARATJ @1535
  == DMTOWN2 @1536
EXIT

I_C_T ELGEA 0 LK#Arath_elgea
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1537
END

I_C_T FFCUST02 2 LK#Arath_ffcust02
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1538
  == FFCUST02 @1539
  = @1540
END


I_C_T FIRKRA01 6 LK#Arath_firkraag
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1541
END

CHAIN IF WEIGHT #-1 ~See("Arath")
InParty("Arath")
!StateCheck("Arath",CD_STATE_NOTVALID)
RandomNum(2,2)
Global("LK#Arath_ftown7","LOCALS",0)~ THEN FTOWN7 LK#Arath_ftown7
  @1542
  == LK#ARATJ @1543
  == FTOWN7 @1544
  == LK#ARATJ @1545
  == FTOWN7 @1232
  == LK#ARATJ @1546
  == FTOWN7 @1547
EXIT

I_C_T SAFE GIRL2 5 LK#Arath_girl2
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1548
  == GIRL2 @1549
END

I_C_T GMTOWN02 3 LK#Arath_
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1550
  = @1551
END

I_C_T GNOBLEF2 1 LK#Arath_gnoblef2
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1552
  == GNOBLEF2 @1553
  == LK#ARATJ @1554
END

I_C_T PLAYER1 25 LK#Arath_hell
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1555
  = @1556
  = @1557
END

I_C_T HELLJON 7 LK#Arath_irenicushell
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1558
END

I_C_T HELLJON 8 LK#Arath_irenicushell2
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1558
END

I_C_T HELLJON 9 LK#Arath_irenicushell3
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1558
END

I_C_T HELLJON 10 LK#Arath_irenicushell4
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1558
END

EXTEND_BOTTOM PLAYER1 33
  IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID) InMyArea("Arath") !Global("LK#ArathRomanceActive","GLOBAL",2) Global("LK#ArathTreeofLife","GLOBAL",0)~ EXTERN PLAYER1 LK#Arath_tol
  IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID) InMyArea("Arath") Global("LK#ArathRomanceActive","GLOBAL",2) Global("LK#ArathTreeofLife","GLOBAL",0)~ EXTERN PLAYER1 LK#Arath_tolrom
END

CHAIN PLAYER1 LK#Arath_tol
  @1559
END
  ++ @1560 DO ~SetGlobal("LK#ArathTreeofLife","GLOBAL",1)~ EXTERN LK#ARATJ LK#Arath_tol1
  ++ @1561 DO ~SetGlobal("LK#ArathTreeofLife","GLOBAL",1)~ EXTERN LK#ARATJ LK#Arath_tol1
  ++ @1562 DO ~SetGlobal("LK#ArathTreeofLife","GLOBAL",1)~ EXTERN LK#ARATJ LK#Arath_tol2

  CHAIN PLAYER1 LK#Arath_tolrom
  @1563
END
  ++ @1564 DO ~SetGlobal("LK#ArathTreeofLife","GLOBAL",1)~ EXTERN LK#ARATJ LK#Arath_tol3

APPEND LK#ARATJ
  IF ~~ LK#Arath_tol1
    SAY @1565
    = @1566
    COPY_TRANS PLAYER1 33
  END
  
  IF ~~ LK#Arath_tol2
    SAY @1567
    COPY_TRANS PLAYER1 33
  END
  
  IF ~~ LK#Arath_tol3
    SAY @1568
    = @1569
    = @1570
    = @1571
    COPY_TRANS PLAYER1 33
  END
END

I_C_T INSPECT 13 LK#Arath_inspect
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1572
END

I_C_T JARLAXLE 0 LK#Arath_jarlaxle
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1573
END

I_C_T KALAH2 11 LK#Arath_kalah
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1574
END

I_C_T LISSA 4 LK#Arath_lissa
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1575
END

INTERJECT MESSEN 5 LK#Arath_messen
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1576
EXTERN MESSEN 15

CHAIN IF WEIGHT #-1 ~See("Arath")
InParty("Arath")
!StateCheck("Arath",CD_STATE_NOTVALID)
RandomNum(2,2)
Global("LK#Arath_murtlen","LOCALS",0)~ THEN MURTLEN LK#Arath_murtlen
  @1577
  DO ~SetGlobal("LK#Arath_murtlen","LOCALS",1)~
  == LK#ARATJ @1578
EXIT

CHAIN IF WEIGHT #-1 ~See("Arath")
InParty("Arath")
!StateCheck("Arath",CD_STATE_NOTVALID)
RandomNum(2,2)
Global("LK#Arath_noblew1","LOCALS",0)~ THEN NOBLEW1 LK#Arath_noblew1
  @1579
  DO ~SetGlobal("LK#Arath_noblew1","LOCALS",1)~
  == LK#ARATJ @1580
  == NOBLEW1 @1581
  == LK#ARATJ @1582
  == NOBLEW1 @1583
EXIT

CHAIN IF WEIGHT #-1 ~See("Arath")
InParty("Arath")
!StateCheck("Arath",CD_STATE_NOTVALID)
RandomNum(2,2)
Global("LK#Arath_oriona","LOCALS",0)~ THEN ORIONA LK#Arath_oriona
  @1584
  DO ~SetGlobal("LK#Arath_oriona","LOCALS",1)~
  == LK#ARATJ @1585
  == ORIONA @1586
  == LK#ARATJ @1587
  == ORIONA @1588
  == LK#ARATJ @1589
EXIT

EXTEND_BOTTOM PIRMUR01 2
  IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ EXTERN LK#ARATJ LK#Arath_pirmur01
END

CHAIN LK#ARATJ LK#Arath_pirmur01
  @1590
EXTERN PIRMUR01 3

I_C_T YOSHJ 113 LK#Arath_yoshbetray
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1591
END

INTERJECT Player1 3 LK#Arath_slayer1
  == LK#ARATJ IF ~InParty("Arath") !Global("AerieRomanceActive","GLOBAL",2) !Global("AnomenRomanceActive","GLOBAL",2) !Global("JaheiraRomanceActive","GLOBAL",2) !Global("ViconiaRomanceActive","GLOBAL",2) OR(2) Global("LK#ArathRomanceActive","GLOBAL",1)~ THEN
  @1592
END
  ++ @1593 EXTERN LK#ARATJ LK#Arath_slayer1_1
  ++ @1594 EXTERN LK#ARATJ LK#Arath_slayer1_1
  ++ @1595 EXTERN LK#ARATJ LK#Arath_slayer1_2


APPEND LK#ARATJ
IF ~~ LK#Arath_slayer1_1
  SAY @1596
  IF ~~ EXIT
END

IF ~~ LK#Arath_slayer1_2
  SAY @1597
  IF ~~ EXIT
END
END

INTERJECT_COPY_TRANS Player1 5 LK#Arath_slayer2
  == LK#ARATJ IF ~InParty("Arath")~ THEN
  @1598
  = @1599
END

INTERJECT Player1 7 LK#Arath_slayer3
  == LK#ARATJ IF ~InParty("Arath") Global("LK#ArathRomanceActive","GLOBAL",1)~ THEN
  @1600
END
  ++ @1601 DO ~SetGlobal("EndangerLovedOne","GLOBAL",454) ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))~ EXIT
  ++ @1602 DO ~SetGlobal("EndangerLovedOne","GLOBAL",454) ActionOverride(Player1,ReallyForceSpell(Player1,SLAYER_CHANGE))~ EXIT
  ++ @1603 DO ~SetGlobal("EndangerLovedOne","GLOBAL",454) ActionOverride(Player1,ReallyForceSpell(Player1,SLAYER_CHANGE))~ EXIT

EXTEND_BOTTOM Player1 10
  IF ~OR(3) !InParty("Arath") Dead("Arath") StateCheck("Arath",CD_STATE_NOTVALID) Global("EndangerLovedOne","GLOBAL",454)~ THEN EXTERN Player1 12
END

INTERJECT Player1 10 LK#Arath_slayer4
  == LK#ARATJ IF ~InParty("Arath") Global("EndangerLovedOne","GLOBAL",454)~ THEN @1604
  = @1605
END
  ++ @1606 EXTERN LK#ARATJ LK#Arath_slayer4_1
  ++ @1607 EXTERN LK#ARATJ LK#Arath_slayer4_2
  ++ @1608 EXTERN LK#ARATJ LK#Arath_slayer4_3
  ++ @1609 EXTERN LK#ARATJ LK#Arath_slayer4_4

APPEND LK#ARATJ
IF ~~ LK#Arath_slayer4_1
  SAY @1610
  IF ~~ + LK#Arath_slayer4_4
END

IF ~~ LK#Arath_slayer4_2
  SAY @1611
  IF ~~ + LK#Arath_slayer4_4
END

IF ~~ LK#Arath_slayer4_3
  SAY @1612
  IF ~~ + LK#Arath_slayer4_4
END

IF ~~ LK#Arath_slayer4_4
  SAY @1613
  IF ~~ EXIT
END
END

I_C_T POSTUL1 7 LK#Arath_postul1
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1614
END

I_C_T PPDILI 2 LK#Arath_ppdili
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1615
END

I_C_T PPIMOEN 2 LK#Arath_ppimoen
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1616
END

I_C_T PPIRENI2 35 LK#Arath_ppireni2
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID) Global("LK#ArathRomanceActive","GLOBAL",1)~ THEN @1617
END

I_C_T PPSAEM2 1 LK#Arath_ppsaem2
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1618
END

I_C_T RIFTG03 7 LK#Arath_riftg03
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN  @1619
END

I_C_T SAHBEH01 7 LK#Arath_sahbeh01
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1620
  == SAHBEH01 @1621
END

I_C_T SAHPR1 1 LK#Arath_
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1622
END

CHAIN IF WEIGHT #-1 ~See("Arath")
InParty("Arath")
!StateCheck("Arath",CD_STATE_NOTVALID)
RandomNum(2,2)
Global("LK#Arath_salvanas","LOCALS",0)~ THEN SALVANAS LK#Arath_salvanas
  @1623
  DO ~SetGlobal("LK#Arath_salvanas","LOCALS",1)~
  == LK#ARATJ @1624
  == SALVANAS @1625
EXIT

I_C_T SBWENCH 4 LK#Arath_sbwench
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1626
  == SBWENCH @1627
  = @1628
  == LK#ARATJ @1629
END

I_C_T SUDEMIN 23 LK#Arath_
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1630
  = @1631
END

I_C_T SUAVATAR 5 LK#Arath_
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1632
END

I_C_T TIRDIR 2 LK#Arath_tirdir
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1633
END

I_C_T TREVIL01 5 LK#Arath_trevil01
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1634
END

I_C_T TREVIL01 16 LK#Arath_trevil012
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1635
END

I_C_T TREVIL01 24 LK#Arath_trevil013
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1636
END

EXTEND_BOTTOM TRGYP02 2
  IF ~!InPartySlot(LastTalkedToBy,0) Name("Arath",LastTalkedToBy)~ EXTERN TRGYP02 LK#Arath_trgyp02_1
END

CHAIN TRGYP02 LK#Arath_trgyp02_1
  @1637
  == LK#ARATJ @1638
EXIT

I_C_T UDPHAE01 10 LK#Arath_
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1639
END

I_C_T UDSOLA01 1 LK#Arath_
  == LK#ARATJ IF ~InParty("Arath") !StateCheck("Arath",CD_STATE_NOTVALID)~ THEN @1640
END


// ***********************
//                       *
//     Bodhinapping      *
//                       *
// ***********************

BEGIN LK#ARVMP

// bodhinapping--when Bodhi says she's snatching Dace(BOHDIAMB)
ADD_TRANS_TRIGGER BODHIAMB 5 ~OR(2) !InParty("Arath") !Global("LK#ArathRomanceActive","GLOBAL",2)~ DO 0

INTERJECT BODHIAMB 5 LK#ArathBodhiAbduct
  == BODHIAMB IF ~Global("LK#ArathRomanceActive","GLOBAL",2) InParty("Arath")~ THEN
  @1641
END
  IF ~OR(2) !InPartyAllowDead("Arath") Dead("Arath")~ EXTERN BODHIAMB 6
  IF ~InPartyAllowDead("Arath") !Dead("Arath")~ EXTERN BODHIAMB LK#ArathBodhiAbduct_1
  
CHAIN BODHIAMB LK#ArathBodhiAbduct_1
  @1642
  == LK#ARATJ @1643
END
  IF ~~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("lk#arct1")~
  UNSOLVED_JOURNAL @1644 EXIT

// Bodhi section 2
ADD_TRANS_TRIGGER C6BODHI 21 ~!Global("LK#ArathVampire","GLOBAL",2)~ DO 0

INTERJECT C6BODHI 21 LK#ArathBodhi_1
  == C6BODHI IF ~Global("LK#ArathVampire","GLOBAL",2)~ THEN
  @1645
END
  ++ @1646 EXTERN C6BODHI LK#ArathBodhi_2
  ++ @1647 EXTERN C6BODHI LK#ArathBodhi_2
  ++ @1648 EXTERN C6BODHI LK#ArathBodhi_2
  ++ @1649 EXTERN C6BODHI LK#ArathBodhi_3


APPEND C6BODHI

IF ~~ LK#ArathBodhi_2
SAY @1650
IF ~~ DO ~AddJournalEntry(@1651,QUEST)~ EXTERN LK#ARVMP LK#ArathBodhi_4
END

IF ~~ LK#ArathBodhi_3
  SAY @1652
  IF ~~ + LK#ArathBodhi_2
END
                                                                                                                          
END

CHAIN LK#ARVMP LK#ArathBodhi_4
  @1653
  == C6BODHI @1654
EXTERN C6BODHI 28


// Normal new options...
EXTEND_BOTTOM C6ELHAN2 70
  + ~PartyHasItem("LK#ARBDY")~ + @1655 GOTO 76
END

EXTEND_BOTTOM DOGHMA 0 #5
  + ~Global("RevealUmar","GLOBAL",1) PartyHasItem("LK#ARBDY")~ + @1656 GOTO 10
END

EXTEND_BOTTOM DOGHMA 3 7 9 #4
  + ~Global("RevealUmar","GLOBAL",1) PartyHasItem("LK#ARBDY")~ + @1656 GOTO 10
END

EXTEND_BOTTOM IMNBOOK1 0
  + ~Global("RevealUmar","GLOBAL",1) PartyHasItem("LK#ARBDY")~ + @1657 GOTO 4
END

ADD_STATE_TRIGGER OGHMONK1 0 ~!PartyHasItem("LK#ARBDY")~ 1 2 3


// Appending Oghmanite's dialogue
APPEND OGHMONK1
IF WEIGHT #-1 ~Global("RevealUmar","GLOBAL",1) PartyHasItem("LK#ARBDY")~ LK#Arath_oghma
  SAY @1658
  ++ @1659 + 5
  ++ @1656 + 6
END
END

// New Demin option
EXTEND_BOTTOM SUDEMIN 2
  + ~PartyHasItem("LK#ARBDY")~ + @1660 GOTO 3
END

EXTEND_BOTTOM WARSAGE 0
  + ~!Dead("c6bodhi") Global("LK#ArathVampire","GLOBAL",2)~ + @1661 GOTO 6
  + ~PartyHasItem("LK#ARBDY")~ + @1662 GOTO 5
END

// ***********************
//                       *
//         QUEST         *
//                       *
// ***********************


// Arath's quest, chapter 6
BEGIN LK#ARMES

// Messenger; 10 minutes post-Underdark
CHAIN IF ~NumTimesTalkedTo(0)~ THEN LK#ARMES t1
  @1663
  == LK#ARATJ @1516
  == LK#ARMES @1664
  == LK#ARATJ @1665
  == LK#ARMES @1666
  == LK#ARATJ @1667
  DO ~SetGlobal("LK#ArathQuest","GLOBAL",3) ActionOverride("LK#ARMES",EscapeAreaDestroy(1))~
EXIT

APPEND LK#ARATJ

IF ~Global("LK#ArathQuest","GLOBAL",3) Global("LK#ArathQuestReminder","GLOBAL",0)~ t1.1
  SAY @1668
  ++ @1669 + t1.2
  ++ @1670 + t1.3
  ++ @1671 + t1.4
  ++ @1672 + t1.5
END

IF ~~ t1.2
  SAY @1673
  IF ~~ + t1.3
END

IF ~~ t1.3
  SAY @1674
  IF ~~ DO ~SetGlobal("LK#ArathQuestReminder","GLOBAL",1) RealSetGlobalTimer("LK#ArathQuestReminderTimer","GLOBAL",1800) AddJournalEntry(@1675,QUEST)~ EXIT
END

IF ~~ t1.4
  SAY @1676
  ++ @1677 + t1.6
  ++ @1678 + t1.2
  ++ @1679 + t1.3
END

IF ~~ t1.5
  SAY @1680
  ++ @1681 + t1.6
  ++ @1678 + t1.2
  ++ @1679 + t1.3
  ++ @1682 + t1.6
END

IF ~~ t1.6
  SAY @1683
  = @1684
  = @1685
  IF ~~ DO ~SetGlobal("LK#ArathQuestReminder","GLOBAL",1) SetGlobal("LK#ArathJoined","LOCALS",0) LeaveParty() EscapeAreaMove("AR1901",919,485,0) AddJournalEntry(@1686,QUEST)~ EXIT
END

// Reminder 1
IF ~Global("LK#ArathQuestReminder","GLOBAL",2)~ t1.7
  SAY @1687
  = @1688
  ++ @1689 + t1.8
  ++ @1690 + t1.9
  ++ @1691 + t1.6
END

IF ~~ t1.8
  SAY @1692
  IF ~~ DO ~SetGlobal("LK#ArathQuestReminder","GLOBAL",3) RealSetGlobalTimer("LK#ArathQuestReminderTimer","GLOBAL",1800)~ EXIT
END

IF ~~ t1.9
  SAY @1693
  IF ~~ DO ~SetGlobal("LK#ArathQuestReminder","GLOBAL",3) RealSetGlobalTimer("LK#ArathQuestReminderTimer","GLOBAL",1800)~ EXIT
END

// Reminder 2
IF ~Global("LK#ArathQuestReminder","GLOBAL",4)~ t1.10
  SAY @1694
  = @1684
  = @1685
  IF ~~ DO ~SetGlobal("LK#ArathQuestWaiting","GLOBAL",1) SetGlobal("LK#ArathQuestReminder","GLOBAL",5) SetGlobal("LK#ArathJoined","LOCALS",0) LeaveParty() EscapeAreaMove("AR1901",919,485,0) AddJournalEntry(@1695,QUEST)~ EXIT
END 

END


// Archdruid Wreimass
BEGIN LK#ARWRE

CHAIN IF ~InParty("Arath") Global("LK#ArathQuest","GLOBAL",3)~ THEN LK#ARWRE t2
  @1696
  == LK#ARATJ @1697
  == LK#ARWRE @1698
  == LK#ARATJ @1699
  == LK#ARWRE @1700
  == LK#ARATJ @1701
  == LK#ARWRE @1702
  == LK#ARATJ @1703
  == LK#ARWRE @1704
  == LK#ARATJ @1705
  == LK#ARWRE @1706
  == LK#ARATJ @1707
  = @1708
  == LK#ARWRE @1709
END
  ++ @1710 EXTERN LK#ARWRE t2.1
  ++ @1711 EXTERN LK#ARWRE t2.2
  ++ @1712 EXTERN LK#ARWRE t2.3
  ++ @1713 EXTERN LK#ARWRE t2.3
  
APPEND LK#ARWRE

// If Arath is not in party
IF ~!InParty("Arath") Global("LK#ArathQuest","GLOBAL",3)~ t2.0
  SAY @1714
  IF ~~ EXIT
END

// and now back to our scheduled programming
IF ~~ t2.1
  SAY @1715
  IF ~~ + t2.3
END

IF ~~ t2.2
  SAY @1716
  IF ~~ + t2.3
END

IF ~~ t2.3
  SAY @1717
  ++ @1718 + t2.4
  ++ @1719 + t2.5
  ++ @1720 + t2.6
  ++ @1721 + t2.7
  ++ @1722 + t2.8
END

IF ~~ t2.4
  SAY @1723
  ++ @1719 + t2.5
  ++ @1720 + t2.6
  ++ @1721 + t2.7
  ++ @1722 + t2.8
END

IF ~~ t2.5
  SAY @1724
  ++ @1718 + t2.4
  ++ @1720 + t2.6
  ++ @1721 + t2.7
  ++ @1722 + t2.8
END

IF ~~ t2.6
  SAY @1725
  = @1726
  ++ @1718 + t2.4
  ++ @1719 + t2.5
  ++ @1721 + t2.7
  ++ @1722 + t2.8
END

IF ~~ t2.7
  SAY @1727
  = @1728
  IF ~~ EXTERN LK#ARATJ t2.9
END

IF ~~ t2.8
  SAY @1729
  IF ~~ EXTERN LK#ARATJ t2.10
END

IF ~~ t2.11
  SAY @1730
  IF ~~ + t2.12
END

IF ~~ t2.12
  SAY @1731
  IF ~~ EXTERN LK#ARATJ t2.14
END

END

CHAIN LK#ARATJ t2.9
  @1732
  == LK#ARWRE @1733
  = @1734
END
  ++ @1718 EXTERN LK#ARWRE t2.4
  ++ @1719 EXTERN LK#ARWRE t2.5
  ++ @1720 EXTERN LK#ARWRE t2.6
  ++ @1722 EXTERN LK#ARWRE t2.8

CHAIN LK#ARATJ t2.10
  @1735
  == LK#ARWRE @1736
  = @1737
END
  ++ @1738 EXTERN LK#ARWRE t2.11
  ++ @1739 EXTERN LK#ARWRE t2.12
  ++ @1740 EXTERN LK#ARATJ t2.13
  
CHAIN LK#ARATJ t2.13
  @1741
  == LK#ARWRE @1742
EXTERN LK#ARWRE t2.12

CHAIN LK#ARATJ t2.14
  @1743
  == LK#ARWRE @1744
  == LK#ARATJ @1745
  == LK#ARWRE @1746
  == LK#ARATJ @1747
  == LK#ARWRE @1748
  == LK#ARATJ @1749
END
  ++ @1750 EXTERN LK#ARWRE t2.15
  ++ @1751 EXTERN LK#ARATJ t2.16a
  ++ @1752 EXTERN LK#ARWRE t2.15

CHAIN LK#ARWRE t2.15
  @1753
  == LK#ARATJ @1754
  == LK#ARWRE @1755
  == LK#ARATJ @1756
  == LK#ARWRE @1757
  == LK#ARATJ @1758
  == LK#ARWRE @1759
  == LK#ARATJ @1760
  DO ~SetGlobal("LK#ArathQuest","GLOBAL",4) AddJournalEntry(@1761,QUEST)~
EXIT

CHAIN LK#ARATJ t2.16a
  @1762
  == LK#ARWRE @1763
  = @1764
EXTERN LK#ARWRE t2.15

// Outside grove
APPEND LK#ARATJ 

IF ~Global("LK#ArathQuest","GLOBAL",4)~ t2.16
  SAY @1765
  = @1766
  ++ @1767 + t2.17
  ++ @1768 + t2.18
  ++ @1769 + t2.19
  ++ @1770 + t2.20
END

IF ~~ t2.17
  SAY @1771
  IF ~~ + t2.20
END

IF ~~ t2.18
  SAY @1772
  = @1773
  IF ~~ + t2.17
END

IF ~~ t2.19
  SAY @1774
  IF ~~ + t2.20
END

IF ~~ t2.20
  SAY @1775
  IF ~~ DO ~SetGlobal("LK#ArathQuest","GLOBAL",5)~ EXIT
END

END

EXTEND_TOP HENDAK 33 #0
  + ~Global("LK#ArathQuest","GLOBAL",5)~ + @1776 + t3.1
  + ~Global("LK#ArathQuest","GLOBAL",6)~ + @1777 + t5.1
  + ~GlobalGT("LK#ArathQuest","GLOBAL",7) Global("LK#ArathQuestQuicksilver","GLOBAL",0)~ + @1778 + t7.1
  + ~GlobalGT("LK#ArathQuest","GLOBAL",7) Global("LK#ArathQuestQuicksilver","GLOBAL",0)~ + @1779 + t7.2
END

APPEND HENDAK

IF ~~ t3.1
  SAY @1780
  ++ @1781 + t3.2
  ++ @1782 + t3.2
  ++ @1783 + t3.3
  ++ @1784 + t3.2
END

IF ~~ t3.2
  SAY @1785
  = @1786
  ++ @1787 + t3.4
  ++ @1788 + t3.5
  ++ @1789 + t3.4
  ++ @1790 + t3.6
END

IF ~~ t3.3
  SAY @1791
  IF ~~ + t3.2
END

IF ~~ t3.4
  SAY @1792
  ++ @1793 + t3.6
  ++ @1794 + t3.6
  ++ @1795 + t3.7
END

IF ~~ t3.5
  SAY @1796
  ++ @1797 + t3.4
  ++ @1798 + t3.6
  ++ @1799 + t3.7
END

IF ~~ t3.6
  SAY @1800
  = @1801
  ++ @1802 + t3.8
  ++ @1803 + t3.9
  ++ @1804 + t3.10
END

IF ~~ t3.7
  SAY @1805
  IF ~~ + t3.6
END

IF ~~ t3.8
  SAY @1806
  ++ @1807 + t3.11
  ++ @1808 + t3.12
  ++ @1809 + t3.13
  ++ @69 + t3.14
END

IF ~~ t3.9
  SAY @1810
  IF ~~ + t3.8
END

IF ~~ t3.10
  SAY @1811
  IF ~~ + t3.8
END

IF ~~ t3.11
  SAY @1812
  IF ~~ DO ~AddJournalEntry(@1813,QUEST)~ EXIT
END

IF ~~ t3.12
  SAY @1814
  IF ~~ DO ~AddJournalEntry(@1813,QUEST)~ EXIT
END

IF ~~ t3.13
  SAY @1815
  IF ~~ DO ~AddJournalEntry(@1813,QUEST)~ EXIT
END

IF ~~ t3.14
  SAY @1816
  IF ~~ DO ~AddJournalEntry(@1813,QUEST)~ EXIT
END

IF ~~ t7.1
  SAY @1817
  = @1818
  IF ~~ DO ~SetGlobal("LK#ArathQuestQuicksilver","GLOBAL",1)~ EXIT
END

IF ~~ t7.2
  SAY @1819
  IF ~~ DO ~SetGlobal("LK#ArathQuestQuicksilver","GLOBAL",2)~ EXIT
END

END

// Informing Hendak
CHAIN HENDAK t5.1
  @1820
  = @1821
EXIT

EXTEND_TOP BYLANNA 5 #1
  + ~Global("LK#ArathQuest","GLOBAL",8)~ + @1822 + t13.3
  + ~Global("LK#ArathQuest","GLOBAL",5)~ + @1823 DO ~SetGlobal("LK#ArathQuest","GLOBAL",6)~ + t4.1
  + ~GlobalGT("LK#ArathQuest","GLOBAL",7) Global("LK#ArathQuestQuicksilver","GLOBAL",0)~ + @1824 + t7.4
  + ~GlobalGT("LK#ArathQuest","GLOBAL",10) Global("LK#ArathBylanna","LOCALS",0)~ + @1825 + t13
END

APPEND BYLANNA

IF ~~ t4.1
  SAY @1826
  ++ @1827 + t4.2
  ++ @1828 + t4.2
  ++ @1829 + t4.2
  ++ @1830 + t4.4
END

IF ~~ t4.2
  SAY @1831
  IF ~~ + t4.3
END

IF ~~ t4.3
  SAY @1832
  = @1833
  ++ @1834 + t4.5
  ++ @1835 + t4.5
  ++ @1836 + t4.5
  ++ @1837 + t4.6
END

IF ~~ t4.4
  SAY @1838
  IF ~~ + t4.3
END

IF ~~ t4.5
  SAY @1839
  = @1840
  = @1841
  = @1842
  ++ @1843 + t4.7
  ++ @1844 + t4.7
  ++ @1845 + t4.8
END

IF ~~ t4.6
  SAY @1846
  IF ~~ + t4.5
END

IF ~~ t4.7
  SAY @1847
  = @1848
  = @1849
  ++ @1850 + t4.9
  ++ @1851 + t4.12
  ++ @1171 + t4.10
  ++ @1852 + t4.11
END

IF ~~ t4.8
  SAY @1853
  IF ~~ + t4.7
END

IF ~~ t4.9
  SAY @1854
  IF ~~ EXIT
END

IF ~~ t4.10
  SAY @1855
  IF ~~ + t4.13
END

IF ~~ t4.11
  SAY @1856
  IF ~~ + t4.13
END

IF ~~ t4.12
  SAY @1214
  IF ~~ + t4.13
END
  
IF ~~ t4.13
  SAY @1857
  IF ~~ DO ~AddJournalEntry(@1858,QUEST)~ EXIT
END

IF ~~ t7.4
  SAY @1859
  ++ @1860 DO ~SetGlobal("LK#ArathQuestQuicksilver","GLOBAL",4)~ + t7.5
  ++ @1861 DO ~SetGlobal("LK#ArathQuestQuicksilver","GLOBAL",4)~ + t7.7
  ++ @1862 + t7.6
END

IF ~~ t7.5
  SAY @1863
  IF ~~ EXIT
END

IF ~~ t7.6
  SAY @1864
  ++ @1865 + t7.8
  ++ @1866 DO ~SetGlobal("LK#ArathQuestQuicksilver","GLOBAL",4)~ + t7.9
  ++ @1867 DO ~SetGlobal("LK#ArathQuestQuicksilver","GLOBAL",4)~ + t7.5
END

IF ~~ t7.7
  SAY @1868
  IF ~~ EXIT
END

IF ~~ t7.8
  SAY @1869
  ++ @1870 DO ~SetGlobal("LK#ArathQuestQuicksilver","GLOBAL",4)~ + t7.10
  ++ @1871 + t7.11
  ++ @1872 + t7.11
END

IF ~~ t7.9
  SAY @1873
  IF ~~ EXIT
END

IF ~~ t7.10
  SAY @1874
  IF ~~ EXIT
END

IF ~~ t7.11
  SAY @1875
  IF ~~ EXIT
END

IF ~~ t13
  SAY @1876
  = @1877
  ++ @1878 + t13.1
  ++ @1879 + t13.1
  ++ @1880 + t13.2
END

IF ~~ t13.1
  SAY @1881
  IF ~~ DO ~SetGlobal("LK#ArathBylanna","LOCALS",1) GiveGoldForce(500)~ EXIT
END

IF ~~ t13.2
  SAY @1882
  IF ~~ + t13.1
END

IF ~~ t13.3
  SAY @1883
  = @1884
  ++ @1885 + t13.4
  ++ @1886 + t13.5
  ++ @1887 + t13.6
END

IF ~~ t13.4
  SAY @1888
  IF ~~ DO ~SetGlobal("LK#ArathGuide","GLOBAL",1) AddJournalEntry(@1889,QUEST)~ EXIT
END

IF ~~ t13.5
  SAY @1890
  IF ~~ + t13.4
END

IF ~~ t13.6
  SAY @1891
  IF ~~ + t13.4
END

END

BEGIN LK#ARGUI

IF ~Global("timetogo","LOCALS",0)~ gu1
  SAY @1892
  = @1893
  ++ @45 + gu1.1
  ++ @1894 + gu1.3
  ++ @1895 + gu1.2
END

IF ~~ gu1.1
  SAY @1896
  IF ~~ DO ~SetGlobal("timetogo","LOCALS",1)
            ActionOverride("LK#ARGUI",LeaveAreaLUA("LK#AR1","",[1655.1025],8))
            ActionOverride(Player1,LeaveAreaLUA("LK#AR1","",[1606.1044],8))
            ActionOverride(Player2,LeaveAreaLUA("LK#AR1","",[1468.1089],8))
            ActionOverride(Player3,LeaveAreaLUA("LK#AR1","",[1510.1123],8))
            ActionOverride(Player4,LeaveAreaLUA("LK#AR1","",[1589.1129],8))
            ActionOverride(Player5,LeaveAreaLUA("LK#AR1","",[1659.1115],8))
            ActionOverride(Player6,LeaveAreaLUA("LK#AR1","",[1719.1092],8))~ EXIT
END

IF ~~ gu1.2
  SAY @1897
  IF ~~ EXIT
END

IF ~~ gu1.3
  SAY @1898
  = @1899
  ++ @1900 + gu1.1
  ++ @1901 + gu1.2
END

IF ~Global("timetogo","LOCALS",1)~ gu2
  SAY @1902
  ++ @1903 + gu2.1
  ++ @1904 + gu2.2
  ++ @1905 + gu2.3
  ++ @1906 + gu2.4
END

IF ~~ gu2.1
  SAY @1907
  IF ~~ + gu2.5
END

IF ~~ gu2.2
  SAY @1908
  IF ~~ + gu2.5
END

IF ~~ gu2.3
  SAY @1909
  IF ~~ + gu2.5
END

IF ~~ gu2.4
  SAY @1910
  IF ~~ + gu2.5
END

IF ~~ gu2.5
  SAY @1911
  IF ~~ DO ~SetGlobal("timetogo","LOCALS",2) EscapeAreaDestroy(3)~ EXIT
END


APPEND LK#ARATJ 

IF ~Global("LK#ArathQuest","GLOBAL",7)~ t6.1
  SAY @1912
  = @1913
  = @1914
  = @1915
  ++ @1916 DO ~SetGlobal("LK#ArathQuest","GLOBAL",8)~ + t6.2
  ++ @1917 DO ~SetGlobal("LK#ArathQuest","GLOBAL",8)~ + t6.3
  ++ @1918 DO ~SetGlobal("LK#ArathQuest","GLOBAL",8)~ + t6.4
END

IF ~~ t6.2
  SAY @1252
  IF ~~ + t6.4
END

IF ~~ t6.3
  SAY @1919
  = @1920
  IF ~~ + t6.4
END

IF ~~ t6.4
  SAY @1921
  = @1922
  ++ @1923 + t6.5
  ++ @1924 + t6.6
  ++ @1925 + t6.7
END

IF ~~ t6.5
  SAY @1926
  = @1927
  = @1928
  ++ @1929 + t6.8
  ++ @1930 + t6.8
  ++ @1931 + t6.9
END

IF ~~ t6.6
  SAY @1932
  = @1933
  IF ~~ + t6.5
END

IF ~~ t6.7
  SAY @1934
  = @1933
  IF ~~ + t6.5
END

IF ~~ t6.8
  SAY @1935
  IF ~~ DO ~AddJournalEntry(@1936,QUEST)~ EXIT
END

IF ~~ t6.9
  SAY @1937
  = @1938
  IF ~~ DO ~SetGlobal("LK#ArathJoined","LOCALS",0) LeaveParty() EscapeArea() SetGlobal("LK#ArathQuest","GLOBAL",20)       EraseJournalEntry(@1675)
      EraseJournalEntry(@1686)
      EraseJournalEntry(@1695)
      EraseJournalEntry(@1761)
      EraseJournalEntry(@1813)
      EraseJournalEntry(@1858)
      EraseJournalEntry(@1889)
      AddJournalEntry(@1939,QUEST)~ EXIT
END

END

BEGIN LK#ARGD1
BEGIN LK#ARGD2

CHAIN IF ~NumTimesTalkedTo(0)~ THEN LK#ARGD1 t8
  @1940
  == LK#ARSLV @1941
  == LK#ARGD1 @1942
  == LK#ARGD2 @1943
  DO ~ActionOverride("LK#ARGD1",Enemy()) ActionOverride("LK#ARGD2",Enemy())~
EXIT

BEGIN LK#ARSLV

IF ~!Global("LK#AR1_talk","GLOBAL",1)~ t8.1
  SAY @1944
  = @1945
  ++ @1946 + t8.2
  ++ @1947 + t8.3
  ++ @1948 + t8.4
  ++ @1949 + t8.5
END

IF ~~ t8.2
  SAY @1950
  IF ~~ DO ~SetGlobal("LK#ArathQuest_slavesescape","GLOBAL",1) SetGlobal("LK#AR1_talk","GLOBAL",1) EscapeAreaDestroy(3)~ EXIT
END

IF ~~ t8.3
  SAY @1950
  IF ~~ DO ~SetGlobal("ArathQuest_slavesfight","GLOBAL",1) SetGlobal("LK#AR1_talk","GLOBAL",1) EscapeAreaDestroy(3)~ EXIT
END

IF ~~ t8.4
  SAY @1951
  IF ~~ DO ~SetGlobal("LK#ArathQuest_slavesescape","GLOBAL",1) SetGlobal("LK#AR1_talk","GLOBAL",1) MoveToPoint([1952.638]) Wait(1) DestroySelf()~ EXIT
END

IF ~~ t8.5
  SAY @1952
  ++ @1953 + t8.6
  ++ @1954 EXTERN LK#ARATJ t8.7
END

IF ~~ t8.6
  SAY @1955
  IF ~~ DO ~SetGlobal("LK#ArathQuest_slavesescape","GLOBAL",1) SetGlobal("LK#AR1_talk","GLOBAL",1) MoveToPoint([1952.638]) Wait(1) DestroySelf()~ EXIT
END

CHAIN LK#ARATJ t8.7
  @1956
  == NALIAJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @1957
  == IMOEN2J IF ~InParty("Imoen") !StateCheck("Imoen",CD_STATE_NOTVALID)~ THEN @1958
  == JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @1959
  == KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @1960 
  == AERIEJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @1961
  == MAZZYJ IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @1962
  == ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @1963
  == VALYGARJ IF ~InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @1964
  == MINSCJ IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @1965
END
  ++ @1966 EXTERN LK#ARATJ t8.8
  ++ @1967 EXTERN LK#ARATJ t8.9

CHAIN LK#ARATJ t8.8
  @1968
  DO ~SetGlobal("LK#AR1_talk","GLOBAL",1) ActionOverride("LK#ARSLV",EscapeArea()~
EXIT

CHAIN LK#ARATJ t8.9
  @1969
  DO ~SetGlobal("LK#ArathQuest_slavesescape","GLOBAL",1)
      SetGlobal("LK#AR1_talk","GLOBAL",1)
      ActionOverride("LK#ARSLV",Enemy())
      ActionOverride("Nalia",LeaveParty())
      ActionOverride("Nalia",Enemy())
      ActionOverride("Jaheira",LeaveParty()) 
      ActionOverride("Jaheira",Enemy())
      ActionOverride("Keldorn",LeaveParty()) 
      ActionOverride("Keldorn",Enemy())
      ActionOverride("Aerie",LeaveParty()) 
      ActionOverride("Aerie",Enemy())
      ActionOverride("Mazzy",LeaveParty())
      ActionOverride("Mazzy",Enemy())
      ActionOverride("Anomen",LeaveParty()) 
      ActionOverride("Anomen",Enemy())
      ActionOverride("Valygar",LeaveParty()) 
      ActionOverride("Valygar",Enemy())
      ActionOverride("Minsc",LeaveParty()) 
      ActionOverride("Minsc",Enemy())
      ActionOverride("Arath",LeaveParty())
      ActionOverride("Arath",Enemy())~
EXIT


BEGIN LK#ARBOS

// Boss slaver dialogue
CHAIN IF ~NumTimesTalkedTo(0)~ THEN LK#ARBOS t9
  @1970
  == LK#ARATJ @1971
  == LK#ARBOS @1972
  == LK#ARATJ @1973
  == LK#ARBOS @1974
  = @1975
  == LK#ARATJ @1976
  == LK#ARBOS @1977
  == LK#ARATJ @1978
  == LK#ARBOS @1979
  == LK#ARATJ @1980
  DO ~SetGlobal("LK#ArathQuest","GLOBAL",9) SetGlobal("LK#AR2_attack","LK#AR2",1) ActionOverride("LK#ARBOS",Enemy())~
EXIT

CHAIN IF ~Global("LK#ArathQuest","GLOBAL",9)~ THEN LK#ARBOS t10
  @1981
  == LK#ARATJ @1982
  == LK#ARBOS @1983
  == LK#ARATJ @1984
END
  ++ @1985 EXTERN LK#ARBOS t10.1
  ++ @1986 EXTERN LK#ARBOS t10.3
  ++ @1987 EXTERN LK#ARBOS t10.2
  ++ @1988 EXTERN LK#ARBOS t10.2

CHAIN LK#ARBOS t10.1
  @1989
  == LK#ARATJ @1990
  == LK#ARBOS @1991
  == LK#ARATJ @1992
  == LK#ARBOS @1993
  = @1994
  DO ~AddJournalEntry(@1995,QUEST) SetGlobal("LK#ArathQuestInfo","GLOBAL",1) ChangeEnemyAlly(Myself,NEUTRAL) MoveToPoint([2273.1610]) DestroySelf()~
EXIT

CHAIN LK#ARBOS t10.2
  @1996
  = @1997
  DO ~AddJournalEntry(@1998,QUEST) DestroyItem("minhp1") Attack(Player1)~
EXIT

CHAIN LK#ARBOS t10.3
  @1999
END
  ++ @2000 EXTERN LK#ARBOS t10.2
  ++ @2001 EXTERN LK#ARBOS t10.1
  ++ @2002 EXTERN LK#ARBOS t10.1

APPEND LK#ARATJ

IF ~Global("LK#ArathQuest","GLOBAL",9)~ t11
  SAY @2003
  = @2004
  IF ~~ DO ~SetGlobal("LK#ArathQuest","GLOBAL",10)~ EXIT
END

END

CHAIN IF ~Global("LK#ArathQuest","GLOBAL",10)~ THEN LK#ARWRE t12
  @2005
  == LK#ARATJ @2006
  == LK#ARWRE @2007
  == LK#ARATJ @2008
  == LK#ARWRE @2009
  == LK#ARATJ @2010
  = @892
  == LK#ARWRE @2011
  == LK#ARATJ @1252
  == LK#ARWRE @2012
  DO ~SetGlobal("LK#ArathQuest","GLOBAL",11) ClearAllActions() StartCutSceneMode() StartCutScene("lk#arct2")~ /*cutscene -- she casts a blessing on the party*/
EXIT

CHAIN IF ~Global("LK#ArathQuest","GLOBAL",11)~ THEN LK#ARWRE t12.1
  @2013
  == LK#ARATJ @2014
  == LK#ARWRE @2015
  == LK#ARATJ @2016
  == LK#ARWRE @2017
  == LK#ARATJ @2018
  DO ~SetGlobal("LK#ArathQuest","GLOBAL",12) 
      EraseJournalEntry(@1675)
      EraseJournalEntry(@1686)
      EraseJournalEntry(@1695)
      EraseJournalEntry(@1761)
      EraseJournalEntry(@1813)
      EraseJournalEntry(@1858)
      EraseJournalEntry(@1936)
      EraseJournalEntry(@1995)
      EraseJournalEntry(@1998)
      EraseJournalEntry(@1889)
      AddJournalEntry(@2019,QUEST_DONE) ActionOverride("lk#arwre",EscapeAreaDestroy(5))~
EXIT

APPEND LK#ARATJ

IF ~Global("LK#ArathQuest","GLOBAL",12)~ x
  SAY @2020
  = @2021
  IF ~~ DO ~SetGlobal("LK#ArathQuest","GLOBAL",13) RealSetGlobalTimer("LK#ArathQuestTalkTimer","GLOBAL",3600)~ EXIT
END

IF ~Global("LK#ArathQuest","GLOBAL",14) Global("LK#ArathQuestInfo","GLOBAL",1)~ t14
  SAY @2022
  ++ @2023 DO ~SetGlobal("LK#ArathQuest","GLOBAL",15)~ + t14.1
  ++ @2024 DO ~SetGlobal("LK#ArathQuest","GLOBAL",15)~ + t14.1
  + ~OR(2) CheckStatGT(Player1,12,INT) CheckStatGT(Player1,12,WIS)~ + @2025 DO ~SetGlobal("LK#ArathQuest","GLOBAL",15)~ + t14.4
  ++ @2026 DO ~SetGlobal("LK#ArathQuest","GLOBAL",15)~ + t14.2
  ++ @2027 DO ~SetGlobal("LK#ArathQuest","GLOBAL",15)~ + t14.3
END

IF ~~ t14.1
  SAY @2028
  IF ~~ + t14.4
END

IF ~~ t14.2
  SAY @2022
  IF ~~ + t14.4
END

IF ~~ t14.3
  SAY @2029
  = @2030
  IF ~~ EXIT
END

IF ~~ t14.4
  SAY @2031
  ++ @2032 + t14.5
  ++ @2033 + t14.5
  ++ @2034 + t14.5
  + ~OR(2) CheckStatGT(Player1,13,INT) CheckStatGT(Player1,13,WIS)~ + @2035 + t14.5
END

IF ~~ t14.5
  SAY @2036
  = @2037
  ++ @2038 + t14.6
  ++ @2039 + t14.7
  ++ @2040 + t14.8
  ++ @2041 + t14.9
END

IF ~~ t14.6
  SAY @2018
  IF ~~ + t14.10
END

IF ~~ t14.7
  SAY @2042
  = @2043
  IF ~~ + t14.10
END

IF ~~ t14.8
  SAY @2044
  IF ~~ + t14.10
END

IF ~~ t14.9
  SAY @2045
  IF ~~ EXIT
END
  
IF ~~ t14.10
  SAY @2046
  IF ~~ EXIT
END

IF ~Global("LK#ArathQuest","GLOBAL",14) !Global("LK#ArathQuestInfo","GLOBAL",1)~ t15
  SAY @2047
  ++ @2048 DO ~SetGlobal("LK#ArathQuest","GLOBAL",15)~ + t15.3
  ++ @1086 DO ~SetGlobal("LK#ArathQuest","GLOBAL",15)~ + t15.3
  ++ @2049 DO ~SetGlobal("LK#ArathQuest","GLOBAL",15)~ + t15.1
  ++ @1303 DO ~SetGlobal("LK#ArathQuest","GLOBAL",15)~ + t15.2
END

IF ~~ t15.1
  SAY @2050
  IF ~~ + t15.3
END

IF ~~ t15.2
  SAY @2051
  IF ~~ + t15.3
END

IF ~~ t15.3
  SAY @2052
  = @2053
  ++ @2054 + t15.4
  ++ @2055 + t15.5
  ++ @2056 + t15.6
  ++ @2057 + t15.7
END

IF ~~ t15.4
  SAY @2018
  IF ~~ + t15.8
END

IF ~~ t15.5
  SAY @2058
  IF ~~ + t15.8
END

IF ~~ t15.6
  SAY @2059
  = @2060
  IF ~~ + t15.8
END

IF ~~ t15.7
  SAY @2061
  IF ~~ EXIT
END

IF ~~ t15.8
  SAY @2062
  ++ @2063 + t15.9
  ++ @2064 + t15.10
  ++ @2065 + t15.11
  ++ @2066 + t15.12
END

IF ~~ t15.9
  SAY @325
  IF ~~ + t15.13
END

IF ~~ t15.10
  SAY @2067
  = @2068
  IF ~~ + t15.13
END

IF ~~ t15.11
  SAY @2069
  IF ~~ + t15.13
END

IF ~~ t15.12
  SAY @2070
  IF ~~ + t15.13
END

IF ~~ t15.13
  SAY @2071
  IF ~~ EXIT
END

END