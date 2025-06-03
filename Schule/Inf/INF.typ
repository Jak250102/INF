#import "../template/template.typ":*
#show: styling

#head1[Informatik]

#hr
#outline(indent: auto,depth: 4)
#hr
= PHP
== Arrays (Felder)
#head2[1. Eindimensionales numerisches Array (Feld)]
Datenspeicherung bisher:\
\$\varA= #red1[Platz für #underline("einen") Wert]\ \
\Datenspeicherung in einem Array:\
\$\varA= #red1[Platz für #underline("n") Werte]\

In einem Array lassen sich #underline("zusammenhängende Werte") speichern.

Beispiel: Messwerterfassungen, Notenspeicherungen, \$\_Get[...]
\
\
#underline[Darstellung eines Arrays:]\
#blue1[arrayName] = #red1[[Wert1, Wert2, Wert3, ..., Wert n]]\
#yellow1[Index = Wert 1 = 0]\
#yellow1[Index = Wert 2 = 1]\
#yellow1[Index = Wert 3 = 2]\
#yellow1[...]\
#yellow1[Index = Wert n = n-1]\
#green1[\<- länge: count()\-\>\ ]\
#head2[2. Mehrdimensionales numerisches Array (Feld)]

=== Array funktion
#image("Pictures/Screenshot_62.png")\
#image("Pictures/Screenshot_89.png", width: 100%)\
[] = Array\
GZ= Ganze zahl\
#table(
  columns: (5),
  align: horizon, 
	// justify: false,
	
  table.header(
   [*i*],[*j*], [*werte j*],[*werte j +1*], [*werte*]
	),
	[1],[0],[11],[17],[11,17,9,3,12],
	[1],[1],[17],[9],[11,0,17,3,12],
	


)

Der Bubble-Sortieralgorithmus sortiert eine Zahlenfolge der Größe nach\

== Selection sort
Vorgehensweise:\
Zu beginn ist das Array unsortiert.\
Es wird stets das kleinste Element des noch unsortierten Arrays gesucht und selektiert.\
Es wird das selektierte Element mit dem ersten Element des unsortierten Arrays getauscht.\
Somit wirt das kleinste Elemetn in noch unsortierten Teil gesucht und in den sortierten Teil eingefügt.\
Dies wird so lange wiederholt, bis das gesamte Array sortiert ist.\

== Der Binary-Search
|$1_"0"$|$4_"1"$|$8_"2"$|$9_"3"$|$11_"4"$|$14_"5"$|$16_"6"$|$17_"7"$|$19_"8"$|$33_"9"$|\

0-3 = Unteres Intervall\
5-9 = Oberes Intervall\
$arrow$ Mitte $= (9+0)/2 = 4.5= 4$\

$arrow$ feld[4]< 14 ? TRUE $arrow$ gesuchter Wert liegt im oberen Intervall\
$arrow$ neue Grenzen müssen festgelegt werden. $arrow$ unten = mitter+1 = 5 (neue untere Grenze)\
$arrow$ oben = 9 (neue obere Grenze)\
$arrow$|$14_#red1("5")$|$16_"6"$|$17_"7"$|$19_"8"$|$33_"9"$|\
$arrow$ neue Mitte $= (9+5)/2 = 7.0= 7$\
5-6 = Unteres Intervall\
7= Mitte\
8-9 = Oberes Intervall\
$arrow$ feld[7] > 14 ? FALSE $arrow$ gesuchter Wert liegt im unteren Intervall\
$arrow$ neue obere Grenze muss festgelegt werden. $arrow$ oben = mitte-1 = 6 (neue obere Grenze)\
$arrow$|$14_"5"$|$16_"6"$|\
$arrow$ neue Mitte $= (6+5)/2 = 5.5= 5$\
5 = Mitte\
6 = Oberes Intervall\
$arrow$ feld[5] < 14 ? FALSE\
$arrow$ feld[5] > 14 ? FALSE\
$arrow$ erfolg = 5 Index der Gesuchten Zahl wird in erfolg geschrieben.\
$arrow$ Schleifenabbruch!\

== Vergleich sequenzielle Suche und binäre Suche:

Durchschnittliche Anzahl an Vergleichen bei n-Werten:\
- bei der binären Suche: log_2(n)\
- bei der sequenziellen Suche: n/2\
#head2[Bsp.]\
n = 10 (10 Werte im Array)
bin Suche: log_2(10) = 3.32\
sequenzielle Suche: 10/2 = 5\
$arrow$ Binary-Search ist schneller als die sequenzielle Suche.


#table(
	columns: (3),
	align: horizon,
	table.header(
		[*Sequenzielle Suche*], [*Binäre Suche*], [*Anzahl Vergleiche*]
	),
	[1], [1], [1],
	[2], [2], [2],
	[3], [3], [3],
	[4], [4], [4],
	[5], [5], [5],
	[6], [6], [6],
	[7], [7], [7],
	[8], [], []
)

