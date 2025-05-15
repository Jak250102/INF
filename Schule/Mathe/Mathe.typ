#import "../template/template.typ":*
#show: styling


// $x#sub[yearly]^1$
#head1[Mathe]

#hr
#outline(indent: auto,depth: 4)
#hr
= Die 1. Ableitung
Die Funktion f',die jedem x-wert die teigung der Tangente in diesem Punkt zuordnet, heißt die 1. Ableitung von f.

Bsp.:\

#func("x") $x^2$\
#funcA("x") $2x$\
P(-1/1)\
Q(0/0)\
R(1/1)\
S(2/4)\
#image("Screenshot_22.png", width: 80%)\
Weitere Bsp.:\
#func("x") 2\
#funcA("x") 0\
Alle Tangenten haben die Steigung 0, also ist die Ableitung 0.\
#image("Screenshot_23.png")\
#func("x") x\
#funcA("x") 1\
Alle Tangenten haben die Steigung 1, also ist die Ableitung 1.\
#image("Screenshot_25.png")\
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
#image("Screenshot_47.png")\
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
#image("Screenshot_49.png")\
#head2("Nr1.")
a) $f(x)=x^3-2x²;P(1|-1)$\
b) $f(x)=x^2(4-x²);P(-1|3)$\
c) $f(x)=1/8(6x²-x³);P(2|y_0)$\
// d) $f(x)=1/3 - x^2;P(1\mid y_0)$\
// e) $f(x)=3x^2 - x;P(0\mid 1)$\
// f) $f(x)=2(x-1)(x+2);P(5\mid y_0)$\
#head2("a)")\
#image("Screenshot_50.png")\
$f(x)=m x + b$\
$f'(x)= 3x²-4x$\
$f'(1)=3*1²-4 =-1=m$\
$t(x)=-1*x+b$\
$-1=-1*1+b|+1$\
$0=b$\
$arrow t(x)=-1x=-x$\
#head2("b)")\
#image("Screenshot_51.png")\
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
// #image("Screenshot_63.png")\
Die Tangentensteigungenen werden immer kleiner.$(2 arrow 1 arrow 0.5 arrow 0 arrow -0.5 arrow -1 arrow -2)$\
#image("Screenshot_65.png")\
f' fällt\
hier (bei f') sind alle Tangentensteigungen negativ $arrow f"''"<0$ \
#red1[$f"''"(x)<0 arrow f ""$ ist rechtsgekrümmt]\
#image("Screenshot_66.png")\

#head2("Linkskurve:")
Die Tangentensteigungenen werden immer größer.$(-2 arrow -1.5 arrow-1 arrow 0 arrow 1 arrow 1.5 arrow 2)$\
dh. die Ableitung f' steigt an.\
#image("Screenshot_67.png")\
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


== Allgemeinbildung
$x²+y²=z²$\
$3^2+4^2=5^2$\
$x^n+y^n=z^n$\
$x^4+y^4=z^4$\
