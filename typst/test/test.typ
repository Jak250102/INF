#import "template/template.typ":*
#show: styling

#outline(indent: auto,depth: 3)
#sym.Delta #sym.mu

#line(length: 100%) #sym.arrow.r^Z

$accent("x", arrow)$
$accent("b",arrow)$
#hr
#ohm
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

#set align(center)