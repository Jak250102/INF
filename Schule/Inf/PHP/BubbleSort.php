<?php
function bubbleSort($array)
{
	$max = count($array);
	for ($i = 1; $i <= $max - 1; $i++) {
		for ($j = 0; $j <= $max - $i - 1; $j++) {
			if ($array[$j] > $array[$j + 1]) {
				$temp = $array[$j];
				$array[$j] = $array[$j + 1];
				$array[$j + 1] = $temp;
			}
		}
	}
	return $array;
}
$zahlen = [11, 17, 9, 3, 12];
var_dump($sortedZahlen = bubbleSort($zahlen));

echo"<br>";

function bubbleSort2($array)
{
	$max = count($array);
	for ($i = 1; $i <= $max - 1; $i++) {
		for ($j = 0; $j <= $max - 1 - $i; $j++) {
			if ($array[$j] < $array[$j + 1]) {
				$temp = $array[$j];
				$array[$j] = $array[$j + 1];
				$array[$j + 1] = $temp;
			}
		}
	}
	return $array;
}
var_dump($sortedZahlen = bubbleSort2($zahlen));

