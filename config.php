<?php
// MySQL/MariaDB Database Configuration
define("DB_HOST", "localhost");
define("DB_USER", "pastlink");
define("DB_PASS", "ECjFpMhctHVqu69");
define("DB_BASE", "pastlink");
define("DB_PRFX", "pastlink_");

// BizHawk Key
// BIZHAWK should match the key set in the "key" variable in pastlink.lua
// This prevents unauthorized copies of PastLink from connecting to your emulator.
// Treat this like a password, it should be strong, and not given to anybody else. 
define("BIZHAWK", "6a78fa6d82ed0a12");

// Cooldown for each user, in seconds.
define("COOLDOWN", 10);
?>