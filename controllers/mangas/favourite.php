<?php
session_start();
require_once("../../server/config.php");
require_once("../../resources/funciones.php");
$mangaid = $_POST['manga'];

// Pregunto si le dio fav

$resVerifyFav = checkFav($conn, $_SESSION['datos']["ID"], $mangaid);

//Verifico si no le dio fav
if (mysqli_num_rows($resVerifyFav) == 0) {
    $sqlFav = "UPDATE userprofile SET favourite_manga_ID = '$mangaid'  WHERE User_ID = '" . $_SESSION['datos']['ID']."'";
    $resFav = mysqli_query($conn, $sqlFav);
    if (!$resFav) {
        die('Error de Consulta: ' . mysqli_error($conn));
    }
    echo "fav";
} else {
    // Quito el like de la db
    $sqlDisfav = "UPDATE userprofile SET favourite_manga_ID = NULL WHERE user_id= '" . $_SESSION['datos']['ID'] . "'";
    $resDisfav = mysqli_query($conn, $sqlDisfav);
    if (!$resDisfav) {
        die('Error de Consulta: ' . mysqli_error($conn));
        
    }
    echo "notfav";
}

