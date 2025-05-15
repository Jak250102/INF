#import "../template/template.typ":*
#show: styling

#head1[Elektrotechnik]

#hr
#outline(indent: auto,depth: 4)
#hr

= Frequenzverhalten von RLC Schaltungen 
== Hörbare Frequenzen

#image("Screenshot_31.png")\
0-20Hz Infraschall\
20Hz-20 000Hz Hörbarer Bereich für Menschen \
20 000Hz-200 000Hz Ultraschall z.b. Flederkläuse

== Reihenschaltung als Vierpol
#image("4d91a944-34e4-48e4-8649-22fbf82c1422.png", width: 60%)\
$U_A/U_E=R/Z$\
$U_A/U_E=R/(sqrt(R²+(X_L)²))("Pytagoras")$\
$=R/(sqrt(R²+1/(2*Pi*f*C)))$\


== Hochpassfilter
Ein Hochpassfilter lässt Signale bzw. Spannungen mit hohen Frequenzen durch, während niedrige Frequenzen herausgefiltert werden.
#image("Screenshot_32.png")\
Füllen Sie die untenstehende Tabelle aus, indem Sie das Verhältnis $U_a/U_e$ in Abhängigkeit von der Frequenz bestimmen.

$U_a/U_e=R/(sqrt(R²+(1/(2*Pi*f*C))²))$\
$X_C=1/(2*Pi*f*C)$

#red1[Tabelle einfügen]

== Tiefpassfilter
Ein Tiefpassfilter lässt Signale bzw. Spannungen mit niedrigen Frequenzen durch, während hohe Frequenzen herausgefiltert werden.
#image("Screenshot_33.png")\
Füllen Sie die untenstehende Tabelle aus, indem Sie das Verhältnis $U_a/U_e$ in Abhängigkeit von der Frequenz bestimmen.\
#red1[Tabelle einfügen]

== Schwingkreise
#head2[Aufgabe 1]
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
#head2[Aufgabe 2]
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

#head2[Aufgabe 3]
Zeichnen Sie den Strom in Abhängigkeit der Frequenz in das untenstehende Schaubild!
Berechnen Sie dazu zunächst den Strom bei den Frequenzen 1000, 1300, 2000, 3000 und 4000 Hz.

$I=(1V)/(sqrt((1000 Omega)²+(2*Pi*1000"Hz"*0.1"H"-1/(2*Pi*1000"Hz"*0.15*10^(-6)"F")))²)=917.76 mu A =0.973"mA"$\
$I=(1V)/(sqrt((1000 Omega)²+(2*Pi*1300"Hz"*0.1"H"-1/(2*Pi*1300"Hz"*0.15*10^(-6)"F")))²)=9.9999979*10^(-4)A=1"mA"$\
$I=(1V)/(sqrt((1000 Omega)²+(2*Pi*2000"Hz"*0.1"H"-1/(2*Pi*2000"Hz"*0.15*10^(-6)"F")))²)=8.09*10^(-4)A=8.09"mA"$\
$I=(1V)/(sqrt((1000 Omega)²+(2*Pi*3000"Hz"*0.1"H"-1/(2*Pi*3000"Hz"*0.15*10^(-6)"F")))²)=5.46*10^(-4)A=5.46"mA"$\
$I=(1V)/(sqrt((1000 Omega)²+(2*Pi*4000"Hz"*0.1"H"-1/(2*Pi*4000"Hz"*0.15*10^(-6)"F")))²)=4.064*10^(-4)A=4.064"mA"$\
#image("Screenshot_29.png")\

