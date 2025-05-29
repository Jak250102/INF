Module aktuell 
TITLE 'Durcheinanderzaehler mit 7-Segment-Anzeige'
 
@dcset
 
DECLARATIONS
  takt       PIN 88;                   
  s1, s2     PIN 30, 31;               
  ff1, ff2, ff3 PIN 61, 60, 59 ISTYPE 'BUFFER, REG';
  ff = [ff1, ff2, ff3];   "SET
 
  a, b, c, d, e, f, g PIN 67,65,66,70,72,69,71 ISTYPE 'BUFFER, REG';  " 7-Segment-Anzeige
 
EQUATIONS
  ff.clk = takt;
 
"----------------------------
TRUTH_TABLE
 
([s1, s2, ff] :> ff)
 
" Vorwärts (Durcheinander)
[0, 0, 0] :> 4;
[0, 0, 1] :> 0;
[0, 0, 2] :> 6;
[0, 0, 3] :> 7;
[0, 0, 4] :> 2;
[0, 0, 5] :> 3;
[0, 0, 6] :> 5;
[0, 0, 7] :> 1;
 
" Stopp
[1, 0, 0] :> 0;
[1, 0, 1] :> 1;
[1, 0, 2] :> 2;
[1, 0, 3] :> 3;
[1, 0, 4] :> 4;
[1, 0, 5] :> 5;
[1, 0, 6] :> 6;
[1, 0, 7] :> 7;
 
" Rückwärts (Durcheinander rückwärts)
[1, 1, 0] :> 1;
[1, 1, 1] :> 7;
[1, 1, 2] :> 4;
[1, 1, 3] :> 5;
[1, 1, 4] :> 0;
[1, 1, 5] :> 6;
[1, 1, 6] :> 2;
[1, 1, 7] :> 3;
 
"----------------------------
 
 
TRUTH_TABLE
 
(ff :> [a,b,c,d,e,f,g])
 
0 :> [1,1,1,1,1,1,0];   " 0
1 :> [0,1,1,0,0,0,0];   " 1
2 :> [1,1,0,1,1,0,1];   " 2
3 :> [1,1,1,1,0,0,1];   " 3
4 :> [0,1,1,0,0,1,1];   " 4
5 :> [1,0,1,1,0,1,1];   " 5
6 :> [1,0,1,1,1,1,1];   " 6
7 :> [1,1,1,0,0,0,0];   " 7
 
END