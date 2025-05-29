MODULE aktuell

TITLE 'aktuell'

@dcset
  
DECLARATIONS
takt PIN 88;
b10, b20 PIN 30,31;
ff1,ff2,ff3 PIN 61,60,59 ISTYPE 'BUFFER, REG';
GA,MG PIN 58,56;

ff = [ff1, ff2, ff3];" SET
Idle=0;
S10c=1;
S20c=2;
S30c=3;
S40c=4;
Ausgabe=5;

EQUATIONS
ff.clk = takt; "Takt auf alle ffs im SET legen 

STATE_DIAGRAM ff;

STATE Idle:
if b10 then S10c else if b20 then S20c else Idle;

STATE S10c:
if b10 then S20c else if b20 then S30c else S10c;

STATE S20c:
if b10 then S30c else if b20 then S40c else S20c;

STATE S30c:
MG = 1;
goto Ausgabe;

STATE S40c: 
MG=1;
goto Ausgabe;

STATE Ausgabe:
MG=1;GA=1;
goto Idle;


END