== Übungsaufgaben

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
$U_C=3097V$\
#head2[Nr.4]\
Die Resonanzfrequenz eines Reihenschwingkreises lässt sich mit einer Induktivität einstellen. Der Kondensator hat eine Kapazität von 33 µF und der Widerstand hat 56 Ω.\
Berechnen Sie:\
a) den Resonanzfrequenzbereich, wenn sich die Induktivität der Spule von 1,8 bis 4,3 mH verändern lässt,\
b) die Leistungsaufnahme der Schaltung bei Resonanz an 110 V.\
a)\
$f_r=1/(2*Pi*sqrt(L*C))$
$f_r=1/(2*Pi*sqrt(1.8 m H* 33 mu F))=653.02H z$\
$f_r=1/(2*Pi*sqrt(L*C))$
$f_r=1/(2*Pi*sqrt(4.3 m H* 33 mu F))=422.50H z$\
b)\
$P=(U²)/R=((110V)²)/(56 Omega)=216.07W$\
= Drehstromtechnik
== Erzeugung und Verkettung
=== Was ist ein Drehstromsystem?
#image("Screenshot_35.png")\
=== Verkettung
#image("Screenshot_36.png")\
#image("Screenshot_37.png")\
=== Arbeitsauftrag
#image("Screenshot_40.png")\
#image("Screenshot_41.png")\
#image("Screenshot_42.png")\
=== Symmetrische Belastung
#image("Screenshot_43.png")\
== Sternschaltung\
#image("Screenshot_44.png")\
#image("Screenshot_45.png")\
#red1[$I_(s t r)=I_L$]\
#red1[Strangstrom = Leiterstrom]\
#blue1[Leiterspannung = $ sqrt(3)" Strangspannung"$]\
#green1("M")\
$U_("str2")-U_("str1")+U_("12")=0$\
$U_("12")=U_("str1")-U_("str2")$\
$U_("23")=U_("str2")-U_("str3")$\
$U_("31")=U_("str3")-U_("str1")$\

=== Zeigerdiagramm
$U_("12")=U_("str1")-U_("str2")$\
#image("Screenshot_52.png")\
== Dreieckschaltung (Reihenschaltung)
#image("Screenshot_55.png")\
$U_("12")=U_("str1")$\
$U_("23")=U_("str2")$\
$U_("31")=U_("str3")$\
#blue1[Leiterspannung = $ " Strangspannung"$]\
$I_"str1"-I_"str3"-I_"L1"=0$\
$I_"str2"-I_"str1"-I_"L2"=0$\
$I_"str3"-I_"str2"-I_"L3"=0$\

$I_"L1"=I_"str1"-I_"str3"$\
$I_"L2"=I_"str2"-I_"str1"$\
$I_"L3"=I_"str3"-I_"str2"$\

== Leistung im Dreiphasenwechselstrom
Die Gesamtleistung eines Verbrauchers bei Anschluss an Drehstrom lässt sich über die Einzelleistungen der drei Stränge berechnen.\
$P_"ges"=P_1+P_2+P_3$\
#image("Screenshot_57.png")\
$P=S*cos phi$\
$P=sqrt(3)*U*I*cos phi ("Leitergrößen")$\
$Q=S*sin phi$\
$Q=sqrt(3)*U*I*sin phi$\
#image("Screenshot_58.png")\
*Man berechnet die Leistungen bei der Stern- und Dreieckschaltung mit der gleichen Formel.*(bei Symetrischer Last)\
#image("Screenshot_59.png")\
8,7A=Leiterstrom\
$P=sqrt(3)*U*I*cos phi=sqrt(3)*400V*8.7A*0.83=5002.86k W$\
$sin phi=sin(cos^(-1)(0.83))=0.558$\
$Q=sqrt(3)*U*I*sin phi=sqrt(3)*400V*8.7A*0.558=3363"VA"$\
$S=sqrt(P²+Q²)=sqrt(5002.86²+3363²)=6000"VA"$\

*Beispiel*\
#image("Screenshot_60.png")\
a)\
#image("Screenshot_61.png")\
b)\
$U_"str"=U/sqrt(3)=400V/sqrt(3)=230V$\
$I=U/R =(230V)/(60 Omega)=3.83A$\
c)\
$S=sqrt(3)*U*I=sqrt(3)*400V*3.83A= 2650"VA"$\
$P=S$\
$Q=0v a r$\


