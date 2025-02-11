<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Taschenrechner</title>
</head>

<body>
	<h1>Mein Taschenrechner</h1>
	<form>
		<label for="">Zahl1</label>
		<input type="text" name="zahl1">
		<select name="operator" id="">
			<option value="+">+</option>
			<option value="-">-</option>
			<option value="*">*</option>
			<option value="/">/</option>
		</select>
		<label for="">Zahl2</label>
		<input type="text" name="zahl2">
		<br>
		<br>
		<br>
		<input type="submit" value="Berechnen" name="submit">
	</form>
	<hr>
</body>
<?php
$ergebnis = 0;

if (isset($_GET["submit"])) {
	$zahl1 = (float)$_GET["zahl1"];
	$operator = $_GET["operator"];
	$zahl2 = (float)$_GET["zahl2"];

	switch ($operator) {
		case "+":
			$ergebnis = $zahl1 + $zahl2;
			break;
		case "-":
			$ergebnis = $zahl1 - $zahl2;
			break;
		case "*":
			$ergebnis = $zahl1 * $zahl2;
			break;
		case "/":
			if ($zahl2 == 0) {
				echo "<p>Division durch 0 ist nicht erlaubt</p>";
				break;
			} else
				$ergebnis = $zahl1 / $zahl2;
			break;
		default:
			echo "<p>Der Operator ist ungültig</p>";
	}
	echo "$zahl1 $operator $zahl2 = $ergebnis";
}

?>

</html>