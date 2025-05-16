#import "../template/template.typ":*
#show: styling


// $x#sub[yearly]^1$
#head1[Mathe]

#hr
#outline(indent: auto,depth: 4)
#hr
= Allgemeinbildung
$x²+y²=z²$\
$3^2+4^2=5^2$\
$x^n+y^n=z^n$\
$x^4+y^4=z^4$\

= Differntialrechnung
== Ableitungen
=== Durchschnittliche Änderungsrate:
\
\
#image("Pictures/Screenshot_12.png", width: 100%)\
#image("Pictures/Screenshot_13.png", width: 100%)\
#image("Pictures/Screenshot_11.png", width: 100%)\
a)\
Änderungsrate:\
$(f(3)-f(1))/(3-1)=(-1(-1))/2=(-2)/2=-1$\
$(f(-1)-f(3))/(1-3)=(+1-(-1))/(-2)=-1$

#head2("Aufgabe 1")\
Gegeben ist die Funktion $f(x)=x^2$\
#image("Pictures/Screenshot_16.png")\
Ziel: Tangente im Punkt P(1/2)(bei x=1)\
#red1[m=2] (gesuchte Tangente)\

#head2("Berechnen sie die durchschnittliche Änderungsrate im Intervallen:")\
#image("Pictures/Screenshot_68.png")\
== Allgemeine Formulierung:
*Differnzenquotient* von f im Intervall\
$I=[1-h;1]$\
P(1-h|/1-h)²)\
$Ä R:((1-h)²-(-1)²)/((1-h)-1)=(1-2h+h²)/(-h)=(-h*(2-h))/(-h)=2-h$\
*Der linksseitige Differentialqotient* an der Stelle $x_0=1$\
limh-->0\
(2-h)=2\
Die gesuchte *Tangente* hat die Steigung #red1[2].\



Änderungsrate im Intervall [a,b] der Funktion f:\
$"ÄR" (Delta y)/ (Delta x)=(f(b)-f(a))/(b-a) "auch Differnzenquotient"$\
== Die 1. Ableitung
Differnzenquotient: $"lim" (f(b)-f(a))/(b-a)h->0$\
Ordnet man jedem x $in DD_f$ die Tangentensteigung im betreffenden Kurvenpunkt zu, so erhält man eine Funktion, die man die 1. Ableitung von f nennt. Schreibweise: f'


Die Funktion f',die jedem x-wert die teigung der Tangente in diesem Punkt zuordnet, heißt die 1. Ableitung von f.

Bsp.:\

#func("x") $x^2$\
#funcA("x") $2x$\
P(-1/1)\
Q(0/0)\
R(1/1)\
S(2/4)\
#image("Pictures/Screenshot_22.png", width: 80%)\
Weitere Bsp.:\
#func("x") 2\
#funcA("x") 0\
Alle Tangenten haben die Steigung 0, also ist die Ableitung 0.\
#image("Pictures/Screenshot_23.png")\
#func("x") x\
#funcA("x") 1\
Alle Tangenten haben die Steigung 1, also ist die Ableitung 1.\
#image("Pictures/Screenshot_25.png")\
#func("x") $x^2$
Jeder Punkt hat eine andere Tangensteigung.\
#funcA("x") $2x$\

== Ableitungsregeln
=== Potenzregel
#func("x") c, (c $#sym.in$ #sym.RR) ==> #funcA("x") 0 \
#func("x") x, ==> #funcA("x") 1 $"*"x^0 = 1 $\
#func("x") $x^2$, ==> #funcA("x") $2x^1=$2x\
#func("x") $x^3$, ==> #funcA("x") 3x²\
#func("x") $x^4$, ==> #funcA("x") 4x³\
Allgemein #func("x") $x^n$, ==> #funcA("x")$n*x^(n-1)$ \
Zusatz: #func("x") $1/x^2=x^(-2)$==> #funcA("x") 
=== Summenregel
#func("x")g(x)+h(x) \
#funcA("x")\
*Bsp.*\
$ #func("x")=x^5+x^3$ \
$#funcA("x")5x^4+3x^2$\
#head2("Faktorregel:")
g differenzierbare Funktion, k#sym.in#sym.RR, (=ableitbar)\
#func("x")k*g(x) \
#funcA("x")k*g'(x)\
*Bsp.*\
$#func("x")=3*x$\
$#funcA("x")3*1=3$\
k=3
*Bsp.*\
$#func("x")5*x^7$\
$#funcA("x")5*7*x^6=35*x^6$\
*Bsp.*\
$#func("x")x^(-4)+2x^9$\
$#funcA("x")-4x^(-5)+18x^8$\
*Bsp.*\
$#func("x")1/3x^3+1/4x^4-1/7x^7+1$\
$#funcA("x")x^2+x^3-x^6$\
*Bsp.*\
$#func("x")x*(x-1)=x^2-x$\
$funcxA()2x-1$\
(_Steht links und rechts des Malzeichens etwas mit x, so muss vor dem ableiten ausmultipliziert werden_)\
*Bsp.*\
$#func("x")2*(x-1)(x+2)$\
$#funcx()2*(x^2+2x-1x-2)=2(x^2+x-2)$\
$#funcxA()2*(2x+2-1)=2*(2x+1)$\
=== Übungen 1
$#func("x") x^(16)-x^(5)+x^(3)$\
$#funcA("x") 16x^(15)-5x^(4)+3x^(2)$\

