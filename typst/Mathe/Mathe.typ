#import "/typst/template/template.typ":*
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

5. Für Schnell-Löser: Berechnen Sie die Nullstellen der Funktion $f(x)$.  