#import "../template/template.typ":*
#show: styling

#head1[Elektrotechnik]

#hr
#outline(indent: auto,depth: 4)
#hr

= Frequenzverhalten von RLC Schaltungen 
== Hörbare Frequenzen

#image("Pictures/Screenshot_31.png")\
0-20Hz Infraschall\
20Hz-20 000Hz Hörbarer Bereich für Menschen \
20 000Hz-200 000Hz Ultraschall z.b. Flederkläuse

== Reihenschaltung als Vierpol
#image("Pictures/4d91a944-34e4-48e4-8649-22fbf82c1422.png", width: 60%)\
$U_A/U_E=R/Z$\
$U_A/U_E=R/(sqrt(R²+(X_L)²))("Pytagoras")$\
$=R/(sqrt(R²+1/(2*Pi*f*C)))$\


== Hochpassfilter
Ein Hochpassfilter lässt Signale bzw. Spannungen mit hohen Frequenzen durch, während niedrige Frequenzen herausgefiltert werden.
#image("Pictures/Screenshot_32.png")\
Füllen Sie die untenstehende Tabelle aus, indem Sie das Verhältnis $U_a/U_e$ in Abhängigkeit von der Frequenz bestimmen.

$U_a/U_e=R/(sqrt(R²+(1/(2*Pi*f*C))²))$\
$X_C=1/(2*Pi*f*C)$

#red1[Tabelle einfügen]

== Tiefpassfilter
Ein Tiefpassfilter lässt Signale bzw. Spannungen mit niedrigen Frequenzen durch, während hohe Frequenzen herausgefiltert werden.
#image("Pictures/Screenshot_33.png")\
Füllen Sie die untenstehende Tabelle aus, indem Sie das Verhältnis $U_a/U_e$ in Abhängigkeit von der Frequenz bestimmen.\
#red1[Tabelle einfügen]

== Schwingkreise
#head2[Aufgabe 1]
Gegeben sei der Reihenschwingkreis mit den Bauelementen:\
R = 1000 Ω, L = 100 mH, C = 0,15 µF, U = 1V, f = 1kHz.\
Berechnen Sie den Wechselstrom I, der durch die Schaltung fließt.
#image("Pictures/Screenshot_26.png")\
$Z=sqrt(R²+X²)$\
$X=X_L-X_C$
#image("Pictures/Screenshot_27.png")\
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
#image("Pictures/Screenshot_29.png")\

== Übungsaufgaben

#image("Pictures/GetImage (1).png")\

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
#image("Pictures/Screenshot_35.png")\
=== Verkettung
#image("Pictures/Screenshot_36.png")\
#image("Pictures/Screenshot_37.png")\
=== Arbeitsauftrag
#image("Pictures/Screenshot_40.png")\
#image("Pictures/Screenshot_41.png")\
#image("Pictures/Screenshot_42.png")\
=== Symmetrische Belastung
#image("Pictures/Screenshot_43.png")\
== Sternschaltung\
#image("Pictures/Screenshot_44.png")\
#image("Pictures/Screenshot_45.png")\
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
#image("Pictures/Screenshot_52.png")\
== Dreieckschaltung (Reihenschaltung)
#image("Pictures/Screenshot_55.png")\
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
#image("Pictures/Screenshot_57.png")\
$P=S*cos phi$\
$P=sqrt(3)*U*I*cos phi ("Leitergrößen")$\
$Q=S*sin phi$\
$Q=sqrt(3)*U*I*sin phi$\
#image("Pictures/Screenshot_58.png")\
*Man berechnet die Leistungen bei der Stern- und Dreieckschaltung mit der gleichen Formel.*(bei Symetrischer Last)\
#image("Pictures/Screenshot_59.png")\
8,7A=Leiterstrom\
$P=sqrt(3)*U*I*cos phi=sqrt(3)*400V*8.7A*0.83=5002.86k W$\
$sin phi=sin(cos^(-1)(0.83))=0.558$\
$Q=sqrt(3)*U*I*sin phi=sqrt(3)*400V*8.7A*0.558=3363"VA"$\
$S=sqrt(P²+Q²)=sqrt(5002.86²+3363²)=6000"VA"$\

*Beispiel*\
#image("Pictures/Screenshot_60.png")\
a)\
#image("Pictures/Screenshot_61.png")\
b)\
$U_"str"=U/sqrt(3)=400V/sqrt(3)=230V$\
$I=U/R =(230V)/(60 Omega)=3.83A$\
c)\
$S=sqrt(3)*U*I=sqrt(3)*400V*3.83A= 2650"VA"$\
$P=S$\
$Q=0v a r$\

