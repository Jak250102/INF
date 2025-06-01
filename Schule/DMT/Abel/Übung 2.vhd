MODULE aktuell

TITLE 'aktuell'


@dcset

DECLARATIONS
takt PIN 88; 
S1,S2 PIN 30,31;
A, B, C, D, E, F, G Pin 81, 79, 80, 85, 87, 84, 86 ISTYPE 'BUFFER,COM';

ff1,ff2,ff3,ff4 PIN 58,59,60,61 ISTYPE 'BUFFER, REG';

ff = [ff1,ff2,ff3,ff4];" SET"

EQUATIONS
ff.clk = takt; "Takt auf alle ffs im SET legen "
When S1 = 0 and S2 = 0 then
  ff1 = ff1 + 1; " Vorwaerts zaehlen "
When S1 = 1 and S2 = 0 then
  ff1 = ff1; " Zaehler stoppt "
When S1 = 0 and S2 = 1 then
  ff1 = ff1 - 1; " Rueckwaerts zaehlen "
When others then
  ff1 = ff1; " Keine Aenderung "
END EQUATIONS



TRUTH_TABLE (ff -> [A, B, C, D, E, F, G])
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
