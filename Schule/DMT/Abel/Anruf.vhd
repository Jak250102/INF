MODULE anrufbeantworter
TITLE 'Anrufbeantworter mit WHEN-THEN-ELSE'
 
@dcset
 
DECLARATIONS
  takt    PIN 88;           " Takt-Eingang
  K       PIN 30;           " Klingelsignal
  B       PIN 31;           " Bandende
  T       PIN 59;           " Timeout
  Qa, Qb  PIN 60,61 ISTYPE 'REG';  " Zustandsregister (2 Bit)
  AB      PIN 55 ISTYPE 'COM';     " Ausgang: Anrufbeantworter aktiv
 
  zustand = [Qa, Qb];
 
  Idle    = ^b00;
  Einmal  = ^b01;
  Zweimal = ^b10;
 
EQUATIONS
  zustand.CLK = takt;
 
  " KORREKTE WHEN-THEN-ELSE-Syntax mit Blöcken und Semikolon!
  WHEN (T) THEN { 
    zustand := Idle;
  }
  ELSE WHEN (zustand == Idle) & (K) THEN {
    zustand := Einmal;
  }
  ELSE WHEN (zustand == Einmal) & (K) THEN {
    zustand := Zweimal;
  }
  ELSE WHEN (zustand == Zweimal) & (B) THEN {
    zustand := Idle;
  }
  ELSE {
    zustand := zustand;
  }
 
  AB = (zustand == Zweimal);
 
END