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
#image("Screenshot_62.png")\