MODULE Speicher

TITLE 'Speicher'

DECLARATIONS
x = .X.;
"Eingänge"
B10,B20, PIN 30,31;
Takt PIN 88;


"Ausgänge"
P1 PIN 56 ISTYPE 'BUFFER,REG';
P2 PIN 55 ISTYPE 'BUFFER,REG';
P3 PIN 54 ISTYPE 'BUFFER,REG';

Ausgabe PIN 60 ISTYPE 'BUFFER,COM';

set1.clk=Takt;

set1=[P2,P1,P1];
Idle=[0,0,0];
Tom10c=[0,0,1];
Tom20c=[0,1,0];
genug=[0,1,1];
ausgabe=[1,0,0];


STATE_DIAGRAM set1;
STATE Idle: if B10 then Tom10c else if B20 then Tom20c else idle;
STATE Tom10c: if B10 then Tom20c else if B20 then genug else Tom10c;
STATE Tom20c: if B10 then genug else if B20 then genug else Tom20c;
State genug: goto ausgabe;
State ausgabe: goto Idle;
EQUATIONS







END