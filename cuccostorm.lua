-- Cucco Storm aka Psychotic Chickens!
-- Tested on BizHawk 2.4 and working 100%
-- This script may be merged with the main script later.
-- All Outdoor Cuccos will summon friends and attack on sight, no need to torture them first!
-- Unfortunately, Cuccos located indoors will not attack, as they were never programmed to in the first place.
while true do
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