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
#image("Screenshot_22.png")\
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