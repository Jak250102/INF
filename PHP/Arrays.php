<?php
// PHP Arrays
// Arrays sind eine Art von Datenstruktur, die es ermöglicht, mehrere Werte in einer einzigen Variablen zu speichern.

echo "<h1>Notenliste</h1>";
// Array deklarieren
$notenlisten = [];


// Werte in ein Array speichern
$notenlisten = [2.3, 1.3, 2.7, 3.0, 1.7, 2.0, 3.3, 4.0, 1.0, 2.0];
echo count($notenlisten);
echo "<br>";
$notenlisten[] = 4.0;
var_dump($notenlisten);
echo "<br>";
$notenlisten[5] = 1.3;
var_dump($notenlisten);
echo "<br>";
echo "<hr>";
// Werte aus einem Array ausgeben
echo $notenlisten[0] . "<br>";
echo $notenlisten[1] . "<br>";
echo $notenlisten[2] . "<br>";
echo $notenlisten[3] . "<br>";
echo $notenlisten[4] . "<br>";
echo $notenlisten[5] . "<br>";
echo $notenlisten[6] . "<br>";
echo $notenlisten[7] . "<br>";
echo $notenlisten[8] . "<br>";
echo $notenlisten[9] . "<br>";
echo $notenlisten[10] . "<br>";
echo "<hr>";
echo "<h3>ausgabe Array</h3>";
for ($i = 0; $i <= 5; $i++) {
	echo $notenlisten[$i] . "<br>";
}
echo "<hr>";
for ($i = 0; $i < count($notenlisten); $i++) {
	echo $notenlisten[$i] . "<br>";
}
echo "<hr>";
echo "<h3>for each</h3>";
foreach ($notenlisten as $note) {
	echo $note . "<br>";
}
echo "<hr>";
echo "<h3>for each mit zähler</h3>";
foreach ($notenlisten as $i=> $note) {
	echo $i.": " .$note . "<br>";
}


?>