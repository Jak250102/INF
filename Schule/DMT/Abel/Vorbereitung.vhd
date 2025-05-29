MODULE aktuell

TITLE 'aktuell'

@dcset
 
DECLARATIONS
takt PIN 88;
S1, S2 PIN 30,31;
S3, S4 PIN 19,20;

ff1,ff2,ff3 PIN 61,60,59 ISTYPE 'BUFFER, REG';

Mein PIN 58;

set1 =[S2,S1];
set2 =[S4,S3];
ff = [ff1, ff2, ff3];

state IDLE=0;
stateDrive =1;


EQUATIONS
ff.clk = takt;


STATE_DIAGRAM ff;
STATE IDLE:
IF set1 != set2 THEN stateDrive ELSE IDLE;
STATE Drive:
Mein = 1;
goto IDLE;


End