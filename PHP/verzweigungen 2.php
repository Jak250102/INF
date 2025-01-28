<!DOCTYPE html>
<html lang="de">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
</head>

<body>
	<h1>Hier können Sie Alkohol kaufen...</h1>
	<form>
		<label for="">Bitte geben Sie ihr Alter ein:
			<input type="text" name="alter">
		</label>
		<input type="submit" name="senden" value="OK">
	</form>

</body>

</html>

<?php



//Zweifachverzweigung
if (isset($_GET["senden"])) {
	$alter = $_GET['alter'];

	if ($alter >= 60) {
		echo "Hier bekommst du Tee<br>";
	} else if ($alter >= 18) {
		echo "Enjoy...<br>";
	} else {
		echo "Du bist zu jung<br>";
	}
	echo "<p>***Programmende***</p>";
}
?>