<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Schleifen</title>
</head>

<body>
	<h1>Hello World</h1>
	<?php
	set_time_limit(2);
	// for-Schleife
	// Kopfgesteuerte Schleife
	echo "<h2>while-Schleife</h2>";
	$i = 0;
	while ($i <= 10) { // Bedingung
		echo $i . "<br>"; //Schrittweise
		$i++;
	}
	echo "ENDE";
	echo "<br>";
	//Zählen von 10-0
	echo "<h2>while-Schleife</h2>";
	$i = 10;
	while ($i >= 0) { // Bedingung
		echo $i . "<br>"; //Schrittweise
		$i--;
	}
	echo "ENDE <br>";
	// $i = 10;
	// while ($i >= 0) { // Bedingung
	// 	echo $i . "<br>"; //Schrittweise
	// 	$i-=2;
	// }
	//Ausgabe: 1,2,3,4,5,6,7,8,9,10
	$i = 1;
	while ($i <= 9) { // Bedingung
		echo $i . ","; //Schrittweise
		$i++;
	}
	echo $i;
	echo "<br>ENDE <br>";

	//Ausgabe: 1,2,3*,4,5,6*,7,8,9*,...30
	$i = 1;
	while ($i <= 30) {
		if ($i % 3 == 0) {
			echo $i . "*<br>"; 
		} else {
			echo $i . "<br>"; 
		}
		$i++;
	}


	echo "<br>ENDE <br>";
		//Ausgabe: 1,2,3*,4,5,6*,7,8,9*,...30
		$i = 1;
		while ($i <= 30) 
		{ //Ternäre Operator
			echo($i%3==0)?$i."*<br>":$i."<br>";
			$i++;
		}
	
	
		echo "<br>ENDE <br>";
//for schleife

//do while schleife

//foreach schleife

//break und continue
	?>
</body>

</html>