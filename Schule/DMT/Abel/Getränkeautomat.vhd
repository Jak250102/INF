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
AusgabeMünzeinwurfgesperrt PIN 61 ISTYPE 'BUFFER,COM';
J, Y, Z, U, V, W, S Pin 81, 79, 80, 85, 87, 84, 86 ISTYPE 'BUFFER,COM';

set1.clk=Takt;

set1=[P1,P2,P3];
Idle=[0,0,0];
Tom10c=[0,0,1];
Tom20c=[0,1,0];
genug=[0,1,1];
ausgabe=[1,0,0];


STATE_DIAGRAM set1;
STATE Idle: 
if B10 then Tom10c else if B20 then Tom20c else idle;
STATE Tom10c: 
if B10 then Tom20c else if B20 then genug else Tom10c;
STATE Tom20c: 
if B10 then genug else if B20 then genug else Tom20c;
State genug: 
AusgabeMünzeinwurfgesperrt = 1;

goto ausgabe;
State ausgabe: 
AusgabeMünzeinwurfgesperrt = 1;
Ausgabe = 1;
goto Idle;

EQUATIONS

"TRUTH_TABLE (set1 -> [AusgabeMünzeinwurfgesperrt, Ausgabe])
0 -> [0, 0];
1 -> [0, 0];
2 -> [0, 0];
3 -> [1, 0];
4 -> [1, 1];"

TRUTH_TABLE (set1 -> [J, Y, Z, U, V, W, S])
0 -> [1, 1, 1, 1, 1, 1, 0];
1 -> [0, 1, 1, 0, 0, 0, 0];
2 -> [1, 1, 0, 1, 1, 0, 1];
3 -> [1, 1, 1, 1, 0, 0, 1];
4 -> [0, 1, 1, 0, 0, 1, 1];
5 -> [1, 0, 1, 1, 0, 1, 1];
6 -> [1, 0, 1, 1, 1, 1, 1];
7 -> [1, 1, 1, 0, 0, 0, 0];
8 -> [1, 1, 1, 1, 1, 1, 1];
9 -> [1, 1, 1, 1, 0, 1, 1];
10 -> [1, 1, 0, 1, 1, 1, 1];
11 -> [1, 1, 1, 1, 0, 1, 1];
12 -> [1, 1, 1, 1, 0, 1, 1];
13 -> [1, 0, 1, 1, 0, 1, 1];
14 -> [1, 0, 1, 1, 1, 1, 1];
15 -> [1, 1, 1, 1, 0, 1, 1];



END