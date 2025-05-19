#import "../template/template.typ":*
#show: styling
#head1[Fusionsenergie – Die Zukunft der Energie]

#hr
#outline(indent: auto,depth: 4)
#hr

= Begrüßung
- Bild der Sonne
	- Erklärung das die Sonne ein Fusionsgenerator ist

= Titelfolie

= Was ist Fusion?
	- Die Verschmelzung von zwei Stoffen
	- Die Verschmelzung von zwei leichten Atomkernen zu einem Schweren Atomkernen
	- leichte Atomkerne wenige Protonen und Neutronen $arrow$ niedrige Masse
	- schwere Atomkerne viele Protonen und Neutronen $arrow$ hohe Masse

= Warum brauchen wir Fusionsenergie
(Folie nur mit der Überschrift)
- Aktueller Energiebedarf der Menschheit
- Notwendigkeit neuer Energiequellen
- Umweltschutz
	- 78% des Weltenergiebedarfs wird heute aus fossilen Energiequellen gedeckt
-  Ein Gramm Brennstoff könnte 90 kwh Energie erzeugen so viel wie 11 Tonnen Kohle (visualisieren)

= Grundlagen der Kernfusion
== Unterschied: Kernfusion vs. Kernspaltung
#table(
  columns: (auto,auto, auto),
  align: horizon, 
	// justify: false,
	
  table.header(
   [*Merkmale*],[*Kernfusion*], [*Kernspaltung*]
  ),
	[Was passiert?],
	[Ein schwerer Atomkern wird gespalten],
	[Zwei leichte Atomkerne verschmelzen],

	[Typischer Stoff],
	[Uran-235, Plutonium-239],
	[Deuterium, Tritium (Wasserstoff-Isotope)],

	[Vorkommen],
	[Atomkraftwerke ],
	[Sonne, Sterne, Fusionsreaktor],

	[Energie entsteht wie?],
	[Durch Trennung großer Kerne],
	[Durch Verschmelzung kleiner Kerne],

	[Abfallprodukte],
	[Radioaktiver Müll, langlebig],
	[Kaum radioaktiver Abfall],

	[Risiken],
	[Gefahr von Kettenreaktionen, GAU möglich],
	[Kaum Unfallrisiko, aber technisch schwierig],




)
== Unterschied: Kalte vs. heiße Fusion
	- kalte: (raumtemperatur)
	- heiße: (über 100 Milionen °C)
== Natürliches Beispiel: Energiequelle der Sonne
	- Jede sekunde verbrennen 600 mio Tonnen Wasserstoff zu 596 mio Tonnen Helium die Sonne wird also jede sekounde 4 mio Tonnen leichter
== Bedingungen für Fusion: Temperatur, Druck, Plasma
== Was ist Plasma
	- ausführung was ist plasma (Plasma entsteht, wenn ein Gas so stark erhitzt wird, dass die Atome ihre Elektronen verlieren (4. Agregatszustand). was bei temperaturen über 100 mio °C passiert bedingt also fusion)
#image("original1.jpg", width: 100%)\	
https://www.ipp.mpg.de/plasma

= Geschichte
1920 erkannte Arthur Eddington das die Sonne Fusion als energiequelle nutzt

= Fusionsreaktionen im Detail
== Fusionsablauf
- Deuterium + Tritium → Helium + Neutron + Energie
	- Atomkerne stoßen sich gegenseitig ab, (Coulomb Kraft), um das zu verhindern werden hohe temperaturen benötigt
#image("header_image.jpg", width: 100%)\
https://www.ipp.mpg.de/ippcms/de/pr/fusion21\
\
== Verfügbarkeit von Brennstoffen für die Kernfusion
1. Deuterium (²H)
- Natürliches, stabiles Wasserstoff-Isotop
- Ca. 0,015 % des Wasserstoffs im Wasser ist Deuterium
- das Universium besteht zu 75% aus Wasserstoff
- kann mit Elektrolyse aus Wasser gewonnen werden
- Gewinnung durch Durch Elektrolyse oder Isotopentrennung aus Wasser

