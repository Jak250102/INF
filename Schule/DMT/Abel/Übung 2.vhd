MODULE zaehler_mit_schalter
 
TITLE 'Synchronzähler 0–7 mit Vor-/Rückwärts und Haltefunktion'
 
DECLARATIONS
  takt         PIN 13;                " Gültiger Clock-Pin (ggf. anpassen)"
  s1, s2       PIN 30, 31;            " Steuereingänge"
  ff0..ff2     PIN 61, 60, 59 ISTYPE 'REG';
  ff = [ff2, ff1, ff0];               " Zählerbits als Set"
 
  a, b, c, d, e, f, g PIN 67,65,66,70,72,69,71 ISTYPE 'COM';  " 7-Segment-Ausgänge (kombinatorisch!)"
 
EQUATIONS
  ff.clk = takt;
 
  " Zählersteuerung: Halten, Vorwärts, Rückwärts"
  WHEN (s1 == 0) THEN ff := ff;                 " Halten"
  ELSE WHEN (s1 == 1) & (s2 == 1) THEN ff := ff + 1;  " Vorwärts"
  ELSE WHEN (s1 == 1) & (s2 == 0) THEN ff := ff - 1;  " Rückwärts"
 
  " 7-Segment-Dekodierung "
TRUTH_TABLE (ff -> [a,b,c,d,e,f,g])
    0 -> [1,1,1,1,1,1,0];
    1 -> [0,1,1,0,0,0,0];
    2 -> [1,1,0,1,1,0,1];
    3 -> [1,1,1,1,0,0,1];
    4 -> [0,1,1,0,0,1,1];
    5 -> [1,0,1,1,0,1,1];
    6 -> [1,0,1,1,1,1,1];
    7 -> [1,1,1,0,0,0,0];
 
END