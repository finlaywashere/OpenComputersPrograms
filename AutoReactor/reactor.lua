local comp = require("component")
local reactor = comp.getPrimary("br_reactor")

local MAX_RF = 10000000

while(true)
do
	local energy = reactor.getEnergyStored()
	local percentage = energy / MAX_RF
	if percentage <= .1 then
		reactor.setActive(true)
		print("Activating Reactor")
	elseif percentage >= .9 then
		reactor.setActive(false)
		print("Deactivating Reactor")
	end
	os.sleep(30)
end
