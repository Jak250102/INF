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
  e, f, g, h, i, j, k PIN 81,79,80,85,87,84,86 ISTYPE 'COM';  " 7-Segment-Ausgänge (kombinatorisch!)"

EQUATIONS
  ff.clk = takt;

  WHEN (ff >= 44) THEN ff := 0;
  ELSE WHEN (b0 == 1) THEN ff := ff + 1;
  ELSE WHEN (b1 == 1) THEN ff := ff + 2;
  ELSE ff := ff;
 
  GA = (ff >= 4);

 

  " 7-Segment-Dekodierung "
TRUTH_TABLE (ff -> [a,b,c,d,e,f,g])
     0 -> [1,1,1,1,1,1,0, 1,1,1,1,1,1,0];
     1 -> [1,1,1,1,1,1,0, 0,1,1,0,0,0,0];
     2 -> [1,1,1,1,1,1,0, 1,1,0,1,1,0,1];
     3 -> [1,1,1,1,1,1,0, 1,1,1,1,0,0,1];
     4 -> [1,1,1,1,1,1,0, 0,1,1,0,0,1,1];
     5 -> [1,1,1,1,1,1,0, 1,0,1,1,0,1,1];
     6 -> [1,1,1,1,1,1,0, 1,0,1,1,1,1,1];
     7 -> [1,1,1,1,1,1,0, 1,1,1,0,0,0,0];
	 8 -> [1,1,1,1,1,1,0, 1,1,1,1,1,1,1];
	 9 -> [1,1,1,1,1,1,0, 0,1,1,1,0,1,1];
	10 -> [1,1,0,0,0,0,0, 1,1,1,1,1,1,0];
    11 -> [1,1,0,0,0,0,0, 0,1,1,0,0,0,0];
    12 -> [1,1,0,0,0,0,0, 1,1,0,1,1,0,1];
    13 -> [1,1,0,0,0,0,0, 1,1,1,1,0,0,1];
    14 -> [1,1,0,0,0,0,0, 0,1,1,0,0,1,1];
    15 -> [1,1,0,0,0,0,0, 1,0,1,1,0,1,1];
    16 -> [1,1,0,0,0,0,0, 1,0,1,1,1,1,1];
    17 -> [1,1,0,0,0,0,0, 1,1,1,0,0,0,0];
	18 -> [1,1,0,0,0,0,0, 1,1,1,1,1,1,1];
	19 -> [1,1,0,0,0,0,0, 0,1,1,1,0,1,1];
	       
END