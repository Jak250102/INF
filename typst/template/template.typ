#let ohm = {$Omega$}
#let hr = {  line(stroke: (paint: gray, thickness: 4pt, cap: "round"),length: 100%,)}
#let vector(x) = $accent(#x, arrow)$
#let vec(x) = $accent(#x.arrow)$
#let comp(x) = $accent(#x, arrow)$
#let styling(it) = {
	set text(lang: "de", region: "de", 11pt, font: "Arial")
	set heading(numbering: "1.")
	set align(left)
	
set par(justify: true)
set page(
  margin: (top: 60pt, bottom: 40pt),
  header: [
    #set text(8pt)
    #smallcaps[Jannik Muy]
    #h(1fr) FTE1
  ],
)
set page(numbering: "1")
show heading.where(level: 1): set text(size: 20pt)
show heading.where(level: 2): set text(size: 16pt)
it
}