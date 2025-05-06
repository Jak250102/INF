<?php

// 1.) Array mit dem Namen myArray mit 10 Werten zwischen 1.0 und 10.0
$notenlisten = [1.1, 2.2, 3.3, 4.4, 5.5, 6.6, 7.7, 8.8, 9.9, 10.0];

// 2.) Alle Werte im Array untereinander ausgeben
echo "<h3>Alle Werte im Array</h3>";
foreach ($notenlisten as $note) {
	echo $note . "<br>";
}

// 3.) Den Durchschnitt der Werte im Array berechnen und ausgeben
echo "<hr>";
echo "<h3>Durchschnitt mit for-Schleife</h3>";
$summe = 0;
for ($i = 0; $i < count($notenlisten); $i++) {
	$summe += $notenlisten[$i];
}
$durchschnitt = $summe / count($notenlisten);
echo "Durchschnitt: " . $durchschnitt;
echo "<br>";
echo "<hr>";

// Durchschnitt mit foreach-Schleife
echo "<h3>Durchschnitt mit foreach-Schleife</h3>";
$summe = 0;
foreach ($notenlisten as $note) {
	$summe += $note;
}
$durchschnitt = $summe / count($notenlisten);
echo "Durchschnitt: " . $durchschnitt;
echo "<br>";
echo "<hr>";

// Durchschnitt mit Funktion
echo "<h3>Durchschnitt mit Funktion</h3>";
function berechneDurchschnitt($array) {
	$summe = 0;
	foreach ($array as $wert) {
		$summe += $wert;
	}
	return $summe / count($array);
}
$durchschnitt = berechneDurchschnitt($notenlisten);
echo "Durchschnitt: " . $durchschnitt;
?>