MODULE aktuell

TITLE 'aktuell'

 
DECLARATIONS
S1, S2 PIN 30,31;
S3, S4 PIN 19,20;


Mein PIN 58;

set1 =[S2,S1];
set2 =[S4,S3];



EQUATIONS 

when set1 != set2 then Mein = 1;



End