$#func("x") 2x^(10)-3x^(5)$\
$#funcA("x") 20x^(9)-15x^(4)$\

$#func("x") -5x^(3)-x^(2)+1$\
$#funcA("x") -15x^(2)-2x$\

$#func("x") 23456$\
$#funcA("x") 0$\

$#func("x") x^(2014)-2x^(25)$\
$#funcA("x") 2014x^(2013)-50x^(24)$\

$#func("x") -4x^(7)-13$\
$#funcA("x") -28x^(6)$\

$#func("x") 1/4x^(4)-1/3x^(3)+1/3$\
$#funcA("x") x^(3)-x^(2)$\

$#func("x") x^(16)-x^(5)+x^(3)$\
$#funcA("x") 16x^(15)-5x^(4)+3x^(2)$\

$#func("x") 1/5x^(5)-2x^(4)$\
$#funcA("x") x^(4)-8x^(3)$\

$#func("x") x^(3)+x$\
$#funcA("x") 3x^(2)+1$\

$#func("x") 3x^(3)-x^(2)+x$\
$#funcA("x") 9x^(2)-2x+1$\

$#func("x") 1/5x^(25)-x^(5)$\
$#funcA("x") 5x^(24)-5x^(4)$\

$#func("x") 1/4x^(2)-3$\
$#funcA("x") 1/2x$\

$#func("x") 2x^(4)-x^(5)$\
$#funcA("x") 8x^(3)-5x^(4)$\

$#func("x") x^(-3)$\
$#funcA("x") -3x^(-4)$\

$#func("x") x^(-4)+x^(-2)$\
$#funcA("x") -4x^(-5)-2x^(-3)$\

$#func("x") 2x^(-2)+3x$\
$#funcA("x") -4x^(-3)+3$\

$#func("x") x(x+3)$\
$#funcA("x") 2x+3$\

$#func("x") x^(2)(x-1)$\
$#funcA("x") 3x^(2)-2x$\

$#func("x") 2(x^(3)-x)$\
$#funcA("x") 6x^(2)-2$\

$#func("x") 2x^(3)-2x$\
$#funcA("x") 6x^(2)-2$\

$#func("x") -3(4x^(2)-2)$\
$#funcA("x") -24x$\

$#func("x") -2(4x^(2)-3x)$\
$#funcA("x") -16x+6$\

=== Übungen 2
#image("Pictures/Screenshot_47.png")\
1. Schätzen Sie (durch Hinschauen), an welchen Punkten des Graphen die Tangente die Steigung $3$ hat.  \
   Antwort: Bei $x=-2,1$ hat die Funktion eine Tangente mit Steigung $3$.  

2. Berechnen Sie die Punkte des Graphen, an denen die Tangente die Steigung $3$ hat.  \
$#funcA("x")2x^2+2x-1$\
$2x^2+2x-1=3|-3$\
$2x^2+2x-4=0|:2$\
$x²+x-2$\
$-(1/2)plus.minus sqrt((1/2)²+2)$\
$-(1/2)plus.minus sqrt(1/4+8/4)$\
$-(1/2)plus.minus sqrt(9/4)$\
$-(1/2)plus.minus 3/2$\
$x_("12")=-2,1$\
$#func("1") 2/3*1³+1²-1	=2/3 |P(1\/2/3)$\
$#func("-2") 2/3*(-2)³+(-2)²-(-2)	=2/3 |P(-2\/2/3)$\
3. Zeichnen Sie mit rot die Tangenten mit Steigung $3$ in die Grafik ein.  

