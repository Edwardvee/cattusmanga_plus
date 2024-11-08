<?php
session_start();
require_once("../../server/config.php");

require_once("../../resources/funciones.php");

$resVerifyLike = checkLike($conn, $_SESSION['datos']['ID']);
// Pregunto si le dio like
    if (mysqli_num_rows($resVerifyLike) == 0) {
        // Añado el like a la db
        $sqlLike = "INSERT INTO mangalikes (user_id, manga_id) VALUES ('" . $_SESSION['datos']['ID'] . "' , '" . $_POST['manga']. "')";
        $resLike = mysqli_query($conn, $sqlLike);
        
        if (!$resLike) {
           die('Error de Consulta ' . mysqli_error($conn));
        }
        echo "liked";
    } else {
        // Quito el like de la db
        $sqlDislike = "DELETE FROM mangalikes WHERE manga_id= '" . $_POST['manga'] . "' AND user_id= '" . $_SESSION['datos']['ID'] . "' ";
        $resDislike = mysqli_query($conn, $sqlDislike);
        if (!$resDislike) {
           die('Error de Consulta ' . mysqli_error($conn));
        }
        echo "unliked";
    }
