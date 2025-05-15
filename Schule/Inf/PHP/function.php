<?php
echo "<H1>Eine Funktion ist ein Programmteil der beliebig oft aufgerufen und abgearbeitet werden kann.</H1> <br>";
echo " 1.) Funktionen ohne Übergabeparameter und ohne Rückgabewert.<br>";
function myFunction() //Funktionsname frei wählbar
{
	// Anweisungen
}

myFunction(); //Funktionsaufruf


echo " 2.) Funktion mit Übergabeparameter und ohne Rückgabewert<br>";
function myFunction2(int $varA, float $varB) //Funktionsname frei wählbar Übergabeparameter Typisierung optional
{
	//Anweisungen
}
myFunction2(3, 4.5); //Funktionsaufruf mit Übergabeparametern

echo " 3.) Funktion mit Übergabeparameter und Rückgabewert<br>";
function myFunction3(int $varA, float $varB): float //Funktionsname frei wählbar Übergabeparameter Typisierung optional Rückgabewert Typisierung optional
{
	//Anweisungen
	$ergebnis = $varA + $varB; // Example calculation for $ergebnis
	return $ergebnis; //Rückgabewert
}
$res= myFunction3(4, 3.5); //Funktionsaufruf mit Übergabeparametern und Rückgabewert Rükgabewert wird in Variable gespeichert
?>

