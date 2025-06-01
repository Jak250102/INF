MODULE kaffee_automat
TITLE 'Kaffeeautomat mit WHEN-THEN-ELSE'
 
@dcset
 
DECLARATIONS
  takt      PIN 88;         " Takt-Eingang
  Start     PIN 30;         " Startsignal (Abrechnung)
  B_ready   PIN 31;         " Boiler fertig
  T_ready   PIN 59;         " Timer abgelaufen
 
  ff1, ff2  PIN 60,61 ISTYPE 'REG'; // Zustandsregister (2 Bit)
  B         PIN 55 ISTYPE 'COM';    // Boiler-Ausgang
  P         PIN 56 ISTYPE 'COM';    // Pumpen-Ausgang
 
  ff = [ff2, ff1];          // Zustands-Set (2 Bit)
  Idle    = ^b00;
  Boiler  = ^b01;
  Pump    = ^b10;
 
EQUATIONS
  ff.CLK = takt;
 
  " Zustandsübergänge mit WHEN-THEN-ELSE
  WHEN (ff == Idle) & (Start) THEN
    ff := Boiler;
  ELSE WHEN (ff == Boiler) & (B_ready) THEN
    ff := Pump;
  ELSE WHEN (ff == Pump) & (T_ready) THEN
    ff := Idle;
  ELSE
    ff := ff;
 
  " Ausgänge direkt aus Zuständen ableiten
  B = (ff == Boiler);   // Boiler aktiv
  P = (ff == Pump);     // Pumpe aktiv
 
END