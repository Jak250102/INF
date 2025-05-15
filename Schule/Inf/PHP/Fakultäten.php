<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
</head>

<body>
	<form action="">
		<label>Zahl
			<input type="text" name="Zahl" placeholder="Zahl" value="<?php if (isset($_GET["ok"])) {
																			echo $_GET['Zahl'];
																		} ?>">
		</label>
		<input type="submit" name="ok" value="Berechne">
	</form>
	<?php
	if (isset($_GET["ok"])) {
		$zahl = $_GET["Zahl"];


		$n = $zahl;
		if ($n > 170) {
			echo "<h1>Error Integer Voll</h1>";
			exit;
		}
		fakultaet($n);
		echo "<h1>Die Fakultät von " . $n . " ist " . fakultaet($n) . "</h1>";
	}
	function fakultaet($n)
	{
		$ergebnis = 1;

		for ($i = 1; $i <= $n; $i++) {
			// echo $i . " * " . $ergebnis." = "; ausgabe jeder Schleife
			$ergebnis = $ergebnis * $i;
			// echo $ergebnis . "<br>";

		}
		// echo "<h1>Die Fakultät von " . $n . " ist " . $ergebnis . "</h1>"; ausgabe der Endergebnisse
		return $ergebnis;
	}
	?>
</body>

</html>