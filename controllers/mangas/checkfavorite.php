<?php 
session_start();
require_once("../../server/config.php");
require_once("../../resources/funciones.php");
if(isset($_POST) & !empty($_POST)){
$fav = checkFav($conn, $_SESSION['datos']["ID"], $_POST["manga"]);
if (mysqli_num_rows($fav) != 0){
    echo "fav";
}
else{
    echo "notfav";
}
}
