#import "/typst/template/template.typ":*
#show: styling

#outline(indent: auto,depth: 3)
#sym.Delta #sym.mu

#line(length: 100%) #sym.arrow.r^Z

$accent("x", arrow)$
$accent("b",arrow)$
#hr
#ohm
$x#sub[yearly]^1$
#heading(level: 1,"hallo")
= test
// #v(-0.8cm)
== test 2
== test 2
== test 2
== test 2
== test 2
== test 2
== test 2
== test 2
== test 2
== test 2
== test 2
== test 2
== test 2
== test 2

#table(
	columns: (1fr, 1fr,auto,auto),
	align: horizon,
	table.header([test], [test 2]),
[(dgdsg)]
)

#vector("Z")
#vector("b")
#head2("expotentialschreibweise")
#set align(center)
$#{let a = calc.pow(3,3);1+1+ a ;
}$
#sci(1421342142141,2)\
#qty[#sci(1421342142141,2)][m]\
#ssci(43634653456)\
#ssci(43634653456, precision: 2)