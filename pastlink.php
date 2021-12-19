<?php
/*====================================================================================================================*\
  PastLink - HTTP Server for manipulating ALTTP Randomizer on BizHawk
  by Phillip Shaw (HatchlingByHeart) 2021
\*====================================================================================================================*/

require_once "config.php";
// Read Mode set: Database -> Server -> BizHawk
// This mode should only be accessed by BizHawk
if ($_GET["mode"] == "readDB") {
	// Check the requests are coming from your copy of BizHawk and aren't spoofed.
	// Because BizHawk's HTTP client doesn't report a User Agent to the server, this needs to be done with a key
	// set in both "config.php" and "pastlink.lua". Connection is rejected if these keys do not match.
	if ($_GET["key"] == BIZHAWK) {
		$db = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_BASE);
		$result = $db->query("SELECT * FROM `".DB_PRFX."queue` ORDER BY `time` ASC LIMIT 1;");
		$row = $result->fetch_assoc();
		// Check if reading from database was successful.
		// If it is, send message to BizHawk and remove message from the queue.
		// TODO: Implement a client-side check before deleting from queue instead, in case emulator does not receive the request.
		if ($row) {
			echo $row['message'];
			$result = $db->query("DELETE FROM `".DB_PRFX."queue` WHERE `id` = '".$row['id']."';");
		}
	}
	// Requester is not using the correct key, deny access and kill script.
	else {
		die();
	}
}
// Write Mode set: Server -> Database
// This mode should only be accessed by the server.
else if ($_GET["mode"] == "writeDB") {
	// Check if username and message is defined and contains something, no point in sending otherwise.
	if (isset($user) && $user != "") {
		if (isset($message) && $message != "") {
			$db = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_BASE);
			// Filter usernames to prevent XSS attacks, SQL injection, and other arbitrary script execution.
			$user = mysqli_real_escape_string($db, strip_tags($_POST['user']));
			$result = $db->query("INSERT INTO ".DB_PRFX."queue (id, time, user, ip, message) VALUES (NULL, '".time()."', '".$user."', '".$_SERVER['REMOTE_ADDR']."', '".$_POST['message']."');");
			if ($result) {
				echo "";
			}
		}
	}
	// Message is not set or is blank, don't bother submitting and kill script.
	else {
		die();
	}
}
//Mode not defined, abort and kill script.
else {
	die();
}
?>