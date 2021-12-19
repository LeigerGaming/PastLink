<?php

// TODO: Handle this dynamically in the future
$maintenance_mode = true;

// Check for maintenance mode
if ($maintenance_mode) {
    echo "This site is in Maintenance Mode." . PHP_EOL;
    exit(0);
}

// TODO: We are NOT in maintenance mode, do whatever else we need to do.
