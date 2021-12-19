<?php

// Check for maintenance mode
$maintenance_mode = file_exists(__DIR__ . "/.maintenance");
if ($maintenance_mode) {
    echo "This site is in Maintenance Mode." . PHP_EOL;
    exit(0);
}

require_once "config.php";

echo "We are NOT in Maintenance Mode. Hello!" . PHP_EOL;

?>