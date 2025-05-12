MODULE aktuell

TITLE 'binBCDzu7seg'
-- Umwandlung bin - bcd - 7seg - 0-99
-- damit die x genutzt werden können
@dcset

DECLARATIONS
x = X;
-- Eingänge
Dein.Takt.Reset PIN 14.88.16;

-- Ausgänge
Flipflop PIN 56 ISTYPE 'BUFFER,REG';

-- Set
blcd = [blcd3, blcd2, blcd1, blcd0];
bcd  = [b2cd3, b2cd2, b2cd1, b2cd0];

EQUATIONS
Flipflop.CLK = Takt;
Flipflop.D   = Dein;
Flipflop.AR  = Reset;

"TRUTH_TABLE (blcd -> {a1, b1, c1, d1, e1, f1, g1})

END
0 ->  [1,1,1,1,1,1,0];
1 ->  [0,1,1,0,0,0,0];
2 ->  [1,1,0,1,1,0,1];
3 ->  [1,1,1,1,0,0,1];
4 ->  [0,1,1,0,0,1,1];
5 ->  [1,0,1,1,0,1,1];
6 ->  [1,0,x,1,1,1,1];
7 ->  [1,1,1,0,0,0,0];
8 ->  [1,1,1,1,1,1,1];
9 ->  [1,1,1,1,0,1,1];
10 -> [1,1,0,1,1,1,1];
11 -> [1,1,1,1,0,1,1];
12 -> [1,1,1,1,0,1,1];
13 -> [1,0,1,1,0,1,1];
14 -> [1,0,1,1,1,1,1];
15 -> [1,1,1,1,0,1,1];


TRUTH_TABLE (set2 -> [D0, D1,D2])
0 -> [0,0,1];
1 -> [0,1,0];
2 -> [0,1,1];
3 -> [1,0,0];
4 -> [1,0,1];
5 -> [1,1,0];
6 -> [1,1,1];
7 -> [0,0,0];