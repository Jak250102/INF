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
 
j,y,z,u,v,w,s PIN 81,79,80,85,87,84,86 ISTYPE 'BUFFER, COM';
a,b,c,d,e,f,g PIN 67,65,66,70,72,69,71 ISTYPE 'BUFFER, COM';


EQUATIONS
  ff.clk = takt;

  WHEN (b0 == 1) THEN ff := ff + 1;
  ELSE ff := ff;
 
  GA = (ff >= 4);

 

  " 7-Segment-Dekodierung "
TRUTH_TABLE (ff-> [a,b,c,d,e,f,g])
0 -> 126;
1 -> 48;
2 -> 109;
3 -> 121;
4 -> 51;
5 -> 91;
6 -> 95;
7 -> 112;
8 -> 127;


END