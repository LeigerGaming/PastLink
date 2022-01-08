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
			-- Cucco Storm aka Psychotic Chickens!
			while (cuccostorm == true) do
				if (mainmemory.readbyte(0x000E20) == 11) then
					mainmemory.writebyte(0x000DA0, 35)
				end
				if (mainmemory.readbyte(0x000E21) == 11) then
					mainmemory.writebyte(0x000DA1, 35)
				end
				if (mainmemory.readbyte(0x000E22) == 11) then
					mainmemory.writebyte(0x000DA2, 35)
				end
				if (mainmemory.readbyte(0x000E23) == 11) then
					mainmemory.writebyte(0x000DA3, 35)
				end
				if (mainmemory.readbyte(0x000E24) == 11) then
					mainmemory.writebyte(0x000DA4, 35)
				end
				if (mainmemory.readbyte(0x000E25) == 11) then
					mainmemory.writebyte(0x000DA5, 35)
				end
				if (mainmemory.readbyte(0x000E26) == 11) then
					mainmemory.writebyte(0x000DA6, 35)
				end
				if (mainmemory.readbyte(0x000E27) == 11) then
					mainmemory.writebyte(0x000DA7, 35)
				end
				if (mainmemory.readbyte(0x000E28) == 11) then
					mainmemory.writebyte(0x000DA8, 35)
				end
				if (mainmemory.readbyte(0x000E29) == 11) then
					mainmemory.writebyte(0x000DA9, 35)
				end
				if (mainmemory.readbyte(0x000E2A) == 11) then
					mainmemory.writebyte(0x000DAA, 35)
				end
				if (mainmemory.readbyte(0x000E2B) == 11) then
					mainmemory.writebyte(0x000DAB, 35)
				end
				if (mainmemory.readbyte(0x000E2C) == 11) then
					mainmemory.writebyte(0x000DAC, 35)
				end
				if (mainmemory.readbyte(0x000E2D) == 11) then
					mainmemory.writebyte(0x000DAD, 35)
				end
				if (mainmemory.readbyte(0x000E2E) == 11) then
					mainmemory.writebyte(0x000DAE, 35)
				end
				if (mainmemory.readbyte(0x000E2F) == 11) then
					mainmemory.writebyte(0x000DAF, 35)
				end
				if (mainmemory.readbyte(0x000E30) == 11) then
					mainmemory.writebyte(0x000DB0, 35)
				end
				if (mainmemory.readbyte(0x000E31) == 11) then
					mainmemory.writebyte(0x000DB1, 35)
				end
				if (mainmemory.readbyte(0x000E32) == 11) then
					mainmemory.writebyte(0x000DB2, 35)
				end
				if (mainmemory.readbyte(0x000E33) == 11) then
					mainmemory.writebyte(0x000DB3, 35)
				end
				emu.frameadvance();
			end
			-- Reset the refresh counter back to initial value to begin countdown again.
			refresh = refreshtime
	else
		-- Not time yet, decrement one frame from timer.
		refresh = refresh-1;
	emu.frameadvance();
end