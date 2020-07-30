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