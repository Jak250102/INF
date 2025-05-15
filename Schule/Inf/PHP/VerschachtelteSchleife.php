<?php
$i = 0;
$j = 0;
for ($i = 1; $i <= 5; $i++) {
	for ($j = 1; $j <= ($i - 1); $j++) {
		if (($i + $j) % 2 == 0) {
			echo "$i und $j\n <br>";
		}
	}
}

$i = 0;
do {
	echo $i."<br>";
	$i++;
} while ($i <= 10);
?>