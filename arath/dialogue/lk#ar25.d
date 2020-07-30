BEGIN LK#AR25

EXTEND_TOP FATESP 6 #1
  + ~!Dead("Arath")
      Global("LK#ArathSummoned","GLOBAL",0)~ + @0
  DO ~SetGlobal("LK#ArathSummoned","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1999.1228]) Wait(2) CreateCreature("lk#ar25",[1999.1228],1)~ GOTO 8
  + ~!Dead("Arath")
      Global("LK#ArathSummoned","GLOBAL",0)
      OR(3)
        Race(Player1,ELF)
        Race(Player1,HALF_ELF)
        Race(Player1,HUMAN)~ + @1
  DO ~SetGlobal("LK#ArathRomanceActive","GLOBAL",2) SetGlobal("LK#ArathSummoned","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1999.1228]) Wait(2) CreateCreature("lk#ar25",[1999.1228],1)~ GOTO 8
END

APPEND LK#AR25

IF ~NumTimesTalkedTo(0) !Global("LK#ArathRomanceActive","GLOBAL",2)~ j
  SAY @2
  = @3
  ++ @4 + j.1
  ++ @5 + j.2
  ++ @6 + j.3
END

IF ~~ j.1
  SAY @7
  IF ~~ DO ~SetGlobal("LK#ArathToBIntro","GLOBAL",1) SetGlobal("LK#ArathJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ j.2
  SAY @8
  ++ @9 + j.1
  ++ @10 + j.3
END

IF ~~ j.3
  SAY @11
  IF ~~ DO ~SetGlobal("LK#ArathToBIntro","GLOBAL",1) MoveToPoint([2449.1514])~ EXIT
END


IF ~NumTimesTalkedTo(0) Global("LK#ArathRomanceActive","GLOBAL",2)~ j.4
  SAY @12
  = @13
  ++ @14 + j.5
  ++ @5 + j.2
  ++ @15 + j.3
END

IF ~~ j.5
  SAY @16
  IF ~~ DO ~SetGlobal("LK#ArathToBIntro","GLOBAL",1) SetGlobal("LK#ArathJoined","LOCALS",1) JoinParty()~ EXIT
END


IF ~NumTimesTalkedToGT(0)~ j.6
  SAY @17
  ++ @18 + j.7
  ++ @19 + j.8
  ++ @20 + j.9
END

IF ~~ j.7
  SAY @21
  IF ~~ DO ~SetGlobal("LK#ArathJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ j.8
  SAY @22
  IF ~~ EXIT
END

IF ~~ j.9
  SAY @23
  = @24
  = @25
  IF ~~ EXIT
END

END