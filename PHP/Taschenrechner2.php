<!DOCTYPE html>
<html lang="de">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Taschenrechner</title>
</head>
<body>
	<h1>Mein Taschenrechner</h1>
	<form>
		<label for="rechnung">Rechnung eingeben:</label>
		<input type="text" name="rechnung" id="rechnung" placeholder="z.B. 4+5*2">
		<br>
		<br>
		<input type="submit" value="Berechnen" name="submit">
	</form>
	<hr>

	<?php
	if (isset($_GET["submit"])) {
		$rechnung = $_GET["rechnung"];

		// Überprüfung: Nur Zahlen, Operatoren, Punkte, Kommas, Klammern und Leerzeichen erlauben
		if (preg_match('/^[0-9+\-*\/().,\s]+$/', $rechnung)) {

			// Ersetze Kommas durch Punkte für Dezimalzahlen
			$rechnung = str_replace(',', '.', $rechnung);

			// Achtung: eval() führt potentiell gefährlichen Code aus, 
			// daher sollte der Input streng kontrolliert werden.
			try {
				// Berechnung der Rechnung mittels eval
				// Das Ergebnis wird in der Variable $result gespeichert.
				eval("\$result = $rechnung;");
				echo "<p>$rechnung = $result</p>";
			} catch (Throwable $e) {
				echo "<p>Fehler beim Berechnen der Rechnung.</p>";
			}
		} else {
			echo "<p>Ungültige Eingabe. Bitte nur Zahlen, Punkt, Komma, Operatoren und Klammern verwenden.</p>";
		}
	}
	?>
</body>
</html>
