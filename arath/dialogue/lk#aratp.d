// Initial
BEGIN LK#ARATP

// Before slavers killed, if above dialogue has already occurred
IF ~Global("FreeSlaves","GLOBAL",1) Global("LK#ArathMet","AR0406",1) Global("LK#ArathSlaversNotDone","AR0406",1) Global("LK#ArathJoined","LOCALS",0)~ j.36
  SAY @2100
  ++ @2101 + j.31
  ++ @2102 + j.37
  ++ @2103 + j.37
END

IF ~~ j.31
  SAY @2104
  IF ~~ DO ~JoinParty() SetGlobal("LK#ArathJoined","LOCALS",1)~ EXIT
END

IF ~~ j.37
  SAY @2105
  IF ~~ EXIT
END


// After slavers killed
IF ~Global("LK#ArathMet","AR0406",2) Global("LK#ArathJoined","LOCALS",0)~ j.23
  SAY @216
  ++ @2107 + j.24
  ++ @2108 + j.25
  ++ @2109 + j.26
END

IF ~~ j.24
  SAY @2110
  IF ~~ DO ~JoinParty() SetGlobal("LK#ArathJoined","LOCALS",1)~ EXIT
END

IF ~~ j.25
  SAY @2111
  IF ~~ + j.26
END

IF ~~ j.26
  SAY @2112
  IF ~~ EXIT
END


// Kicked out
IF ~Global("LK#ArathJoined","LOCALS",1)~ p1
  SAY @2113
  + ~!Global("chapter","GLOBAL",%bg2_chapter_4%) !Global("chapter","GLOBAL",%bg2_chapter_5%)~ + @2114 + p1.1
  ++ @2115 + p1.2
  ++ @2116 + p1.3
END

IF ~~ p1.1
  SAY @2117
  IF ~~ DO ~SetGlobal("LK#ArathJoined","LOCALS",0) EscapeAreaMove("AR0406",931,1227,0)~ EXIT
END

IF ~~ p1.2
  SAY @2118
  IF ~~ DO ~SetGlobal("LK#ArathJoined","LOCALS",0)~ EXIT
END

IF ~~ p1.3
  SAY @2119
  IF ~~ DO ~JoinParty()~ EXIT
END


IF WEIGHT #-1 ~Global("LK#ArathVampire","GLOBAL",4)~ LK#ArathReturn
  SAY @2120
  ++ @2121 DO ~SetGlobal("LK#ArathVampire","GLOBAL",5)~ + LK#ArathReturn_1
  ++ @2122 DO ~SetGlobal("LK#ArathVampire","GLOBAL",5)~ + LK#ArathReturn_1
  ++ @2123 DO ~SetGlobal("LK#ArathVampire","GLOBAL",5)~ + LK#ArathReturn_1
  ++ @2124 DO ~SetGlobal("LK#ArathVampire","GLOBAL",5)~ + LK#ArathReturn_1
END

IF ~~ LK#ArathReturn_1
  SAY @2125
  = @2126
  ++ @2127 + LK#ArathReturn_2
  ++ @2128 + LK#ArathReturn_3
  ++ @2129 + LK#ArathReturn_3
  ++ @2130 + LK#ArathReturn_4
END

IF ~~ LK#ArathReturn_2
  SAY @2131
  IF ~~ + LK#ArathReturn_4
END

IF ~~ LK#ArathReturn_3
  SAY @2132
  IF ~~ + LK#ArathReturn_4
END

IF ~~ LK#ArathReturn_4
  SAY @2133
  = @2134
  = @2135
  ++ @2136 + LK#ArathReturn_5
  ++ @2137 + LK#ArathReturn_8
  ++ @2138 + LK#ArathReturn_6
  ++ @2139 + LK#ArathReturn_7
END

IF ~~ LK#ArathReturn_5
  SAY @2140
  IF ~~ + LK#ArathReturn_9
END

IF ~~ LK#ArathReturn_6
  SAY @2141
  IF ~~ + LK#ArathReturn_9
END

IF ~~ LK#ArathReturn_7
  SAY @2142
  IF ~~ + LK#ArathReturn_9
END

IF ~~ LK#ArathReturn_8
  SAY @2143
  IF ~~ + LK#ArathReturn_9
END

IF ~~ LK#ArathReturn_9
  SAY @2144
  = @2145
  IF ~~ DO ~JoinParty() SetGlobal("LK#ArathJoined","GLOBAL",1) EraseJournalEntry(32084)
EraseJournalEntry(32085)
EraseJournalEntry(16351)
EraseJournalEntry(@1644)
EraseJournalEntry(15710)
EraseJournalEntry(6589)
EraseJournalEntry(@1651)
IncrementGlobal("LK#ArathVampire","GLOBAL",1)~ SOLVED_JOURNAL @2148 EXIT
END


// At Druid Grove
IF WEIGHT #-2 ~!InParty("Arath") AreaCheck("AR1901")~ t1.11
  SAY @2149
  ++ @2150 + t1.12
  ++ @2151 + t1.13
  ++ @2152 + t1.14
END

IF ~~ t1.12
  SAY @2153
  ++ @2154 + t1.13
  ++ @2155 + t1.15
  ++ @2156 + t1.16
END

IF ~~ t1.13
  SAY @2157
  IF ~~ DO ~JoinParty() SetGlobal("LK#ArathJoined","LOCALS",1) SetGlobal("LK#ArathQuestWaiting","GLOBAL",2)~ EXIT
END

IF ~~ t1.14
  SAY @2158
  ++ @2154 + t1.13
  ++ @2155 + t1.15
  ++ @2156 + t1.16
END

IF ~~ t1.15
  SAY @2159
  IF ~~ EXIT
END

IF ~~ t1.16
  SAY @2160
  IF ~~ EXIT
END
