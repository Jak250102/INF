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
function berechneDurchschnitt($tmpArray) {
	$summe = 0;
	foreach ($tmpArray as $wert) {
		$summe += $wert;
	}
	$ergebnis = $summe / count($tmpArray);
	return $ergebnis;
}
echo "Durchschnitt: " . berechneDurchschnitt($notenlisten);
echo "<hr>";
// 4.) Den Maximalwert und Minimalwert im Array berechnen und ausgeben
echo "<h3>Maximalwert und Minimalwert foreach</h3>";
echo"<p>Durchschnitt:".berechneDurchschnitt($notenlisten)."</p>";
echo "<p>Max-Wert:".maxBerechneDurchschnitt($notenlisten)."</p>";
echo "<p>Min-Wert:".minBerechneDurchschnitt($notenlisten)."</p>";


function maxBerechneDurchschnitt($tmpArray) {
	$max = $tmpArray[0];
	foreach ($tmpArray as $wert) {
		if ($wert > $max) {
			$max = $wert;
		}
	}
	return $max;
}
function minBerechneDurchschnitt($tmpArray) {
	$min = $tmpArray[0];
	foreach ($tmpArray as $wert) {
		if ($wert < $min) {
			$min = $wert;
		}
	}
	return $min;
}
echo "<hr>";
echo "<h3>Maximalwert und Minimalwert for</h3>";
echo"<p>Durchschnitt:".berechneDurchschnitt($notenlisten)."</p>";
echo "<p>Max-Wert:".maxBerechneDurchschnittFor($notenlisten)."</p>";
echo "<p>Min-Wert:".minBerechneDurchschnittFor($notenlisten)."</p>";

function maxBerechneDurchschnittFor($tmpArray) {
	$max = $tmpArray[0];
	for ($i = 0; $i < count($tmpArray); $i++) {
		if ($tmpArray[$i] > $max) {
			$max = $tmpArray[$i];
		}
	}
	return $max;
}
function minBerechneDurchschnittFor($tmpArray) {
	$min = $tmpArray[0];
	for ($i = 0; $i < count($tmpArray); $i++) {
		if ($tmpArray[$i] < $min) {
			$min = $tmpArray[$i];
		}
	}
	return $min;
}
echo "<hr>";
echo "<h3>zahl am nächsten zu 5</h3>";
function naechsteZahl($tmpArray) {
	$nahe5 = $tmpArray[0];
	for ($i=0;$i<count($tmpArray);$i++) {
		$tmp = $tmpArray[$i] - 5;
		if ($tmp < 0) {
			$tmp = $tmp * -1;
		}
		if ($tmp <$nahe5) {
			$nahe5 = $tmpArray[$i];
		}
	}
	return $nahe5;
}
echo "<p>Die Zahl die am nächsten zu 5 ist: ".naechsteZahl($notenlisten)."</p>";
?>