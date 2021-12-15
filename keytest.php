<?php
require_once "config.php";
echo ($_GET['key'] == BIZHAWK ? "Correct:" : "Incorrect:")." Key is: ".($_GET['key'] != "" ? $_GET['key'] : "not found");
?>