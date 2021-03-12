-- Developped by Ozne#4870
-- Reproduction and resell forbiden
-- GNU license active
-- join my discord for more https://discord.gg/nx3TKM5

ESX = nil
Citizen.CreateThread(function()	while ESX == nil do	TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)	Citizen.Wait(0)	end	end)

-- Shower references to https://web.archive.org/web/20191203232109/https://wiki.rage.mp/index.php?title=Interiors_and_Locations

douche = {
	{-767.56, 327.43, 169.70},		-- High End Apartment
	{254.29, -1000.13, -99.93}, 	-- Low End Apartment
	{346.89, -995.13, -100.11}, 	-- Medium End Apartment
	{-38.57, -581.95, 77.87},  		-- 4 Integrity Way, Apt 28
	{-32.47, -587.41, 82.95}, 		-- 4 Integrity Way, Apt 30	
	{-1453.75, -555.47, 71.88},		-- Dell Perro Heights, Apt 4
	{-1461.38, -534.96, 49.77},	    -- Dell Perro Heights, Apt 7
	{-898.05, -368.57, 112.11},		-- Richard Majestic, Apt 2
	{-591.71, 49.14, 96.04},		-- Tinsel Towers, Apt 42
	{-796.38, 333.36, 209.93},		-- Eclipse Towers, Apt 3
	{-168.89, 489.73, 132.87},		-- 3655 Wild Oats Drive
	{335.91, 430.56, 145.6},		-- 2044 North Conker Avenue
	{373.9, 413.97, 141.13},		-- 2045 North Conker Avenue
	{-673.75, 588.4, 140.6},		-- 2862 Hillcrest Avenue
	{-765.49, 612.72, 139.36},		-- 2868 Hillcrest Avenue
	{-856.46, 682.36, 148.08},		-- 2874 Hillcrest Avenue
	{120.83, 551.01, 179.53},		-- 2677 Whispymound Drive	
	{-1287.27, 440.41, 93.12}		-- 2133 Mad Wayne Thunder
}

local sortir = false
local encour = false

Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
			for i = 1, #douche do
				coorddouche = douche[i]
				if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), coorddouche[1], coorddouche[2], coorddouche[3], true ) < 2 then
					if encour == false then
					ESX.ShowHelpNotification('Appuyez ~INPUT_CONTEXT~ pour ~b~prendre une douche~s~')
					-- ENGLISH : ESX.ShowHelpNotification('Press ~INPUT_CONTEXT~ to ~b~take a shower~s~')
					if IsControlJustPressed(1, 51) then
						ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
							if skin.sex == 0 then
								local clothesSkin = { -- male skins , change if u have addon clothes
								['bags_1'] = 0, ['bags_2'] = 0,
								['tshirt_1'] = 15, ['tshirt_2'] = 15,
								['torso_1'] = 15, ['torso_2'] = 0,
								['arms'] = 15,
								['pants_1'] = 61, ['pants_2'] = 6,
								['shoes_1'] = 34, ['shoes_2'] = 0,
								['mask_1'] = 0, ['mask_2'] = 0,
								['bproof_1'] = 0,
								['helmet_1'] = -1, ['helmet_2'] = 0,
								["decals_1"] = -1, ["decals_2"] = 0,
								['chain_1'] = 0, ['chain_2'] = 0,
								['glasses_1'] = 0, ['glasses_2'] = 0
								}
								TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
							else
								local clothesSkinfemale = { -- female skins , change if u have addon clothes
									['bags_1'] = 0, ['bags_2'] = 0,
									['tshirt_1'] = 15, ['tshirt_2'] = 15,
									['torso_1'] = 15, ['torso_2'] = 0,
									['arms'] = 15,
									['pants_1'] = 61, ['pants_2'] = 6,
									['shoes_1'] = 34, ['shoes_2'] = 0,
									['mask_1'] = 0, ['mask_2'] = 0,
									['bproof_1'] = 0,
									['helmet_1'] = -1, ['helmet_2'] = 0,
									["decals_1"] = -1, ["decals_2"] = 0,
									['chain_1'] = 0, ['chain_2'] = 0,
									['glasses_1'] = 0, ['glasses_2'] = 0
									}
									TriggerEvent('skinchanger:loadClothes', skin, clothesSkinfemale)
							end
						end)
						local coords = GetEntityCoords(PlayerPedId())
						encour = true
						FreezeEntityPosition((PlayerPedId()), true)
						if not HasNamedPtfxAssetLoaded("core") then
							RequestNamedPtfxAsset("core")
							while not HasNamedPtfxAssetLoaded("core") do
								Wait(1)
							end
						end
						TaskStartScenarioInPlace((PlayerPedId()), "PROP_HUMAN_STAND_IMPATIENT", 0, true)
						UseParticleFxAssetNextCall("core") particles  = StartParticleFxLoopedAtCoord("ent_sht_water", coords.x, coords.y, coords.z +1.2, 0.0, 0.0, 0.0, 1.0, false, false, false, false) UseParticleFxAssetNextCall("core") Citizen.Wait(3000) particles2  = StartParticleFxLoopedAtCoord("ent_sht_water", coords.x, coords.y, coords.z +1.2, 0.0, 0.0, 0.0, 1.0, false, false, false, false) UseParticleFxAssetNextCall("core") Citizen.Wait(3000) particles3  = StartParticleFxLoopedAtCoord("ent_sht_water", coords.x, coords.y, coords.z +1.2, 0.0, 0.0, 0.0, 1.0, false, false, false, false) UseParticleFxAssetNextCall("core") Citizen.Wait(3000) particles4  = StartParticleFxLoopedAtCoord("ent_sht_water", coords.x, coords.y, coords.z +1.2, 0.0, 0.0, 0.0, 1.0, false, false, false, false) UseParticleFxAssetNextCall("core") Citizen.Wait(3000) particles5  = StartParticleFxLoopedAtCoord("ent_sht_water", coords.x, coords.y, coords.z +1.2, 0.0, 0.0, 0.0, 1.0, false, false, false, false) print("^2======================================================================^7") print("^1Creator :^4 Ozne") print("^1My discord :^4 https://discord.gg/nx3TKM5") print("^1My Discord Tag :^4 Ozne#4870") print("^1Youtube :^4 Ozne") print("^2======================================================================^7")
						timer = 8
						sortir = true
						Citizen.CreateThread(function()
							while sortir do
								Citizen.Wait(0)
								Citizen.Wait(1000)
								if(timer > 0)then
									timer = timer - 1
								elseif (timer == 0) then
									encour = false
									FreezeEntityPosition((PlayerPedId()), false)
									ESX.ShowNotification("~b~Vous etes tout propre !")
									-- ENGLISH : ESX.ShowNotification("~b~You are all clean !")
									ClearPedTasksImmediately(PlayerPedId()) 
									ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
										TriggerEvent('skinchanger:loadSkin', skin)
									end)
									StopParticleFxLooped(particles, 0) StopParticleFxLooped(particles2, 0) StopParticleFxLooped(particles3, 0) StopParticleFxLooped(particles4, 0) StopParticleFxLooped(particles5, 0)
									sortir = false
								end
							end
						end)
					end
				end
				end
			end
	end
end)

-- Developped by Ozne#4870
-- Reproduction and resell forbiden
-- GNU license active
-- join my discord for more https://discord.gg/nx3TKM5