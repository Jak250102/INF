MODULE zaehler_mit_schalter
 
TITLE 'Synchronzähler 0–7 mit Vor-/Rückwärts und Haltefunktion'
 
DECLARATIONS
  takt         PIN 88;                " Gültiger Clock-Pin (ggf. anpassen)"
  b0, b1       PIN 31,30;            " Steuereingänge"
  ff0..ff3     PIN 61, 60, 59, 58 ISTYPE 'REG';
    GA,MG PIN 55,56 ISTYPE 'COM';
  ff = [ff0,ff1, ff2, ff3];
 
Idle=0;
S10c=1;
S20c=2;
S30c=3;
S40c=4;
             " Zählerbits als Set"
 
  a, b, c, d, e, f, g PIN 67,65,66,70,72,69,71 ISTYPE 'COM';  " 7-Segment-Ausgänge (kombinatorisch!)"
 
EQUATIONS
  ff.clk = takt;

  WHEN (ff >= 4) THEN ff := 0;
  ELSE WHEN (b0 == 1) THEN ff := ff + 1;
  ELSE WHEN (b1 == 1) THEN ff := ff + 2;
  ELSE ff := ff;
 
  GA = (ff >= 4);

 

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