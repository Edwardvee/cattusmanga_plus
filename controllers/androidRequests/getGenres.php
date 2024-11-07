<?php
if ($_SERVER["REQUEST_METHOD"] == "GET") {
    require_once "../../server/androidConfig.php";
    $sql = "SELECT * FROM mangagenders ORDER BY g_ID DESC;";
    $result = $conn->query($sql);
    if ($conn->affected_rows > 0) {
        $json = "{\"data\":[";
        while ($row = $result->fetch_assoc()) {
            $json = $json . json_encode($row);
            $json = $json . ",";
        }
        $json = substr(trim($json), 0, -1);
        $json = $json . "]}";
    }
    echo $json;
    $result->close();
    $conn->close();
}
