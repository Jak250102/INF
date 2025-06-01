MODULE aktuell
TITLE 'aktuell'
 
@dcset
 
DECLARATIONS
  takt      PIN 88;
  b10, b20  PIN 30,31;
  ff1,ff2,ff3 PIN 61,60,59 ISTYPE 'REG';
  GA,MG     PIN 58,56 ISTYPE 'COM';
 
  ff = [ff1, ff2, ff3];  " State-Register (3 Bit)
  " State-Kodierung
  Idle    = ^b000;
  S10c    = ^b001;
  S20c    = ^b010;
  S30c    = ^b011;
  S40c    = ^b100;
  Ausgabe = ^b101;
 
EQUATIONS
  ff.CLK = takt;
 
  " Zustandsübergänge mit WHEN-THEN-ELSE"
  WHEN (ff == Idle)    THEN ff := (b10 & S10c) # (b20 & S20c) # (!b10 & !b20 & Idle);
  WHEN (ff == S10c)   THEN ff := (b10 & S20c) # (b20 & S30c) # (!b10 & !b20 & S10c);
  WHEN (ff == S20c)   THEN ff := (b10 & S30c) # (b20 & S40c) # (!b10 & !b20 & S20c);
  WHEN (ff == S30c)   THEN ff := Ausgabe;
  WHEN (ff == S40c)   THEN ff := Ausgabe;
  WHEN (ff == Ausgabe) THEN ff := Idle;
 
  " Ausgänge"
  MG = (ff == S30c) # (ff == S40c) # (ff == Ausgabe);
  GA = (ff == Ausgabe);
 
END