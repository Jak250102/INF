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
		fakultaet($n);
	}
	function fakultaet($n)
	{
		$ergebnis = 1;

		for ($i = 1; $i <= $n; $i++) {
			echo $i . " * " . $ergebnis." = ";
			$ergebnis = $ergebnis * $i;
			echo $ergebnis . "<br>";

		}
		return $ergebnis;
	}
	?>
</body>

</html>