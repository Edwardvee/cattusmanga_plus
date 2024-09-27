<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST, GET, OPTIONS');
header('Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With');

header('Content-Type: application/json; charset=UTF-8');
require_once "../../server/androidConfig.php";
require_once "../../resources/androidFunctions.php";
$input = json_decode(file_get_contents('php://input'), true);
if (!isset($input['username']) || !isset($input['password'])) {
    echo json_encode(["status" => "error", "message" => "Invalid input"]);
    exit();
}

$username = $conn->real_escape_string($input['username']);
$password = $conn->real_escape_string($input['password']);

$json = logInUser($conn, $username, $password, true);
echo $json;
