<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Mein Notenprogramm</title>
</head>

<body>
	<h1>Mein Zeugnisprogramm</h1>
	<form action="">
		<label>Bitte die Noten als Zahl eingeben
			<input type="text" name="note1">
			<input type="submit" name="Berechnen">
		</label>
	</form>
</body>

</html>
<?php
$note1 = 1;
$noteWort = "";
$valide = true;

if (isset($_GET["note1"])) {
	$note1 = $_GET["note1"];
	if ($note1 == 1) {
		{
			$noteWort = "Sehr gut";
		}
	}
	elseif ($note1 == 2) {
		{
			$noteWort = "Gut";
		}
	}
	elseif ($note1 == 3) {
		{
			$noteWort = "Befriedigend";
		}
	}
	elseif ($note1 == 4) {
		{
			$noteWort = "Ausreichend";
		}
	}
	elseif ($note1 == 5) {
		{
			$noteWort = "Mangelhaft";
		}
	}
	elseif ($note1 == 6) {
		{
			$noteWort = "Ungenügend";
		}
	}
	else {
		echo "<p>Die eingegebene Note ist ungültig</p>";
		$valide = false;
	}
	if ($valide != false) {
		echo "<p>Die Note $note1 entspricht der Schulnote $noteWort</p>";
	}
}



?>