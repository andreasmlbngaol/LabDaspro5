<?php


function area($length, $width) {
    return $length * $width;
}

function show($area) {
    echo "Luas = $area";
}










//main program


$panjang = 4;
$lebar = 5;
$luas = area($panjang, $lebar);
show($luas);
?>