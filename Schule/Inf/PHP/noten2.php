<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Mein Zeugnisprogramm mit Mehrfachverzweigung</title>
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
$noteWort = "";
$valide = true;

if (isset($_GET["note1"])) {
	$note1 = $_GET["note1"];

	switch ($note1) {
		case 1:
			$noteWort = "Sehr gut";
			break;
		case 2:
			$noteWort = "Gut";
			break;
		case 3:
			$noteWort = "Befriedigend";
			break;
		case 4:
			$noteWort = "Ausreichend";
			break;
		case 5:
			$noteWort = "Mangelhaft";
			break;
		case 6:
			$noteWort = "Ungenügend";
			break;
		default:
			echo "<p>Die eingegebene Note ist ungültig</p>";
			$valide = false;
	}

	if ($valide == true) {
		echo "<p>Die Note $note1 entspricht der Bezeichnung $noteWort</p>";
	}
}
?>