<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<title>Hello World</title>
	<link rel="stylesheet" href="../CSS/style.css">
	<link rel="stylesheet" href="../CSS/bgstyle.css">
	<link rel="stylesheet" href="../CSS/unterricht.css">
	<link rel="stylesheet" href="../CSS/navigation.css">

</head>

<body>
<form>
	<label for=""><Kreisberechnung><input type="text" name="radius"></label>
	<input type="submit" name="send" value="senden">
</form>

	<?php

	echo"<1>Kreisberechnung</h>";
	$Radius=$_Get["radius"];
	$umfang=0.0;
	$flaeche=0.0;
	echo "<h1>Hello World</h1>";
	//Variablen
	$zahl; //Deklaration optional wenn Init
	$zahl1 = 11; //Initialisierung
	echo gettype($zahl1);

	$zahl2 = 9;

	echo $zahl1;
	echo "<br>";
	echo $zahl2;
	echo "<br>";
	echo "Meine erste Zahl: " . $zahl1 . "<br>";
	echo "Meine zweite Zahl: " . $zahl2 . "<br>";
	//Aufgabe: Ausgabe der Additionsaufgabe:
	//11 + 9 = 20
	echo $zahl1;
	echo " + ";
	echo $zahl2;
	echo " = ";
	$zahl3 = $zahl1 + $zahl2;
	echo $zahl3;
	echo "<br>";
	echo $zahl1 . " + " . $zahl2 . " = " . $zahl3;
	echo "<hr>";




	$Radius = 23.5;
	$Pie = pi();

	echo "Radius = " . $Radius . "<br>";
	echo "Umfang = " . ($Radius * $Pie * 2) . "<br>";
	echo "Flaeche = " . ($Radius ** 2 * $Pie);
	echo "<hr>";

	$a = 5;
	$b = 10;
	$c;


	echo "a = " . $a . "<br>" . "b = " . $b . "<br>" . "<br>";

	$c = $a;
	$a = $b;

	echo "a = " . $a . "<br>" . "b = " . $b . "<br>" . "<br>";

	$b = $c;
	echo "a = " . $a . "<br>" . "b = " . $b . "<br>" . "<br>";

	$nn;
	echo $nn;
	?>

</body>

</html>