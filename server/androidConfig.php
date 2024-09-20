<?php
date_default_timezone_set('America/Argentina/Buenos_Aires');

$conn = new mysqli('localhost', 'dasomnyaadmin', 'cattus', 'cattusmanga');

if ($conn->connect_error) {
    die('Error de Conexión (' . mysqli_connect_errno() . ') '
        . mysqli_connect_error());
}
mysqli_set_charset($conn, 'utf8');
