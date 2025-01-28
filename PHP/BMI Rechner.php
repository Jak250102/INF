<!DOCTYPE html>
<html>
<head>
	<title>BMI Rechner</title>
	<style>
		body {
			font-family: Arial, sans-serif;
			margin: 20px;
		}
		h1, h2 {
			color: #333;
		}
		form {
			margin-bottom: 20px;
		}
		label {
			display: inline-block;
			width: 150px;
		}
		input[type="text"] {
			width: 200px;
			padding: 5px;
			margin-bottom: 10px;
		}
		input[type="submit"] {
			padding: 10px 20px;
			background-color: #4CAF50;
			color: white;
			border: none;
			cursor: pointer;
		}
		input[type="submit"]:hover {
			background-color: #45a049;
		}
		.green {
			color: green;
		}
		.red {
			color: red;
		}
		.table-container {
			margin-top: 20px;
		}
		table {
			width: 100%;
			border-collapse: collapse;
		}
		table, th, td {
			border: 1px solid #ddd;
		}
		th, td {
			padding: 8px;
			text-align: left;
		}
		th {
			background-color: #f2f2f2;
		}
	</style>
</head>
<body>
	<h1>BMI Rechner</h1>
	<form method="post" action="">
		<label for="height">Größe (in cm):</label>
		<input type="text" id="height" name="height" required><br><br>
		<label for="weight">Gewicht (in kg):</label>
		<input type="text" id="weight" name="weight" required><br><br>
		<input type="submit" value="Berechnen">
	</form>

	<?php
	if ($_SERVER["REQUEST_METHOD"] == "POST") {
		$height = $_POST['height'];
		$weight = $_POST['weight'];

		if ($height > 0 && $weight > 0) {
			$heightInMeters = $height / 100;
			$bmi = $weight / ($heightInMeters * $heightInMeters);
			echo "<h2>Ihr BMI ist: " . round($bmi, 2) . "</h2>";

			if ($bmi < 18.5) {
				echo "<p class='red'>Sie sind zu dünn.</p>";
			} elseif ($bmi < 24.9) {
				echo "<p class='green'>Sie haben Normalgewicht.</p>";
			} elseif ($bmi < 29.9) {
				echo "<p class='red'>Sie sind zu schwer.</p>";
			} else {
				echo "<p class='red'>Sie sind fettleibig.</p>";
			}
		} else {
			echo "<p>Bitte geben Sie gültige Werte ein.</p>";
		}
	}
	?>

	<div class="table-container">
		<h2>BMI Kategorien</h2>
		<table>
			<tr>
				<th>Kategorie</th>
				<th>BMI Bereich</th>
			</tr>
			<tr>
				<td>Untergewicht</td>
				<td>Weniger als 18.5</td>
			</tr>
			<tr>
				<td>Normalgewicht</td>
				<td>18.5 - 24.9</td>
			</tr>
			<tr>
				<td>Übergewicht</td>
				<td>25 - 29.9</td>
			</tr>
			<tr>
				<td>Fettleibigkeit</td>
				<td>30 oder mehr</td>
			</tr>
		</table>
	</div>
</body>
</html>