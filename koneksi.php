<?php

$mysql = new Mysqli("localhost","root","","cb");


function kemiripan_cosine($abstrak_a, $abstrak_b)
{
	$pecah_a = explode(" ", $abstrak_a);
	$pecah_b = explode(" ", $abstrak_b);

	$pecah_a = array_unique($pecah_a);
	$pecah_b = array_unique($pecah_b);

	$bersih_a = array();
	foreach ($pecah_a as $k => $v) {
		if ($v!=="" || $v!=="") {
			$bersih_a[] = $v;
		}
	}

	$bersih_b = array();
	foreach ($pecah_b as $k => $v) {
		if ($v!=="" || $v!=="") {
			$bersih_b[] = $v;
		}
	}

	// $bersih_a = ['saya','makan','kucing'];
	// $bersih_b = ['saya','makan','lemper'];
	$a_irisan_b = count(array_intersect($bersih_a, $bersih_b));
	$jumlah_a = count($bersih_a);
	$jumlah_b = count($bersih_b);

	$kemiripan = $a_irisan_b / sqrt($jumlah_a*$jumlah_b);
	
	$kemiripan = number_format($kemiripan,2);
	return $kemiripan;
}
?>