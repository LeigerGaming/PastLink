-- PastLink is currently in Alpha and NOT READY FOR RELEASE, use only for testing until further notice.
while true do
	if refresh <= 0 then
		request = comm.httpGet("https://"..url.."/pastlink.php?mode=readDB&key="..key)
		if request = "WRONGKEY" then
			console.writeline("ERROR: BizHawk sent the wrong key to the host. Access is denied! Check the keys in config.php and pastlink.lua match.")
			end
		else
			-- Do stuff if successful.
	else
		refresh = refresh-1;
	emu.frameadvance();
end