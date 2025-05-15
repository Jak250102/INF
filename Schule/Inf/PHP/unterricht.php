<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
</head>

<body>

<h1>Kleines 1x1</h1>
	<form>
		<label>Bitte  gewünschte Zahl eingeben
			<input type="number" name="zahl1" placeholder="Zahl1" value="<?php if (isset($_GET["submit"])) {echo $_GET['zahl1'];} ?>">
		</label>
		<br>
		<br>
		<br>
		<input type="submit" value="Berechnen" name="submit">
		<br>
		<p>Ergebnis:</p>
	</form>
	<hr>
	<?php


	if (isset($_GET["submit"])) {
		$zahl1 = $_GET["zahl1"];
	}
	//for-Schleife
// $array1 = "";

for ($i = 1; $i <= 10; $i++) {
	echo $zahl1 . "x" . $i . "=" . $zahl1 * $i . "<br>";
}
echo "<hr>";
for ($i = 1; $i <= 10; $i++) {
	// echo "$i";
	echo $i."er Reihe <br>";
	for	($j = 1; $j <= 10; $j++) {
	
		echo $i * $j . ", ";
	}

	echo "<br>";
}




// Übungen
echo "<hr>";
//Aufgabe 1
	//while-Schleife
	$i = 0; //Startwert
	while ($i < 10) //Schleifenbedingung
	{
		echo $i;
		$i++; //Schrittweite
	}
	echo "<br>";

	//for-Schleife
	for ($i = 0; $i < 10; $i++) {
		echo $i;
	}
	echo"<hr>";




	?>
</body>

</html>