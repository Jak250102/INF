MODULE Speicher

TITLE 'Speicher'

DECLARATIONS
x = .X.;
"Eingänge"
Peter PIN 31;
Takt PIN 88;
Tom PIN 30;

"Ausgänge"
P1 PIN 56 ISTYPE 'BUFFER,REG';
P2 PIN 55 ISTYPE 'BUFFER,REG';
P3 PIN 54 ISTYPE 'BUFFER,REG';
P4 PIN 53 ISTYPE 'BUFFER,REG';
J, Y, Z, U, V, W, S Pin 81, 79, 80, 85, 87, 84, 86 ISTYPE 'BUFFER,COM';

set2=[Peter,Tom,P3.Q, P2.Q, P1.Q];
set1=[P3.Q, P2.Q, P1.Q];

EQUATIONS

P1.CLK = Takt;

P2.CLK = Takt;

P3.CLK = Takt;

TRUTH_TABLE (set1 -> [J, Y, Z, U, V, W, S])
0 ->  [1,1,1,1,1,1,0];
1 ->  [0,1,1,0,0,0,0];
2 ->  [1,1,0,1,1,0,1];
3 ->  [1,1,1,1,0,0,1];
4 ->  [0,1,1,0,0,1,1];
5 ->  [1,0,1,1,0,1,1];
6 ->  [1,0,1,1,1,1,1];
7 ->  [1,1,1,0,0,0,0];


TRUTH_TABLE (set2 -> [P3.D,P2.D,P1.D])
0 ->  [0,0,1];
1 ->  [0,1,0];
2 ->  [0,1,1];
3 ->  [1,0,0];
4 ->  [1,0,1];
5 ->  [1,1,0];
6 ->  [1,1,1];
7 ->  [0,0,0];
8 ->  [1,1,1];
9 ->  [0,0,0];
10 -> [0,0,1];
11 -> [0,1,0];
12 -> [0,1,1];
13 -> [1,0,0];
14 -> [1,0,1];
15 -> [1,1,0];



END