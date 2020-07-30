BEGIN LK#AR25P

// Kicked out
IF ~Global("LK#ArathJoined","LOCALS",1)~ p1
  SAY @0
  ++ @1 + p1.1
  ++ @2 + p1.2
  ++ @3 + p1.3
END

IF ~~ p1.1
  SAY @4
  IF ~~ DO ~SetGlobal("LK#ArathJoined","LOCALS",0) EscapeAreaMove("AR4500",2449,1514,5)~ EXIT
END

IF ~~ p1.2
  SAY @5
  IF ~~ DO ~SetGlobal("LK#ArathJoined","LOCALS",0)~ EXIT
END

IF ~~ p1.3
  SAY @6
  IF ~~ DO ~JoinParty()~ EXIT
END

// Rejoin pocket plane
IF ~Global("LK#ArathJoined","LOCALS",0) AreaCheck("AR4500")~ j.6
  SAY @7
  ++ @8 + j.7
  ++ @9 + j.8
  ++ @10 + j.9
END

IF ~~ j.7
  SAY @11
  IF ~~ DO ~SetGlobal("LK#ArathJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ j.8
  SAY @12
  IF ~~ EXIT
END

IF ~~ j.9
  SAY @13
  = @14
  = @15
  IF ~~ EXIT
END

// Rejoin elsewhere
IF ~Global("LK#ArathJoined","LOCALS",0) !AreaCheck("AR4500")~ j.23
  SAY @16
  ++ @17 + j.24
  ++ @18 + j.24
  ++ @19 + j.25
  ++ @20 + j.26
END

IF ~~ j.24
  SAY @21
  IF ~~ DO ~JoinParty() SetGlobal("LK#ArathJoined","LOCALS",1)~ EXIT
END

IF ~~ j.25
  SAY @22
  IF ~~ EXIT
END

IF ~~ j.26
  SAY @23
  IF ~~ EXIT
END