4. Zeichnen Sie mit grün die Tangenten mit Steigung $0$ in die Grafik ein.  

5. Für Schnell-Löser: Berechnen Sie die Nullstellen der Funktion $f(x)$.\

== Übungsblatt zur Ableitung
#image("Pictures/Screenshot_49.png")\
#head2("Nr1.")
a) $f(x)=x^3-2x²;P(1|-1)$\
b) $f(x)=x^2(4-x²);P(-1|3)$\
c) $f(x)=1/8(6x²-x³);P(2|y_0)$\
// d) $f(x)=1/3 - x^2;P(1\mid y_0)$\
// e) $f(x)=3x^2 - x;P(0\mid 1)$\
// f) $f(x)=2(x-1)(x+2);P(5\mid y_0)$\
#head2("a)")\
#image("Pictures/Screenshot_50.png")\
$f(x)=m x + b$\
$f'(x)= 3x²-4x$\
$f'(1)=3*1²-4 =-1=m$\
$t(x)=-1*x+b$\
$-1=-1*1+b|+1$\
$0=b$\
$arrow t(x)=-1x=-x$\
#head2("b)")\
#image("Pictures/Screenshot_51.png")\
$t(x)=m *x+b$\
$m=f'(-1)$\
$f'(x)=8x-4x³$
$f'(3)=8*(-1)-4*(-1)$\
$f'(-1)=-8+4= -4=m$\
$t(x)=-4*(-1)+b$\
$3=-4*(-1)+b|-4$\
$-1=b$\
$arrow t(x)=-4x-1$\
$y=-4*x-1$
#head2("c)")\
c) $f(x)=1/8(6x²-x³);P(2|y_0)$\
$t(x)=m *x+b$\
$f(x)=1/8(6*2²-2³)$ Y ausrechnen durch einsetzen\
$f(x)=1/8(24-8)$\
$f(x)=1/8(16)$\
$f(x)=2=y_0$\
$f'(x)=1/8(12x-3x²)$ Ableitung erstellen\
$f'(x)=1/8(3x(4-x))$\
$f'(2)=1/8(3*2(4-2))$\
$f'(2)=1/8(3*2*2)$\
$f'(2)=1/8(12)$\
$f'(2)=3/2=m$ Steigung\
$t(x)=3/2x+b$ Tangenten Gleichung\
$t(2)=3/2*2+b$\
$t(2)=3+b$\
$t(2)=3+b|-3$\
$t(2)=-1=b$ y achsenabschnitt\
$t(x)=3/2x-1$\
#head2("Nr2.")
$f(x)=x²-2x;m=2$\
$2x-2=2|+2$\
$2x=4|:2$\
$x=2$\
$f(2)=2²-2*2=0$\
$P(2|0)$\
#head2[Rasenmäher]
*Monotonie $arrow$ wan steigend/ fallend*\
Die Funktion f mit $f(x)=1/12x³-7/4x²+10x+17/3$ beschreibt näherungsweise die wöchentlichen Verkaufszahlen von Rasenmähern. Dabei ist x die Zeit in Wochen nach der Wiedereröffnung der Geschäftsräume. Untersuchen sie die Entwicklung der Verkaufszahlen.\
$f'(x)=1/4x²-7/2x+10=0|*4$\
$x²-14x+40=0 arrow$ PQ\
$x_("1,2"):x_1=4,x_2=10$\
$f'(2)>0$\
$f'(6)<0$\
$f'(10)>0$\

== 2. Ableitung-Krümmungsverhalten
#head2("Rechtskurve:")
// #image("Pictures/Screenshot_63.png")\
Die Tangentensteigungenen werden immer kleiner.$(2 arrow 1 arrow 0.5 arrow 0 arrow -0.5 arrow -1 arrow -2)$\
#image("Pictures/Screenshot_65.png")\
f' fällt\
hier (bei f') sind alle Tangentensteigungen negativ $arrow f"''"<0$ \
#red1[$f"''"(x)<0 arrow f ""$ ist rechtsgekrümmt]\
#image("Pictures/Screenshot_66.png")\

