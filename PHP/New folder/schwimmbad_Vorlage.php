<!doctype html>
<html>

<head>
	<link rel="stylesheet" href="style.css">
	<meta charset="utf-8">
	<title>Städische Bäderbetriebe</title>
</head>

<body>

	<div id="page">

		<h2>Städtische Bäderbetriebe</h2>
		<h3>Mannheim</h3>

		<h4>Preistabelle</h4>

		<table>
			<tr>
				<td>Freibad:</td>
				<!-- <td><?php echo isset($_GET['VarA']) ? $_GET['VarA'] : 'Nicht gesetzt'; ?></td> -->
				<td name="Freibad">3,00€</td>
			</tr>
			<tr>
				<td>Hallenbad:</td>
				<td name="Hallenbad">4,00€</td>
			</tr>
		</table>

		<!-- HTML-Eingabeformular -->
		<form method="GET">

			<!-- Radiobutton -->
			<div class="auswahl">
				<fieldset>
					<legend>Auswahl Badanlage</legend>
					<input id="freibad" type="radio" name="bad" value="Freibad" checked>
					<label for="freibad">Freibad</label><br>
					<input id="hallenbad" type="radio" name="bad" value="Hallenbad">
					<label for="hallenbad">Hallenbad</label>
				</fieldset>
			</div>

			<div class="mitglied">
				<label for="ja">DLRG-Mitglied: Ja</label>
				<input id="ja" type="checkbox" name="dlrg" value="Ja">
			</div>

			<input type="submit" name="ok" value="Berechne Preis!">
		</form>

		<?php
		$preis  = 0;
		if (isset($_GET["ok"])) {
			$pH = 4.00;
			$pF = 3.00;
			$bad = $_GET["bad"];
			$dlrg = isset($_GET["dlrg"]);

			if ($dlrg == "Ja") {
				$dlrg = True;
			} else {
				$dlrg = False;
			}
			if ($bad == "Freibad") {
				$bad = True;
			} elseif ($bad == "Hallenbad") {
				$bad = False;
			}

			function ausgabe($varA, $varB)
			{
				$preis = 0;
				if ($varA == True) {
					$preis = 3.00;
				} elseif ($varA == False) {
					$preis = 4.00;
				}
				if ($varB == True) {
					$preis = $preis * 0.75;
				}
				return $preis;
			}

			$preis = ausgabe($bad, $dlrg);

			echo $preis . "€<br>";
		}

		?>