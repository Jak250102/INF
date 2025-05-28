<?php
// Selection sort with while loops

$array = [44, 55, 18, 6];

// function selectionSort($array)
// {
// 	$i = 0;
// 	while ($i < count($array) - 1) {
// 		$min = $i;
// 		$j = $i + 1;
// 		while ($j < count($array)) {
// 			if ($array[$j] < $array[$min]) {
// 				$min = $j;
// 			}
// 			$j++;
// 		}
// 		$temp = $array[$i];
// 		$array[$i] = $array[$min];
// 		$array[$min] = $temp;
// 		$i++;
// 	}
// 	return $array;
// }

// var_dump(selectionSort($array));

// $array = [44, 55, 18, 6];

function selectionSort2($array)
{
	$i = 0;
	while ($i < count($array)) {
		$min = $i;
		$j = $i + 1;

		while ($j < count($array)) {
			if ($array[$j] < $array[$min]) {
				$min = $j;
			}
			$j++;
		}
		$temp = $array[$min];
		$array[$min] = $array[$i];
		$array[$i] = $temp;
		$i++;
	}
	return $array;
}
echo '</br>';
var_dump(selectionSort2($array));
