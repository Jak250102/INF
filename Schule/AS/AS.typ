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

== Hauptsätze der Thermodynamik
=== Nullter Hauptsatz der Thermodynamik:
			- Steht ein Körper A mit einem Körper B im thermischen Gleichgewicht, und steht der Körper A gleichzeitig mit einem Körper C im thermischen Gleichgewicht, dann besteht ein solches Gleichgewicht auch unmittelbar zwischen B und C.\
			Alle drei Körper A,B und C besitzen die gleiche Temperatur T.\
			#image("image-3.png")\
=== Erster Hauptsatz der Thermodynamik:
 - ist ein energieerhaltungssatz
 - Erweiterung des Prinzip der Energieerhaltung durch die zusätzliche Berücksichtigung anderer Energiearten:
 z.B. Wärme Q, innere Energie u, Enthalpie H\
 $arrow$ Zusätzliche energetische Beschreibung des Inneren Systemzustands möglich\
 - Jedes System besitzt eine Extensive Zustandsgröße Energie E (in [Joule J])\
 - Die Energie ist für ein konstant abgeschlossenes System konstant.\
 - Thermodynamische Prozesse schließen oft Arbeit mit ein.\
 - Wärme geht von heißeren zu kälteren Gegenständen über.\
 - $arrow$ Der Begriff Wärme ist also dem der Arbeit Ähnlich.\
  - Beides sind Energieformen\
 - Wärme ist Energietransport aufgrund eines Temperaturgefälles.\
 - Wärme ist Energietransport ohne eines Temperaturgefälles.\
 - $Delta U=Q+W$\ 
  - $Delta U$=innere Energie\
  - $Q$=Wärme\
  - $W$=Arbeit\
 - Folgerungen des ersten Hauptsatzes:
  - Energie kann nicht vernichtet oder verbraucht werden. Sie kann lediglich von einer Energieform in eine andere umgewandelt werden.\
  - Energie kann einem System von außen (Umgebung) zugeführt werden bzw. von einem System an die Umgebung abgegeben werden. Dadurch verändert sich der Energetische Zustand eines Systems.\
=== Zweiter Hauptsatz der Thermodynamik:
 - Nach dem 1. Hauptsatz, der Energiebilanz für Thermodynamische Systeme eingeführt wurde, wäre jeder Prozess möglich der diesen Energieerhaltungsprinzip genügt.\
 - Diese Behauptung widerspricht aber der Realität, wonach natürliche thermodynamische Vorgänge in bestimmte Richtungen ablaufen.\ \
=== Bsp.:  -Kaffeetasse -Elektrische Heizung
 - $arrow$ Es muss zusätzlich zum 1. Hauptsatz ein weiterer (zweiter) Hauptsatz existieren, der eine Aussage darüber liefert, wie ein Prozess abzulaufen hat.\
  - *Kaffeetasse*:
	  - Eine heiße Tasse Kaffee, die sich in einem kälteren Raum befindet, kühlt ab. Dieser Vorgang erfüllt den 1. Hauptsatz da die vom Kaffee abgegebene Energie gleich Groß ist, wie die aufgenommene Energiemenge. \
				Der umgekehrte Vorgang, bei dem der heiße Kaffe noch heißer wird, durch weiteres Abkühlen des bereits kalten Raumes, würde ebenso den 1. Hauptsatz erfüllen. \
				$arrow$ Aus Erfahrung wissen wir: Dieser Prozess wird nie stattfinden.\
- Thermodynamische Prozesse lassen sich in der Praxis erst dann realisieren, wenn sowohl der 1. als auch der 2. Hauptsatz der Thermodynamik erfüllt sind.\

- Der 2. Hauptsatz der Thermodynamik behandelt die Frage nach der Richtung, thermodynamischer Prozesse.\
 - Wärme fließt von selbst stets von hoher zu niedriger Temperatur.\
 - Der Drosselvorgang eines Arbeitsmittels verläuft stets in Richtung abnehmenden Drucks.\
- Die genannten zustandsänderungen weisen alle eine gemeinsamkeit auf: Sie sind irreversibel.\

=== Beispiele für irreversible Prozesse:
#image("Screenshot_108.png")
- Viele Formulierungen des 2. Hauptsatzes entstanden aus der täglichen Erfahrung heraus.\
- Durch sie wird der 2. Hauptsatz als Axiom (Erfahrungssatz) eingeführt z.B. (Baehr):\
 - Alle natürlichen Vorgänge und thermodynamische Prozesse sind irreversibel.
 - Reversible Prozesse sind lediglich als Grenzfälle der natürlichen Prozesse aufzufassen, die verlustfrei und unendlich langsam ablaufen.
 - Irreversible Zustandsänderungen können nicht rückgängig gemacht werden, ohne dass im System oder in der Umgebung Veränderungen übrig bleiben.

- Mit Hilfe des 2. Hauptsatzes lassen sich unterschiedliche Energieformen hinsichtlich ihrer Umwandelbarkeit in mechanische Arbeit bewerten, z.b.\
  - Aus Energie bei hoher Temp. kann mehr Arbeit erzeugt werden, als aus der gleichen Energiemenge bei niedriger Temp.\
- Der 2. Hauptsatz liefert die thermodynamischen oberen Grenzwerte für die Wirkungsgrade und Leistungszahlen häufig verwendeter Maschinen, Apparate und Anlagen.\