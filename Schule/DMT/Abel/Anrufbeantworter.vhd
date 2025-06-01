MODULE anrufbeantworter
 
" Einfache ABEL-Lösung für den Anrufbeantworter-Automaten
" Nach zweimaligem Klingeln (K) wird AB=1, bis Bandende (B) oder Timeout (T) erfolgt.
 
DECLARATIONS
  takt    PIN 1;
  K       PIN 2;
  B       PIN 3;
  T       PIN 4;
  Qa, Qb  PIN 10,11 ISTYPE 'REG';
  AB      PIN 12 ISTYPE 'COM';
 
  zustand = [Qa, Qb];
 
  Idle    = ^b00;
  Einmal  = ^b01;
  Zweimal = ^b10;
 
EQUATIONS
  zustand.CLK = takt;
 
  " Zustandsübergänge
  TRUTH_TABLE ([K,B,T,zustand] :> zustand)
    [ .X., .X., 1, .X. ] :> Idle;         " Timeout immer auf Idle
    [ 1,   .X., 0, Idle ] :> Einmal;      " Erstes Klingeln
    [ 1,   .X., 0, Einmal ] :> Zweimal;   " Zweites Klingeln
    [ .X., 1,   0, Zweimal ] :> Idle;     " Bandende nach AB
    [ .X., .X., 0, Idle ] :> Idle;
    [ .X., .X., 0, Einmal ] :> Einmal;
    [ .X., .X., 0, Zweimal ] :> Zweimal;
 
  " Ausgang AB direkt in einer zweiten Tabelle
  TRUTH_TABLE (zustand -> AB)
    Idle    -> 0;
    Einmal  -> 0;
    Zweimal -> 1;
 
END