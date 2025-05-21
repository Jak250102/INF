#import "../template/template.typ":*
#show: styling

#head1[Anlagen Systeme]

#hr
#outline(indent: auto,depth: 4)
#hr

= Thermodynamik
*Extensive zustandsgrößen:*\
- Sie sind proportional zur Größe des Systems;\
Bei dessen Teilung teilen sich, bei zusammenfügen addieren sich, z.B. Volumen V, Masse m, Stoffmenge n.\

- Zur Beschreibung des Zustandes eines Systems mit einem homogenen Fluid, z.B. Luft sind nur zwei Zustandsgrößen erforderlich: Druck p und Temperatur T.\

- Soll auch die Größe des Systems angegeben werden, so benötigt man zusätzlich eine Extensive zustandsgröße: z.B. die Masse oder Stoffmenge n.\

== Thermodynamische Systeme
- Ein Thermodynamisches System stellt eine zweckmäßige Abgrenzung einer Stoffmenge oder eines bestimmten räumlichen Bereiches von seiner Umgebung dar.\

- Die Abgrenzung des Systems von der Umgebung erfolgt durch eine Systemgrenze.\
- z.B. Gasgefüllter, geschlossener Zylinder:\

#image("Screenshot_90.png")\

== Systemgrenze

- Durch die Systemgrenze wird das Thermodynamische System charakterisiert.\
- Systemgrenzen können Materiell vorhanden sein, z.B. Zylinderwand, oder auch nur gedachte (fiktive) Hüllen, die sich während zustandsänderungen verschieben können.\

- Je nach Beschaffenheit der Systemgrenze unterscheidet man zwischen:
	- *a) geschlossener System:*
		- Bsp. Gasmenge in einem Zylinder, beweglicher Kolben
		- #image("Screenshot_90.png", width: 50%)
		- Charakterisierung: Systemgrenze ist undurchlässig für Masse, und durchlässig für Energie\
	- *b) offenes System:*
		- Bsp. Verflüssiger (Kondensator) im  Dampfkraftwerk
		- #image("Screenshot_91.png", width: 50%)
		- Charakterisierung: Systemgrenze ist durchlässig für Masse und Energie\
	- *c) Adiabates System:*
		- Bsp. sehr gut Wärmegedämmter Zylinder
		- #image("Screenshot_92.png", width: 50%)
		- Charakterisierung: Systemgrenze ist undurchlässig für Wärme\
	- *d) abgeschlossenes System:*
		- Bsp. Behälter mit starren, sehr guten Wärmedämmenden Umrandungen
		- #image("Screenshot_93.png", width: 50%)
		- Charakterisierung: Systemgrenze ist undurchlässig für Masse und Energie, kann nicht in Wechselwirkung mit Umgebung treten\