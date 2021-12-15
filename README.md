# PastLink
A Web-based alternative to Crowd Control for manipulating an A Link to the Past Randomizer game. Useful as a Streamer vs Chat tool.

Requirements:
- A server with the following installed:
- HTTP server (Apache is recommended)
- PHP 7.x (only tested with PHP 7.2, may work with other 7.x versions)
- MySQL or MariaDB database system, with permissions to create and modify your own database and tables.

- BizHawk Emulator with BSNES Core
This is the only supported emulator/core at the moment.
Unfortunately, Snes9x-rr and BizHawk's Snes9x core both do not play nice with PastLink.

Installation Instructions:
1. Change the "config.php" file to reflect your configuration.

2. Upload the "pastlink" folder to a web server of your choice that meets the requirements above.

3. Put the included BizHawk-http.bat file in the same directory as BizHawk (EmuHawk.exe) and launch it. This is required to start BizHawk with Lua's HTTP client enabled. This will also automatically open the Lua console for you. PastLink will not work if you launch EmuHawk.exe directly.
 
4. Run your Zelda A Link to the Past Randomizer ROM in BizHawk. A vanilla A Link to the Past ROM from any region will also work as they share the same WRAM addresses, but where's the fun in that?

5. Using the Lua Console, load the PastLink.lua script and run it. The console output will indicate if the script is working or if it isn't working and why.
 
6. If everything is working correctly, users can visit http://mywebserver.com/pastlink (mywebserver.com being the IP address or domain name for your web server) to manipulate your ALTTP Randomizer run!