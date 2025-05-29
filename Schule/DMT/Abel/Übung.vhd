MODULE aktuell

TITLE 'aktuell'


@dcset

DECLARATIONS
takt PIN 88; 
S1,S2 PIN 30,31;
A, B, C, D, E, F, G Pin 81, 79, 80, 85, 87, 84, 86 ISTYPE 'BUFFER,COM';

ff1,ff2,ff3 PIN 61,60,59 ISTYPE 'BUFFER, REG';

ff = [S2,S1,ff1,ff2,ff3];" SET"

EQUATIONS
ff.clk = takt; "Takt auf alle ffs im SET legen "

TRUTH_TABLE

(ff :> ff)
0 :> 4;
1 :> 0;
2 :> 6;
3 :> 7;
4 :> 2;
5 :> 3;
6 :> 5;
7 :> 1;

12 :>0 ;
8 :>1 ;
14 :>2 ;
15 :>3 ;
10 :>4 ;
11 :>5 ;
13 :>6 ;
9 :>7 ;


TRUTH_TABLE ([ff1,ff2,ff3] -> [A, B, C, D, E, F, G])
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
  



END
