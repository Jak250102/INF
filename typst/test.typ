#import "template.typ":*
// #import "template.typ":hr

#let vector(x) = $accent(#x, arrow)$


#ohm 
#set text(lang: "de", region: "de", 11pt)
#set heading(numbering: "1.")
#set align(center)
#outline(indent: auto,depth: 3)
#sym.Delta #sym.mu
\
#line(length: 100%) #sym.arrow.r^Z

$accent("x", arrow)$
#hr
#ohm

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

#set align(center)