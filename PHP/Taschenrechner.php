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
		<label>Zahl1
			<input type="text" name="zahl1" placeholder="Zahl1" value="<?php if (isset($_GET["submit"])) {
																			echo $_GET['zahl1'];
																		} ?>">
		</label>
		<select name="operator" id="">
			<option value="+">+</option>
			<option value="-">-</option>
			<option value="*">*</option>
			<option value="/">/</option>
		</select>
		<label>Zahl2
			<input type="text" name="zahl2" placeholder="Zahl2" value="<?php if (isset($_GET["submit"])) {
																			echo $_GET['zahl2'];
																		} ?>">
		</label>
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
	$zahl1 = $_GET["zahl1"];
	$zahl1 += 0;
	$operator = $_GET["operator"];
	$zahl2 = $_GET["zahl2"];

	switch ($operator) {
		case "+":
			$ergebnis = $zahl1 + $zahl2;
			echo $zahl1 . $operator . $zahl2 . "=" . $ergebnis;
			break;
		case "-":
			$ergebnis = $zahl1 - $zahl2;
			echo $zahl1 . $operator . $zahl2 . "=" . $ergebnis;
			break;
		case "*":
			$ergebnis = $zahl1 * $zahl2;
			echo $zahl1 . $operator . $zahl2 . "=" . $ergebnis;
			break;
		case "/":
			if ($zahl2 == 0) {
				echo "<p>Division durch 0 ist nicht erlaubt</p>";
				break;
			} else
				$ergebnis = $zahl1 / $zahl2;
			echo $zahl1 . $operator . $zahl2 . "=" . $ergebnis;
			break;
		default:
			echo "<p>Der Operator ist ungültig</p>";
	}
}

?>

</html>