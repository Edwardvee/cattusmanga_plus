<?php 
session_start();
require_once("../../server/config.php");
require_once("../../resources/funciones.php");
if(isset($_POST) & !empty($_POST)){
$like = checkLike($conn, $_SESSION["datos"]["ID"]);
if (mysqli_num_rows($like) != 0){
    echo "liked";
}
else{
    echo "unliked";
}}
