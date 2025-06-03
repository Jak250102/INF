<?php

function arraySearch($array, $wert) {
	$erfolg = -1;
	$unten = 0;
	$oben = count($array);
	$mitte = 0;
	WHILE (($unten <= $oben) AND ($erfolg == -1)) {
		$mitte = (($unten + $oben) / 2);
		IF ($array[$mitte] < $wert) {
			$unten = $mitte;
			break;

		} ELSEIF ($array[$mitte] > $wert) {
			$oben = $mitte - 1;
		} ELSE {
			$erfolg = $mitte;
		}
	}
	return $erfolg;
}



?>