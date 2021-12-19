<?php

// Check for maintenance mode
$maintenance_mode = file_exists(__DIR__ . "/.maintenance");
if ($maintenance_mode) {
    echo "This site is in Maintenance Mode." . PHP_EOL;
    exit(0);
}

require_once "config.php";

// This is just a REALLY rough placeholder page
$html = "<!DOCTYPE html><html lang='en'>
<head>
    <title>PastLink</title>
    <link href='/public/theme.css' rel='stylesheet'>
</head>
<body>";

$html .= "<p>We are NOT in Maintenance Mode. Hello!</p>";
if (DB_HOST !== null) {
    $html .= "<p>Configuration loaded.</p>";
}

$html .= "</body></html>";
echo $html;

?>