Verfügbarkeit:
- Sehr hoch: praktisch unerschöpflich
- In 1 m³ Meerwasser steckt genug Deuterium für ~30 Jahre Strom für einen Haushalt

2. Tritium (³H)
- Radioaktiv, Halbwertszeit ca. 12,3 Jahre
- In der Natur nur in Spuren vorhanden
- Muss im Fusionsreaktor erzeugt werden
- Z. B. durch Neutronenbeschuss von Lithium:(Li-6+n→Tritium + Helium)

Verfügbarkeit:
- Indirekt abhängig von Lithiumvorräten

3. Lithium:
- In Gestein, Salzseen und Meerwasser enthalten
- Dient zur Tritiumproduktion im Reaktor
- ungefähr 15 Millionen Tonnen Lithium Weltweit

== Aufgabe des Plasmas
- Im Plasma müssen die Atomkerne so stark beschleunigt werden, dass sie sich gegenseitig überwinden können und Kollisionsreaktionen stattfinden können
- Die Temperatur muss hoch genug sein, damit die Atomkerne genügend Energie haben, um die Coulomb-Barriere zu überwinden \~100 Millionen °C
- Die Dichte muss hoch genug sein, damit genügend Atomkerne aufeinanderprallen und Fusion stattfindet
- Die Zeit muss lang genug sein, damit die Atomkerne genügend Zeit haben, um zu fusionieren \~2s
- Plasmadichte von ungefähr $10^(14)$ Teilchen pro Kubikzentimeter – 250.000-fach dünner als die Lufthülle der Erde

