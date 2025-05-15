MODULE Speicher

TITLE 'Speicher'

DECLARATIONS
"Eingänge"
Peter PIN 31;
Tackt PIN 88;
Tom PIN 30;

"Ausgänge"
P1 PIN 56 ISTYPE 'BUFFER,REG';

EQUATIONS

P1.D = Peter;
P1.CLK = Tackt;
P1.AR = Tom;
END
