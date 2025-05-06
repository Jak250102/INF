#import "/typst/template/template.typ":*
#show: styling

#head1[Elektrotechnik]

#hr
#outline(indent: auto,depth: 4)
#hr

= Frequenzverhalten von RLC Schaltungen 
== Hörbare Frequenzen

#red1("Bild einfügen")\
0-20Hz Infraschall\
20Hz-20 000Hz Hörbarer Bereich für Menschen \
20 000Hz-200 000Hz Ultraschall z.b. Flederkläuse

== Reihenschaltung als Vierpol
#red1("Bild einfügen")\
$U_A/U_E=R/Z$\
$U_A/U_E=R/(sqrt(R²+(X_L)²))("Pytagoras")$\
$=R/(sqrt(R²+1/(2*Pi*f*C)))$

== Hochpassfilter
#red1("Bild einfügen")\
== Schwingkreise
=== Aufgabe 1
Gegeben sei der Reihenschwingkreis mit den Bauelementen:\
R = 1000 Ω, L = 100 mH, C = 0,15 µF, U = 1V, f = 1kHz.\
Berechnen Sie den Wechselstrom I, der durch die Schaltung fließt.
#image("Screenshot_26.png")\
$Z=sqrt(R²+X²)$\
$X=X_L-X_C$
#image("Screenshot_27.png")\
$I=U/Z=U/(sqrt(R²+(X_L-X_C))²)$\
$I=U/Z=U/(sqrt(R²+(X_L-X_C))²)=U/(sqrt(R²+(2*Pi*f*L- 1/(2*Pi*f*C)))²)$\
$I=(1V)/(sqrt((1000 Omega)²+(2*Pi*1000"Hz"*0.1"H"-1/(2*Pi*1000"Hz"*0.15*10^(-6)"F")))²)=917.76 mu A =0.9"mA"$\
\
\
=== Aufgabe 2
Die Frequenz, bei der der Strom maximal ist, wird Resonanzfrequenz genannt.
Bestimmen Sie die Resonanzfrequenz. \
$I=U/Z=U/(sqrt(R²+(X_L-X_C))²)$\
$X_L-X_C=0$\
$W L - 1/(W C) |*W C$\
$W L * W C = 1$\
$W²*L*C=1$\
$W²=1/(L*C)$\
$W=sqrt(1/(L C))=1/sqrt(L C)$\
$2*Pi*f=1/sqrt(L C)$\
$f=1/(2*Pi*sqrt(L C))$ #red1[Resonanzfrequenz]

=== Aufgabe 3
Zeichnen Sie den Strom in Abhängigkeit der Frequenz in das untenstehende Schaubild!
Berechnen Sie dazu zunächst den Strom bei den Frequenzen 1000, 1300, 2000, 3000 und 4000 Hz.

$I=(1V)/(sqrt((1000 Omega)²+(2*Pi*1000"Hz"*0.1"H"-1/(2*Pi*1000"Hz"*0.15*10^(-6)"F")))²)=917.76 mu A =0.973"mA"$\
$I=(1V)/(sqrt((1000 Omega)²+(2*Pi*1300"Hz"*0.1"H"-1/(2*Pi*1300"Hz"*0.15*10^(-6)"F")))²)=9.9999979*10^(-4)A=1"mA"$\
$I=(1V)/(sqrt((1000 Omega)²+(2*Pi*2000"Hz"*0.1"H"-1/(2*Pi*2000"Hz"*0.15*10^(-6)"F")))²)=8.09*10^(-4)A=8.09"mA"$\
$I=(1V)/(sqrt((1000 Omega)²+(2*Pi*3000"Hz"*0.1"H"-1/(2*Pi*3000"Hz"*0.15*10^(-6)"F")))²)=5.46*10^(-4)A=5.46"mA"$\
$I=(1V)/(sqrt((1000 Omega)²+(2*Pi*4000"Hz"*0.1"H"-1/(2*Pi*4000"Hz"*0.15*10^(-6)"F")))²)=4.064*10^(-4)A=4.064"mA"$\
#image("Screenshot_29.png")\

=== Übungsaufgaben

#image("GetImage (1).png")\

#head2[Nr.1]
Ein Kondensator mit 560 pF ist mit einer Spule, die den Wirkwiderstand 1 Ω und die Induktivität 10 H hat, in Reihe an Wechselspannung geschaltet.
Berechnen Sie die Resonanzfrequenz.\
$f=1/(2*Pi*sqrt(L C))$\
$f=1/(2*Pi*sqrt(10H 560 p F))$\
$f= 2.13×10^3"Hz"=2,13"kHz"$

#head2[Nr.2]
Eine Spule mit einem Wirkwiderstand von 2,2 Ω und einer Induktivität von 0,5 H ist in Reihe mit einem Kondensator von 100 µF an eine Wechselspannung geschaltet.\
Bestimmen Sie\
a) die Resonanzfrequenz \ 
b) die Schwingungszahl (Kreisfrequenz) \
a)\
$f=1/(2*Pi*sqrt(L C))$\
$f=1/(2*Pi*sqrt(0.5H *100 mu F))$\
$f=22.5"Hz"$\
b)\
$Q=(W*L)/R$
$Q=(2*Pi *22.5"Hz"*0.5H)/(2.2 Omega)$
$Q=32,1$
#head2[Nr.3]
An eine Wechselspannung von 12 V 50 Hz sind ein Kondensator von 5,6 µF und eine Spule mit einem Wirkwiderstand von 2,2 Ω in Reihe geschaltet. Durch Verschieben des Eisenkerns der Spule kann deren Induktivität verändert werden.\
a) Bei welcher Induktivität tritt Resonanz auf?\
b) Welche Spannung liegt am Kondensator an?\
a)\
$f_f=1/(2*Pi*sqrt(L*C))$\
$sqrt(L)=1/(2*pi*sqrt(C)*f_f)$\

$L=sqrt(1/((2*pi*sqrt(C)*f_f)))$\

$L=sqrt(1/((2*pi*sqrt(5.6mu F)*50"Hz")))$
\
$L=1.81H$\
b)\
$I=U/R$\
$I=(12V)/(2.2 Omega)$\
$I=5.45A$\
$U_C=I*X_C$\
$X_C= 1/(2*Pi*f*C)$\
$X_C= 1/(2*Pi*50 H z*5.6mu F)$\
$X_C=586.41 Omega$\
$U_C=5.45A*586.41 Omega$\
$U_C=3097V$