== Temperaturerzeugung

  - Magnetische Einschlussmethoden:
    - Das Plasma wird durch starke Magnetfelder eingeschlossen, damit es nicht die Wände berührt und genug Zeit zur Aufheizung hat.
    - Verwendet z. B. im Tokamak (kreisförmig mit Plasmastrom) und Stellarator (komplexe Magnetstruktur ohne Plasmastrom).
    - Reaktortypen: Tokamak, Stellarator
    - Beispiele: JET (UK), ITER (Frankreich, im Bau), EAST (China), Wendelstein 7-X (Deutschland), LHD (Japan)

  - Trägheitsfusion (Laserfusion):
    - Ein winziges Brennstoffpellet wird durch starke Laser oder Ionenstrahlen komprimiert und in extrem kurzer Zeit aufgeheizt.
    - Die Massenträgheit des Pellets hält das Plasma kurz genug zusammen, damit Fusion stattfinden kann.
    - Reaktortyp: Laserfusion
    - Beispiele: NIF (USA), LMJ (Frankreich)

  - Induktive Erwärmung:
    - Durch einen Transformator wird ein elektrischer Strom im Plasma erzeugt.
    - Dieser Strom erzeugt über den elektrischen Widerstand Wärme (Ohm'sche Heizung) – funktioniert nur am Anfang, da der Widerstand mit steigender Temperatur sinkt.
    - Reaktortyp: Nur Tokamak
    - Beispiele: JET, ITER, EAST

  - Neutralteilcheninjektion (NBI):
    - Schnelle, elektrisch neutrale Teilchen (meist Wasserstoffatome) werden ins Plasma geschossen.
    - Diese übertragen ihre Bewegungsenergie beim Zusammenstoß mit Plasmateilchen → Wärme entsteht.
    - Reaktortypen: Tokamak, Stellarator
    - Beispiele: JET, DIII-D (USA), ASDEX Upgrade (Deutschland), Wendelstein 7-X (optional)

  - Mikrowellenheizung (z. B. ECRH, ICRH):
    - Hochfrequente elektromagnetische Wellen werden gezielt ins Plasma eingespeist.
    - Die Energie wird durch Resonanz an Elektronen oder Ionen übertragen → gezielte Aufheizung möglich.
    - Reaktortypen: Tokamak, Stellarator
    - Beispiele: TCV (Schweiz), ASDEX Upgrade, Wendelstein 7-X


== Herausforderungen der Hohen Temperaturen
- keine Materialien halten den Temperaturen stand
- Plasma würde mit der Wand des Reaktors reagieren und Abkühlen
	- Plasma muss in einem Vakuum gehalten werden
	- Plasma muss von Magnetfeldern gehalten werden
	- Magnetische Einschlussmethoden sind komplex und teuer
	- In einem Tokamak wird das Plasma in einem Ring gehalten, der von Magneten umgeben ist (Die Feldlienen müssen verdreht sein)
	- In einem Stellarator wird das Plasma in einer komplexen Form gehalten, die von Magneten umgeben ist
	- In einem Trägheitsfusionsreaktor wird das Plasma durch Laserstrahlen komprimiert und erhitzt

== Energiegewinn durch Massendefekt (E = mc²)
	- Der Massendefekt ist der kleine Unterschied in der Masse vor und nach einer Kernreaktion – und genau dieser Unterschied wird als Energie frei. Diese Energie berechnet man mit Einsteins berühmter Formel:
	E = mc²
	-	E = Energie (in Joule)
	- m = Massendefekt (in Kilogramm)
	- c = Lichtgeschwindigkeit (300 000 km/s)
	Weil c²
  ein riesiger Wert ist, erzeugt schon eine kleine Masse sehr viel Energie.
	
== Beispiel: Energiegewinn durch Massendefekt\ 
Massen:\
Deuterium (²H): 2.014 u\
Tritium (³H): 3.016 u\
Helium-4 (⁴He): 4.0026 u\
Neutron (n): 1.0087 u\

Masse vor der Fusion: 5.030 u\
Masse nach der Fusion: 5.0113 u\
Massendefekt: 0.0187 u ≈ 3.11 × 10^-29 kg\

Energie nach E = mc²\
E = 3.11 × 10^-29 kg  (3 × 10^8 m/s)^2\
E = 2.80 × 10^-12 Joule (Piko)\

Fazit: Für eine einzelne Reaktion ist das wenig,
aber bei vielen Reaktionen wird sehr viel Energie frei.\

P = 500 MW = 500 × 10^6 Watt = Joule/Sekunde\
Dann pro Sekunde:\
500 × 10^6 J / 2.82 × 10^-12 J ≈ 1.77 × 10^20 Fusionsvorgänge\
Dann pro Minute:\
1.77 × 10^20 × 60 ≈ 1.06 × 10^22 Fusionsvorgänge


= Technische Umsetzung
- Magnetischer Einschluss:
  - Tokamak (z.B. ITER)
  - Stellarator (z.B. Wendelstein 7-X)
- Trägheitsfusion (Laserfusion, z.B. NIF)
- Herausforderungen: Stabilität, Materialbelastung

= Aktuelle Forschungsprojekte
- ITER (Frankreich)
- Wendelstein 7-X (Deutschland)
- NIF (USA)
- Private Initiativen (Commonwealth Fusion Systems, TAE etc.)

= Chancen und Risiken
- Vorteile:
  - Kein CO₂
  - Kaum Atommüll
  - Geringes Gefahrenpotenzial
- Risiken/Hürden:
  - Technischer Aufwand
  - Hohe Entwicklungskosten
  - Jahrzehntelanger Zeithorizont

= Ausblick und Zukunft
- Zeitrahmen für funktionierende Fusionskraftwerke
- Bedeutung im globalen Energiemix
- Beitrag zum Klimaschutz

= Fazit
- Zusammenfassung der Kernaussagen
- Bewertung: Reale Lösung oder utopisch?
- Denkanstoß ans Publikum

= Fragen & Diskussion
- Möglichkeit zur Rückfrage
- Diskussionsimpuls:
  _„Sollte trotz langer Entwicklung weiter in Fusion investiert werden?“_


