// ****************************
//                            *
//   Arath start dialogues    *
//                            *
// ****************************
BEGIN LK#ARATH

IF ~Global("LK#ArathMet","AR0406",0)~ j
  SAY @0
  ++ @1 + j.1
  ++ @2 + j.3
  ++ @3 + j.2
  ++ @4 + j.2
  ++ @5 + j.4
  ++ @6 + j.5
END

IF ~~ j.1
  SAY @7
  IF ~~ + j.5
END

IF ~~ j.2
  SAY @8
  IF ~~ + j.5
END

IF ~~ j.3
  SAY @9
  IF ~~ + j.5
END

IF ~~ j.4
  SAY @10
  IF ~~ + j.13
END

IF ~~ j.5
  SAY @11
  ++ @12 + j.6
  ++ @13 + j.6
  ++ @14 + j.7
  ++ @15 + j.8
END

IF ~~ j.6
  SAY @16
  IF ~~ + j.9
END

IF ~~ j.7
  SAY @17
  = @18
  IF ~~ + j.9
END

IF ~~ j.8
  SAY @19
  = @20
  IF ~~ + j.9
END

IF ~~ j.9
  SAY @21
  ++ @22 + j.10
  ++ @23 + j.11
  ++ @24 + j.12
  ++ @25 + j.12
END

IF ~~ j.10
  SAY @26
  IF ~~ + j.13
END

IF ~~ j.11
  SAY @27
  IF ~~ + j.13
END

IF ~~ j.12
  SAY @28
  IF ~~ + j.13
END

IF ~~ j.13
  SAY @29
  = @30
  ++ @31 + j.14
  ++ @32 + j.14
  ++ @33 + j.15
  ++ @34 + j.38
END

IF ~~ j.14
  SAY @35
  = @36
  = @37
  ++ @38 + j.16
  ++ @39 + j.16
  ++ @40 + j.16
  ++ @41 + j.17
  ++ @42 + j.18
END

IF ~~ j.15
  SAY @43
  = @44
  IF ~~ + j.14
END

IF ~~ j.16
  SAY @45
  = @46
  ++ @47 + j.19
  ++ @48 + j.20
END

IF ~~ j.17
  SAY @49
  IF ~~ DO ~SetGlobal("LK#ArathMet","AR0406",1)~ EXIT
END

IF ~~ j.18
  SAY @50
  IF ~~ DO ~SetGlobal("LK#ArathMet","AR0406",1)~ EXIT
END

IF ~~ j.19
  SAY @51
  IF ~~ DO ~SetGlobal("LK#ArathJoined","LOCALS",1) SetGlobal("LK#ArathMet","AR0406",1) JoinParty()~ EXIT
END

IF ~~ j.20
  SAY @52
  IF ~~ DO ~SetGlobal("LK#ArathCCFight","AR0406",1) SetGlobal("LK#ArathMet","AR0406",1)~ EXIT
END

IF ~~ j.38
  SAY @53
  IF ~~ + j.14
END


// Before slaves released
IF ~Global("LK#ArathMet","AR0406",1) !Global("FreeSlaves","GLOBAL",1) !Global("HendakReleased","AR0406",4) !Global("HendakReleased","AR0406",3)~ j.21
  SAY @54
  ++ @55 + j.16
  ++ @56 + j.17
  ++ @57 + j.22
END

IF ~~ j.22
  SAY @58
  IF ~~ EXIT
END


// After slaves released; before slavers killed
IF ~Global("LK#ArathCCTalk","GLOBAL",2)~ j.27
  SAY @59
  = @60
  ++ @61 DO ~SetGlobal("LK#ArathSlaversNotDone","AR0406",1)~ + j.28
  ++ @62 DO ~SetGlobal("LK#ArathSlaversNotDone","AR0406",1)~ + j.29
  ++ @63 DO ~SetGlobal("LK#ArathSlaversNotDone","AR0406",1)~ + j.30
END

IF ~~ j.28
  SAY @64
  = @65
  = @66
  ++ @67 + j.31
  ++ @68 + j.32
  ++ @69 + j.33
END

IF ~~ j.29
  SAY @70
  = @71
  IF ~~ DO ~MoveToPoint([931.1227]) Face(0)~ EXIT
END

IF ~~ j.30
  SAY @72
  = @73
  IF ~~ DO ~MoveToPoint([931.1227]) Face(0)~ EXIT
END

IF ~~ j.31
  SAY @74
  IF ~~ DO ~JoinParty() SetGlobal("LK#ArathJoined","LOCALS",1) SetGlobal("LK#ArathCCSlavers","GLOBAL",2)~ EXIT
END

IF ~~ j.32
  SAY @75
  IF ~~ + j.32
END

IF ~~ j.33
  SAY @76
  ++ @77 + j.31
  ++ @78 + j.34
  ++ @79 + j.35
END

IF ~~ j.34
  SAY @80
  IF ~~ + j.31
END

IF ~~ j.35
  SAY @81
  = @82
  IF ~~ DO ~MoveToPoint([931.1227]) Face(0)~ EXIT
END


// Before slavers killed, if above dialogue has already occurred
IF ~Global("FreeSlaves","GLOBAL",1) Global("LK#ArathMet","AR0406",1) Global("LK#ArathSlaversNotDone","AR0406",1)~ j.36
  SAY @83
  ++ @84 + j.31
  ++ @56 + j.37
  ++ @85 + j.37
END

IF ~~ j.37
  SAY @86
  IF ~~ EXIT
END


// After slavers killed
IF ~Global("LK#ArathMet","AR0406",2)~ j.23
  SAY @87
  ++ @88 + j.24
  ++ @89 + j.25
  ++ @90 + j.26
END

IF ~~ j.24
  SAY @91
  IF ~~ DO ~JoinParty() SetGlobal("LK#ArathJoined","LOCALS",1)~ EXIT
END

IF ~~ j.25
  SAY @92
  IF ~~ + j.26
END

IF ~~ j.26
  SAY @93
  IF ~~ EXIT
END