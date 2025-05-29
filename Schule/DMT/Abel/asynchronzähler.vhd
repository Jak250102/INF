MODULE Speicher

TITLE 'Speicher'

DECLARATIONS
"Eingänge"
Tackt PIN 88;

"Ausgänge"
P1 PIN 56 ISTYPE 'BUFFER,REG';
P2 PIN 55 ISTYPE 'BUFFER,REG';
P3 PIN 54 ISTYPE 'BUFFER,REG';
P4 PIN 53 ISTYPE 'BUFFER,REG';
J, Y, Z, U, V, W, S Pin 81, 79, 80, 85, 87, 84, 86 ISTYPE 'BUFFER,COM';
 
"Hilfsvariablen"
C0, C1, C2, C3 NODE ISTYPE 'BUFFER,COM';

set1=[C3, C2, C1, C0];

EQUATIONS

P1.D = !P1.Q;
P1.CLK = Tackt;

P2.D = !P2.Q;
P2.CLK = P1.Q;

P3.D = !P3.Q;
P3.CLK = P2.Q;

P4.D = !P4.Q;
P4.CLK = P3.Q;

C0 = !P1.Q;
C1 = !P2.Q;
C2 = !P3.Q;
C3 = !P4.Q;

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
