-- PastLink is currently in Alpha and NOT READY FOR RELEASE, use only for testing until further notice.

-- URL string of the domain and path of the server to connect to.
url = "example.com/pastlink"

-- Key string. This value should match the BIZHAWK constant in config.php, or connection will fail.
key = "****************"

-- Time (in frames) between calls to server.
-- Higher values will save server resources but increase command delay.
-- Default (Recommended) Value: 60
refreshtime = 60
refresh = refreshtime

-- Place all main code inside a while loop to maintain indefinite operation.
while true do
	-- Refresh counter expired, time to make a call to the server.
	if refresh <= 0 then
		request = comm.httpGet("https://"..url.."/pastlink.php?mode=readDB&key="..key)
		-- If the request was made with a non-matching key, the server will deny access.
		-- In this case, output an error and terminate script execution.
		if request == "WRONGKEY" then
			console.writeline("ERROR: BizHawk sent the wrong key to the host. Access is denied! Check the keys in config.php and pastlink.lua match.")
			end
		else
			-- Do stuff if successful.
			-- TODO: Actual parsing of messages and emulator memory manipulation.
			-- Reset the refresh counter back to initial value to begin countdown again.
			refresh = refreshtime
	else
		-- Not time yet, decrement one frame from timer.
		refresh = refresh-1;
	emu.frameadvance();
end