#head2("Linkskurve:")
Die Tangentensteigungenen werden immer größer.$(-2 arrow -1.5 arrow-1 arrow 0 arrow 1 arrow 1.5 arrow 2)$\
dh. die Ableitung f' steigt an.\
#image("Pictures/Screenshot_67.png")\
hier (bei f') sind alle Tangentensteigungen positiv $arrow f"''">0$ \
#red1[$f"''"(x)>0 arrow f ""$ ist linksgekrümmt]\

#head2("Bsp.:")
$f(x)=x²$\
$f"'"(x)=2x$\
$f "''" (x)=2>0 "daraus folgt linkskurfe"$

#head2("Bsp.:")
$f(x)=-7x$\
$f"'"(x)=-7$\
$f "''" (x)=0$ keine grümmung f(x) ist ja eine Gerade\

#head2("Bsp.:")
$f(x)=-x³+3x+2$\
$f"'"(x)=-3x²+3$\
$f "''" (x)=-6x$\
\ \
$f"''"(x)=0$\
$-6x=0 |(-6)$\
$x=0$\
x|x"< 0"|0|x">0|\
f"''"(x)|+|0|-\


=== Extrempunkte Bestimmen
#head2("(=Hoch-&Tiefpunkte)")\
#image("Pictures/Screenshot_76.png")\

Gilt $f"''"$(a)=0, dann hat $G_f$ bei x=a eine waagerechte Tangente\
hier $f'(x_1)=0, f'(x_2)=0,f'(x_3)=0$\
Überlegung: \
Ein Hochpunkt ligt in einer Rechtskurve!\
Ein Tiefpunkt liegt in einer Linkskurve!\
Hinreichende Bedingung für das Vorliegen von Hoch-Tiefpunkten:\
#red1($f'(a)=0 "und" f"''"(a)<0 arrow"bei x=a ist rel. Hochpunkt"$)\
#red1($f'(a)=0 "und" f"''"(a)>0 arrow"bei x=a ist rel. Tiefpunkt"$)\
#head2("Bsp.:")\
$f(x)= 4/3 x³-8x²+12x-8/3 $\
ges: Hoch-& Tiefpunkte\
$f'(x)=4x²-16x+12$\
$f"''"(x)=8x-16$\
1) Punkte mit waagerechter Tangente:\
$f'(x)=0$\
$4x²-16x+12=0|:4$\
$x²-4x+3=0$\
$x_(1,2)=2+-1$\ \
$x_1=3  x_2=1$ Wir haben zwei Stellen mit waagrechter Tangente gefunden. Es könnte ein hochpunkt, Tiefpunkt oder Sattelpunkt sein.\ \
alternativ:\
$(x-3)*(x-1)$\
$x²-3x-1x+3$\
$x²-4x+3$\

2) $x_1=3 "und" X_L=1 "in" f"''"(x) "einsetzen:"$\
$f"''"(3)=8*3-16=24-16=#yellow1(8)>0 arrow "rel Tiefpunkt bei" x=3$\
$f"''"(1)=8*1-16=8-16#yellow1(-8)<0 arrow "rel Hochpunkt bei" x=1$\
#yellow1("Diese zahl gibt auskunft darüber ob x=3 bzw x=1 in einer Rechts oder Linkskurve liegen")\
$f(3)= 4/3 3³-8*3²+12*3-8/3 $\
$f(3)= 4/3 *27-8*9+36-8/3 $\
$f(3)= 36-72+36-8/3 $\
$f(3)= 0-8/3 $\
$f(3)= -8/3 =y arrow "rel Tiefpunkt bei" (1|-8/3)$\

$f(1)= 4/3 1³-8*1²+12*1-8/3 $\
$f(1)= 4/3 -8+12-8/3 $\
$f(1)=-4/3+4$\
$f(1)=-4/3+12/3$\
$f(1)=8/3 =y arrow "rel Hochpunkt bei" (1|8/3)$\

#head2("Bsp 1:")\
$f(x)=1/3x³-2x²+3x+1$\
#image("Pictures/Screenshot_79.png")\
$f'(x)=x²-4x+3$\
$f"''"(y)=2x-4$\
$f'(x)=0: x²-4x+3=0$\
$x_1=1$\
$x_2=3$\


$f(1)= 7/3" " H P (1|7/3)$\
$f(3)=1 " " T P (3|1)$\

#head2("Bsp 6")\
#image("Pictures/Screenshot_78.png", width: 80%)\
#image("Pictures/Screenshot_80.png", width: 80%)\