== Sternschaltung, unsymmetrische, gleichartige Last
#head2("Nr.1")
#image("Pictures/Screenshot_82.png")\
#head2("Nr.2")
#image("Pictures/Screenshot_84.png")\
#image("Pictures/Screenshot_85.png")\
$I=U/R$\
$I_1=U/R_1=(230V)/(20 Omega)=11.5A$\
$I_2=U/R_2=(230V)/(30 Omega)=7.67A$\
$I_3=U/R_3=(230V)/(40 Omega)=5.75A$\
#image("Pictures/Screenshot_86.png")\
*komplex*
Spannungen:\
$#comp("U","1N")=#ej(230,0)V$\
$#comp("U","2N")=#ej(230,120)V$\
$#comp("U","3N")=#e-j(230,120)V$\
Ströme:\
$#comp("I","1N")=U/R_1=(#ej(230,0)V)/(20 Omega)=#ej(11.5,0)A$\
$#comp("I","2N")=U/R_2=(#e-j(230,120)V)/(30 Omega)=#e-j(7.67,120)A$\
$#comp("I","3N")=U/R_3=(#ej(230,120)V)/(40 Omega)=#ej(5.75,120)A$\
$#comp("I","N")=(#comp("I","1N")+ #comp("I","2N")+ #comp("I","3N"))$\
$#comp("I","N")=#ej(5.07,160)V$\
#head2("Nr.3")
#image("Pictures/Screenshot_87.png")\
#image("Pictures/Screenshot_85.png")\
$I=U/R$\
$I_1=U/R_1=(230V)/(30 Omega)=7.67A$\
$I_2=U/R_2=(230V)/(60 Omega)=3.83A$\
$I_3=U/R_3=(230V)/(40 Omega)=5.75A$\
$U"Str1"=U"Str2"=U"Str3"=230V$\
$#comp("I","N")=-(#comp("I","1N")+ #comp("I","2N")+ #comp("I","3N"))=-( #ej(7.67,0)+#e-j(3.83,120)+#ej(5.75,120))=#ej(3.33,150)$\

#head2("Nr.4")
#image("Pictures/Screenshot_88.png")\

$C_1=47"µF"$\
$C_2=33"µF"$\
$C_3=22"µF"$\
$#comp("U","1N")=(500V)/sqrt(3)*e^("j0°")=#ej(288.68,0)$\
$#comp("U","2N")=(500V)/sqrt(3)*e^("-j120°")=#e-j(288.68,120)$\
$#comp("U","3N")=(500V)/sqrt(3)*e^("j120°")=#ej(288.68,120)$\
$#comp("x","C")=1/(omega*c)=1/(2*pi*f*c)$\
$#comp("x","C1")=1/(2*pi*50H z*47*10^(-6)F)=-j 67.73Ω$\
$#comp("x","C2")=1/(2*pi*50H z*33*10^(-6)F)=-j 96.21Ω$\
$#comp("x","C3")=1/(2*pi*50H z*22*10^(-6)F)=-j 144.34Ω$\
$#comp("I","1N")=U/R_1=(#ej(288.68,0)V)/(-j 67.73Ω)=#ej(4.26,90)A$\
$#comp("I","2N")=U/R_2=(#e-j(288.68,120)V)/(96.21Ω)=#e-j(2.99,30)$\
$#comp("I","3N")=U/R_3=(#ej(288.68,120)V)/(-j 144.34Ω)=#e-j(2.00,150)A$\
#image("Pictures/Screenshot_94.png")\
b)$ #comp("I","N")=-(#comp("I","1N")+ #comp("I","2N")+ #comp("I","3N"))=-( #ej(4.26,90)+#e-j(2.99,30)+#e-j(2.00,150))=#e-j(1.96,115.91)$\
#image("Pictures/output.png",width: 40%)\

#head2("Nr.5")

#image("Pictures/Screenshot_95.png")\
- a)\
$I=I_("Str")=U/R=(230V)/(10Ω)=23A$\
- b)\
$I=I_("Str")=U/R=(230V)/(10Ω)=23A$\
- c)\
$#comp("I","N")=-(#comp("I","1N")+ #comp("I","2N")+ #comp("I","3N"))=-( #ej(23,0)A+#e-j(23,120)A+#ej(230,120)A)=#ej(0,0)$\
- d)\
$#comp("I","N")=-(#comp("I","1N")+ #comp("I","2N"))=-( #ej(23,0)A+#e-j(23,120)A)=#ej(23,120)A$
- e)\
$#comp("I","N")=-(#comp("I","1N"))=-( #ej(23,0)A)=#ej(23,180)A$

== Sternschaltung, unsymmetrische, ungleichartige Last

#image("Pictures/Screenshot_99.png",width: 100%)\
#head2("Nr.1")
#image("Pictures/Screenshot_97.png",width: 100%)\
- a)\
$U_"Str1"=U/"sqrt(3)"=(500V)/sqrt(3)e^"j0")= #ej(288.68,0)$\
$U_"Str1"=U/"sqrt(3)"=(500V)/sqrt(3)e^"-j120")= #e-j(288.68,120)$\
$U_"Str1"=U/"sqrt(3)"=(500V)/sqrt(3)e^"j120")= #ej(288.68,120)$\

- b)\
$I_("Str1")=U/R=((500V)/sqrt(3)e^"j0")/(14.4Ω)=20.5A$\
$X_L=j omega L=2*pi*f*l=2*pi*50"HZ"*33"mH"=j 10.37 Omega$\
$I_("Str2")=U/X_L=((500V)/sqrt(3)e^"-j120")/(10.37 Omega)=#ej(27.84,150)$\

$X_C= -j 1/(2*pi*f*c)=-j 1/(2*pi*50"HZ"*570"µF")=- 5.57 Omega j$\

$I_("Str3")=U/X_C=((500V)/sqrt(3)e^"j120")/(-5.57 Omega j)=#e-j(51.83,150)$\
- b)\

#head2("Nr.2")
#image("Pictures/image.png")
$I_N=-(I_1+I_2+I_3)=$\


