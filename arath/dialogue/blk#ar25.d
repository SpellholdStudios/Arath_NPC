BEGIN BLK#AR25

// Aerie ToB
CHAIN IF ~InParty("Arath")
See("Arath")
!StateCheck("Arath",CD_STATE_NOTVALID)
!StateCheck("Aerie",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathToBAerie","GLOBAL",0)~ THEN BAERIE25 a1
  @0
  DO ~SetGlobal("LK#ArathToBAerie","GLOBAL",1)~
  == BLK#AR25 @1
  == BAERIE25 @2
  == BLK#AR25 @3
  = @4
  == BAERIE25 @5
  = @6
  == BLK#AR25 @7
  == BAERIE25 @8
  == BLK#AR25 @9
EXIT

// CN Anomen ToB:
CHAIN IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Arath",CD_STATE_NOTVALID)
!StateCheck("Anomen",CD_STATE_NOTVALID)
CombatCounter(0)
Alignment("Anomen",CHAOTIC_NEUTRAL)
Global("LK#ArathToBAnomen","GLOBAL",0)~ THEN BLK#AR25 an1
  @10
  DO ~SetGlobal("LK#ArathToBAnomen","GLOBAL",1)~
  == BANOME25 @11
  == BLK#AR25 @12
  == BANOME25 @13
  == BLK#AR25 @14
  == BANOME25 @15
  == BLK#AR25 @16
  == BANOME25 @17
EXIT

// LG Anomen ToB:
CHAIN IF ~InParty("Arath")
See("Arath")
!StateCheck("Arath",CD_STATE_NOTVALID)
!StateCheck("Anomen",CD_STATE_NOTVALID)
CombatCounter(0)
Alignment("Anomen",LAWFUL_GOOD)
Global("LK#ArathToBAnomen","GLOBAL",0)~ THEN BANOME25 an2
  @18
  DO ~SetGlobal("LK#ArathToBAnomen","GLOBAL",1)~
  == BLK#AR25 @19
  == BANOME25 @20
  = @21
  == BLK#AR25 @22
EXIT

// Cernd ToB
CHAIN IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathToBCernd","GLOBAL",0)~ THEN BLK#AR25 c1
  @23
  DO ~SetGlobal("LK#ArathToBCernd","GLOBAL",1)~
  == BCERND25 @24
  == BLK#AR25 @25
  == BCERND25 @26
EXIT

// Edwin ToB
CHAIN IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathToBEdwin","GLOBAL",0)~ THEN BLK#AR25 e1
  @27
  DO ~SetGlobal("LK#ArathToBEdwin","GLOBAL",1)~
  == BEDWIN25 @28
  = @29
  == BLK#AR25 @30
  == BEDWIN25 @31
  == BLK#AR25 @32
  = @33
  == BEDWIN25 @34
  = @35
  = @36
  == BLK#AR25 @37
  == BEDWIN25 @38
  == BLK#AR25 @39
EXIT

// Haer'Dalis ToB
CHAIN IF ~InParty("Arath")
See("Arath")
!StateCheck("Arath",CD_STATE_NOTVALID)
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathToBHaer","GLOBAL",0)~ THEN BHAERD25 h1
  @40
  DO ~SetGlobal("LK#ArathToBHaer","GLOBAL",1)~
  == BLK#AR25 @41
  == BHAERD25 @42
  == BLK#AR25 @43
  == BHAERD25 @44
  == BLK#AR25 @45
  == BHAERD25 @46
EXIT

// Imoen ToB
CHAIN IF ~InParty("Arath")
See("Arath")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathToBImoen","GLOBAL",0)~ THEN BIMOEN25 i1
  @47
  DO ~SetGlobal("LK#ArathToBImoen","GLOBAL",1)~
  == BLK#AR25 @48
  == BIMOEN25 @49
  == BLK#AR25 @50
  == BIMOEN25 @51
  == BLK#AR25 @52
  == BIMOEN25 @53
  == BLK#AR25 @54
  == BIMOEN25 @55
EXIT

// Jaheira ToB
CHAIN IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
AreaType(CITY)
Global("LK#ArathToBJaheira","GLOBAL",0)~ THEN BLK#ARAT j1
  @56
  DO ~SetGlobal("LK#ArathToBJaheira","GLOBAL",1)~
  == BJAHEI25 @57
  == BLK#AR25 @58
  == BJAHEI25 @59
  == BLK#AR25 @60
  == BJAHEI25 @61
  == BLK#AR25 @62
  == BJAHEI25 @63
EXIT

// Jan ToB
CHAIN IF ~InParty("Arath")
See("Arath")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathToBJan","GLOBAL",0)~ THEN BJAN25 i2
  @64
  DO ~SetGlobal("LK#ArathToBJan","GLOBAL",1)~
  == BLK#AR25 @65
  == BJAN25 @66
  == BLK#AR25 @67
  = @68
  == BJAN25 @69
EXIT

// Keldorn ToB
CHAIN IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathToBKeldorn","GLOBAL",0)~ THEN BLK#AR25 k1
  @70
  DO ~SetGlobal("LK#ArathToBKeldorn","GLOBAL",1)~
  == BKELDO25 @71
  == BLK#AR25 @72
  == BKELDO25 @73
  == BLK#AR25 @74
  == BKELDO25 @75
  = @76
  = @77
  == BLK#AR25 @78
  == BKELDO25 @79
  == BLK#AR25 @80
  = @81
  == BKELDO25 @82
EXIT

//(if Sarevok banter has happened)
CHAIN IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathToBSarevok","GLOBAL",1)
Global("LK#ArathToBKeldornSar","GLOBAL",0)~ THEN BLK#AR25 k2
  @83
  DO ~SetGlobal("LK#ArathToBKeldornSar","GLOBAL",1)~
  == BKELDO25 @84
  == BLK#AR25 @85
  == BKELDO25 @86
  == BLK#AR25 @87
  == BKELDO25 @88
  == BLK#AR25 @89
EXIT

// Korgan ToB
CHAIN IF ~InParty("Arath")
See("Arath")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathToBKorgan","GLOBAL",0)~ THEN BKORGA25 kn1
  @90
  DO ~SetGlobal("LK#ArathToBKorgan","GLOBAL",1)~
  == BLK#AR25 @91
  == BKORGA25 @92
  == BLK#AR25 @93
EXIT

// Mazzy ToB
CHAIN IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathToBMazzy","GLOBAL",0)~ THEN BLK#AR25 m1
  @94
  DO ~SetGlobal("LK#ArathToBMazzy","GLOBAL",1)~
  == BMAZZY25 @95
  == BLK#AR25 @96
  == BMAZZY25 @97
  == BLK#AR25 @98
  = @99
  == BMAZZY25 @100
  = @101
EXIT

// Minsc ToB
CHAIN IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathToBMinsc","GLOBAL",0)~ THEN BLK#AR25 mn1
  @102
  DO ~SetGlobal("LK#ArathToBMinsc","GLOBAL",1)~
  == BMINSC25 @103
  == BLK#AR25 @104
  == BMINSC25 @105
  == BLK#AR25 @106
  == BMINSC25 @107
  == BLK#AR25 @108
  == BMINSC25 @109
EXIT

// Nalia ToB
CHAIN IF ~InParty("Arath")
See("Arath")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathToBNalia","GLOBAL",0)~ THEN BNALIA25 n1
  @110
  DO ~SetGlobal("LK#ArathToBNalia","GLOBAL",1)~
  == BLK#AR25 @111
  == BNALIA25 @112
  == BLK#AR25 @113
  == BNALIA25 @114
EXIT

// Sarevok ToB
CHAIN IF ~InParty("Arath")
See("Arath")
!StateCheck("Sarevok",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathToBSarevok","GLOBAL",0)~ THEN BSAREV25 s1
  @115
  DO ~SetGlobal("LK#ArathToBSarevok","GLOBAL",1)~
  == BLK#AR25 @116
  == BSAREV25 @117
  == BLK#AR25 @118
  == BSAREV25 @119
  == BLK#AR25 @120
  = @121
  == BSAREV25 @122
  == BLK#AR25 @123
EXIT

// Valygar ToB
CHAIN IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("Arath",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#ArathToBValygar","GLOBAL",0)~ THEN BLK#AR25 v1
  @124
  DO ~SetGlobal("LK#ArathToBValygar","GLOBAL",1)~
  == BVALYG25 @125
  == BLK#AR25 @126
  = @127
  == BVALYG25 @128
  == BLK#AR25 @129
  == BVALYG25 @130
  == BLK#AR25 @131
  == BVALYG25 @132
  == BLK#AR25 @133
EXIT
