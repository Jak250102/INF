#let ohm = {$Omega$}
#let hr = {  line(stroke: (paint: gray, thickness: 4pt, cap: "round"),length: 100%,)}
#let vector(x) = $accent(#x, arrow)$
#let vec(x) = $accent(#x, arrow)$
#let comp(x) = $accent(#x, arrow)$
#let func(x) = $f"("#x")="$
#let funcA(x) = $f"'("#x")="$

#let head1(x) = {
	set text(size: 30pt)
	set align(center)
	[ \ *#x* ]
}
#let head2(x) = {
    set text(size: 15pt)
    set align(left)
    underline[ \ *#x* ]
}

// style the document
#let styling(it) = {
	set text(lang: "de", region: "de", 11pt, font: "Arial")
	set heading(numbering: "1.")
	set align(left)
	set text(hyphenate: false)
set par(justify: true)
set page(
  margin: (top: 60pt, bottom: 40pt),
  header: [
    #set text(8pt)
    #smallcaps[Jannik Muy]
    #h(1fr) FTE1
  ],
)
set page(numbering: "I")
show heading.where(level: 1): set text(size: 20pt,)
show heading.where(level: 1): set align(center)
show heading.where(level: 2): set text(size: 18pt)
show heading.where(level: 3): set text(size: 16pt)
it
}
