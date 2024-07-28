


ESX = nil
ESX = exports["es_extended"]:getSharedObject()
lib.locale()
local resource = GetCurrentResourceName()
local GetCurrentResourceName = GetCurrentResourceName()
aa = [[
  
  
local Drawables = {
	["Top"] = {
		Drawable = 11,
		Table = Variations.Jackets,
		Emote = {Dict = "missmic4", Anim = "michael_tux_fidget", Move = 51, Dur = 1500}
	},
	["Gloves"] = {
		Drawable = 3,
		Table = Variations.Gloves,
		Remember = true,
		Emote = {Dict = "nmt_3_rcm-10", Anim = "cs_nigel_dual-10", Move = 51, Dur = 1200}
	},
	["Shoes"] = {
		Drawable = 6,
		Table = {Standalone = true, Male = 49, Female =46},
		Emote = {Dict = "random@domestic", Anim = "pickup_low", Move = 0, Dur = 1200}
	},
	["Neck"] = {
		Drawable = 7,
		Table = {Standalone = true, Male = 0, Female = 0 },
		Emote = {Dict = "clothingtie", Anim = "try_tie_positive_a", Move = 51, Dur = 2100}
	},
	["Vest"] = {
		Drawable = 9,
		Table = {Standalone = true, Male = 0, Female = 0 },
		Emote = {Dict = "clothingtie", Anim = "try_tie_negative_a", Move = 51, Dur = 1200}
	},
	["Bag"] = {
		Drawable = 5,
		Table = Variations.Bags,
		Emote = {Dict = "anim@heists@ornate_bank@grab_cash", Anim = "intro", Move = 51, Dur = 1600}
	},
	["Mask"] = {
		Drawable = 1,
		Table = {Standalone = true, Male = 0, Female = 0 },
		Emote = {Dict = "mp_masks@standard_car@ds@", Anim = "put_on_mask", Move = 51, Dur = 800}
	},
	["Hair"] = {
		Drawable = 2,
		Table = Variations.Hair,
		Remember = true,
		Emote = {Dict = "clothingtie", Anim = "check_out_a", Move = 51, Dur = 2000}
	},
}

local Extras = {
	["Shirt"] = {
		Drawable = 11,
		Table = {
			Standalone = true, Male = -1, Female = -1,
			Extra = { 
						{Drawable = 8, Id = 15, Tex = 0, Name = "Extra Undershirt"},
			 			{Drawable = 3, Id = 15, Tex = 0, Name = "Extra Gloves"},
			 			{Drawable = 10, Id = 0, Tex = 0, Name = "Extra Decals"},
			  		}
			},
		Emote = {Dict = "clothingtie", Anim = "try_tie_negative_a", Move = 51, Dur = 1200}
	},
	["Pants"] = {
		Drawable = 4,
		Table = {Standalone = true, Male = 55, Female = 15},
		Emote = {Dict = "re@construction", Anim = "out_of_breath", Move = 51, Dur = 1300}
	},
	["Bagoff"] = {
		Drawable = 5,
		Table = {Standalone = true, Male = 0, Female = 0},
		Emote = {Dict = "clothingtie", Anim = "try_tie_negative_a", Move = 51, Dur = 1200}
	},
}

local Props = {
	["Visor"] = {
		Prop = 0,
		Variants = Variations.Visor,
		Emote = {
			On = {Dict = "mp_masks@standard_car@ds@", Anim = "put_on_mask", Move = 51, Dur = 600},
			Off = {Dict = "missheist_agency2ahelmet", Anim = "take_off_helmet_stand", Move = 51, Dur = 1200}
		}
	},
	["Hat"] = {
		Prop = 0,
		Emote = {
			On = {Dict = "mp_masks@standard_car@ds@", Anim = "put_on_mask", Move = 51, Dur = 600},
			Off = {Dict = "missheist_agency2ahelmet", Anim = "take_off_helmet_stand", Move = 51, Dur = 1200}
		}
	},
	["Glasses"] = {
		Prop = 1,
		Emote = {
			On = {Dict = "clothingspecs", Anim = "take_off", Move = 51, Dur = 1400},
			Off = {Dict = "clothingspecs", Anim = "take_off", Move = 51, Dur = 1400}
		}
	},
	["Ear"] = {
		Prop = 2,
		Emote = {
			On = {Dict = "mp_cp_stolen_tut", Anim = "b_think", Move = 51, Dur = 900},
			Off = {Dict = "mp_cp_stolen_tut", Anim = "b_think", Move = 51, Dur = 900}
		}
	},
	["Watch"] = {
		Prop = 6,
		Emote = {
			On = {Dict = "nmt_3_rcm-10", Anim = "cs_nigel_dual-10", Move = 51, Dur = 1200},
			Off = {Dict = "nmt_3_rcm-10", Anim = "cs_nigel_dual-10", Move = 51, Dur = 1200}
		}
	},
	["Bracelet"] = {
		Prop = 7,
		Emote = {
			On = {Dict = "nmt_3_rcm-10", Anim = "cs_nigel_dual-10", Move = 51, Dur = 1200},
			Off = {Dict = "nmt_3_rcm-10", Anim = "cs_nigel_dual-10", Move = 51, Dur = 1200}
		}
	},
}

LastEquipped = {}
Cooldown = false

local function PlayToggleEmote(e, cb)
	local Ped = PlayerPedId()
	while not HasAnimDictLoaded(e.Dict) do RequestAnimDict(e.Dict) Wait(100) end
	if IsPedInAnyVehicle(Ped) then e.Move = 51 end
	TaskPlayAnim(Ped, e.Dict, e.Anim, 3.0, 3.0, e.Dur, e.Move, 0, false, false, false)
	local Pause = e.Dur-500 if Pause < 500 then Pause = 500 end
	IncurCooldown(Pause)
	Wait(Pause) -- Lets wait for the emote to play for a bit then do the callback.
	cb()
end

function ResetClothing(anim)
	local Ped = PlayerPedId()
	local e = Drawables.Top.Emote
	if anim then TaskPlayAnim(Ped, e.Dict, e.Anim, 3.0, 3.0, 3000, e.Move, 0, false, false, false) end
	for k,v in pairs(LastEquipped) do
		if v then
			if v.Drawable then SetPedComponentVariation(Ped, v.Id, v.Drawable, v.Texture, 0)
			elseif v.Prop then ClearPedProp(Ped, v.Id) SetPedPropIndex(Ped, v.Id, v.Prop, v.Texture, true) end
		end
	end
	LastEquipped = {}
end

function ToggleClothing(which, extra)
	if Cooldown then return end
	local Toggle = Drawables[which] if extra then Toggle = Extras[which] end
	local Ped = PlayerPedId()
	local Cur = { -- Lets check what we are currently wearing.
		Drawable = GetPedDrawableVariation(Ped, Toggle.Drawable), 
		Id = Toggle.Drawable,
		Ped = Ped,
		Texture = GetPedTextureVariation(Ped, Toggle.Drawable),
	}
	local Gender = IsMpPed(Ped)
	if which ~= "Mask" then
		if not Gender then Notify(Lang("NotAllowedPed")) return false end -- We cancel the command here if the person is not using a multiplayer model.
	end
	local Table = Toggle.Table[Gender]
	if not Toggle.Table.Standalone then -- "Standalone" is for things that dont require a variant, like the shoes just need to be switched to a specific drawable. Looking back at this i should have planned ahead, but it all works so, meh!
		for k,v in pairs(Table) do
			if not Toggle.Remember then
				if k == Cur.Drawable then
					PlayToggleEmote(Toggle.Emote, function() SetPedComponentVariation(Ped, Toggle.Drawable, v, Cur.Texture, 0) end) return true
				end
			else
				if not LastEquipped[which] then
					if k == Cur.Drawable then
						PlayToggleEmote(Toggle.Emote, function() LastEquipped[which] = Cur SetPedComponentVariation(Ped, Toggle.Drawable, v, Cur.Texture, 0) end) return true
					end
				else
					local Last = LastEquipped[which]
					PlayToggleEmote(Toggle.Emote, function() SetPedComponentVariation(Ped, Toggle.Drawable, Last.Drawable, Last.Texture, 0) LastEquipped[which] = false end) return true
				end
			end
		end
		Notify(Lang("NoVariants")) return
	else
		if not LastEquipped[which] then
			if Cur.Drawable ~= Table then 
				PlayToggleEmote(Toggle.Emote, function()
					LastEquipped[which] = Cur
					SetPedComponentVariation(Ped, Toggle.Drawable, Table, 0, 0)
					if Toggle.Table.Extra then
						local Extras = Toggle.Table.Extra
						for k,v in pairs(Extras) do
							local ExtraCur = {Drawable = GetPedDrawableVariation(Ped, v.Drawable),  Texture = GetPedTextureVariation(Ped, v.Drawable), Id = v.Drawable}
							SetPedComponentVariation(Ped, v.Drawable, v.Id, v.Tex, 0)
							LastEquipped[v.Name] = ExtraCur
						end
					end
				end)
				return true
			end
		else
			local Last = LastEquipped[which]
			PlayToggleEmote(Toggle.Emote, function()
				SetPedComponentVariation(Ped, Toggle.Drawable, Last.Drawable, Last.Texture, 0)
				LastEquipped[which] = false
				if Toggle.Table.Extra then
					local Extras = Toggle.Table.Extra
					for k,v in pairs(Extras) do
						if LastEquipped[v.Name] then
							local Last = LastEquipped[v.Name]
							SetPedComponentVariation(Ped, Last.Id, Last.Drawable, Last.Texture, 0)
							LastEquipped[v.Name] = false
						end
					end
				end
			end)
			return true
		end
	end
	Notify(Lang("AlreadyWearing")) return false
end

function ToggleProps(which)
	if Cooldown then return end
	local Prop = Props[which]
	local Ped = PlayerPedId()
	local Gender = IsMpPed(Ped)
	local Cur = { -- Lets get out currently equipped prop.
		Id = Prop.Prop,
		Ped = Ped,
		Prop = GetPedPropIndex(Ped, Prop.Prop), 
		Texture = GetPedPropTextureIndex(Ped, Prop.Prop),
	}
	if not Prop.Variants then
		if Cur.Prop ~= -1 then -- If we currently are wearing this prop, remove it and save the one we were wearing into the LastEquipped table.
			PlayToggleEmote(Prop.Emote.Off, function() LastEquipped[which] = Cur ClearPedProp(Ped, Prop.Prop) end) return true
		else
			local Last = LastEquipped[which] -- Detect that we have already taken our prop off, lets put it back on.
			if Last then
				PlayToggleEmote(Prop.Emote.On, function() SetPedPropIndex(Ped, Prop.Prop, Last.Prop, Last.Texture, true) end) LastEquipped[which] = false return true
			end
		end
		Notify(Lang("NothingToRemove")) return false
	else
		local Gender = IsMpPed(Ped)
		if not Gender then Notify(Lang("NotAllowedPed")) return false end -- We dont really allow for variants on ped models, Its possible, but im pretty sure 95% of ped models dont really have variants.
		local Variations = Prop.Variants[Gender]
		for k,v in pairs(Variations) do
			if Cur.Prop == k then
				PlayToggleEmote(Prop.Emote.On, function() SetPedPropIndex(Ped, Prop.Prop, v, Cur.Texture, true) end) return true
			end
		end
		Notify(Lang("NoVariants")) return false
	end
end

function DrawDev() -- Draw text for all the stuff we are wearing, to make grabbing the variants of stuff much simpler for people.
	local Entries = {}
	for k,v in PairsKeys(Drawables) do table.insert(Entries, { Name = k, Drawable = v.Drawable }) end
	for k,v in PairsKeys(Extras) do table.insert(Entries, { Name = k, Drawable = v.Drawable }) end
	for k,v in PairsKeys(Props) do table.insert(Entries, { Name = k, Prop = v.Prop }) end
	for k,v in pairs(Entries) do
		local Ped = PlayerPedId() local Cur
		if v.Drawable then
			Cur = { Id = GetPedDrawableVariation(Ped, v.Drawable),  Texture = GetPedTextureVariation(Ped, v.Drawable) }
		elseif v.Prop then
			Cur = { Id = GetPedPropIndex(Ped, v.Prop),  Texture = GetPedPropTextureIndex(Ped, v.Prop) }
		end
		Text(0.2, 0.8*k/18, 0.30, "~o~"..v.Name.."~w~ = \n     ("..Cur.Id.." , "..Cur.Texture..")", false, 1)
		DrawRect(0.23, 0.8*k/18+0.025, 0.07, 0.045, 0, 0, 0, 150)
	end
end

local TestThreadActive = nil
function DevTestVariants(d) -- If debug mode is enabled we can try all the variants to check for scuff.
	if not TestThreadActive then
		Citizen.CreateThread(function()
			TestThreadActive = true
			local Ped = PlayerPedId()
			local Drawable = Drawables[d]
			local Prop = Props[d]
			local Gender = IsMpPed(Ped)
			if Drawable then
				if Drawable.Table then
					if type(Drawable.Table[Gender]) == "table" then
						for k,v in PairsKeys(Drawable.Table[Gender]) do
							Notify(d.." : ~o~"..k)
							SoundPlay("Open")
							SetPedComponentVariation(Ped, Drawable.Drawable, k, 0, 0)
							Wait(300)
							Notify(d.." : ~b~"..v)
							SoundPlay("Close")
							SetPedComponentVariation(Ped, Drawable.Drawable, v, 0, 0)
							Wait(300)
						end
					end
				end
			elseif Prop then
				if Prop.Variants then
					for k,v in PairsKeys(Prop.Variants[Gender]) do
						Notify(d.." : ~o~"..k)
						SoundPlay("Open")
						SetPedPropIndex(Ped, Prop.Prop, k, 0, true)
						Wait(300)
						Notify(d.." : ~b~"..v)
						SoundPlay("Close")
						SetPedPropIndex(Ped, Prop.Prop, v, 0, true)
						Wait(300)
						ClearPedProp(Ped, Prop.Prop)
						Wait(200)
					end
				end
			end
			TestThreadActive = false
		end)
	else
		Notify("Already testing variants.")
	end
end

RNE("odjeca:pocetak4", function()
	lib.registerContext({
    id = 'start',
    title = 'Event menu',
    menu = 'some_menu',
    options = {
		{
			title = 'Gornji dio',
			description = "Choose",
			event = "test:odjeca"
		},
		{
			title = "Doljni dio",
			description = "Choose",
			event = "test:odjeca2",
		},
		{
			title = "Dodatci",
			description = "Choose",
			event = "test:odjeca3",
		},
		{
			title = "Maska",
			description = "Choose",
			event = "test:16",
		},
		{
			title = "Resetuj odjecu",
			description = "Choose",
			event = "test:17",
		},

    }
  })
 
  lib.showContext('start')
end)

AddEventHandler("test:odjeca", function()
	lib.registerContext({
		id = 'odjeca',
		title = 'Event menu',
		menu = 'some_menu',
		options = {
			{
				title = "Dukserica",
				description = "Choose",
				event = "test:1"
			},
			{
				title = "Majica",
				description = "Choose",
				event = "test:2"
			},
			{
				title = "Rukavice",
				description = "Choose",
				event = "test:3"
			},
			{
				title = "Kapa",
				description = "Choose",
				event = "test:4"
			},
			{
				title = "Kosa",
				description = "Choose",
				event = "test:6"
			},
			{
				title = "Torba",
				description = "Choose",
				event = "test:12"
			},
			{
				title = "",
				description = "< Nazad",
				event = "odjeca:pocetak"
			}
		}
	})
	
	lib.showContext('odjeca')
end)

AddEventHandler("test:odjeca2", function()
	lib.registerContext({
		id = 'odjeca2',
		title = 'Event menu',
		menu = 'some_menu',
		options = {
			{
				title = "Obuca",
				description = "Choose",
				event = "test:13"
			},
			{
				title = "Pantalone",
				description = "Choose",
				event = "test:14"
			},
			{
				title = "",
				description = "< Nazad",
				event = "odjeca:pocetak"
			}
		}
	})
 
  lib.showContext('odjeca2')
end)

AddEventHandler("test:odjeca3", function()
	lib.registerContext({
		id = 'odjeca3',
		title = 'Event menu',
		menu = 'some_menu',
		options = {
			{
				title = "Naocale",
				description = "Choose",
				event = "test:5"
			},
			{
				title = "Nausnice",
				description = "Choose",
				event = "test:7"
			},
			{
				title = "Vrat",
				description = "Choose",
				event = "test:8"
			},
			{
				title = "Sat",
				description = "Choose",
				event = "test:9"
			},
			{
				title = "Narukvnice",
				description = "Choose",
				event = "test:10"
			},
			{
				title = "Vizir",
				description = "Choose",
				event = "test:11"
			},
			{
				title = "Pancir",
				description = "Choose",
				event = "test:15"
			},
			{
				title = "",
				description = "< Nazad",
				event = "odjeca:pocetak"
			}
		}
	})
 
  lib.showContext('odjeca3')
end)
RegisterCommand('openClothingMenu', function()
    TriggerEvent('odjeca:pocetak4')
end, false)

RegisterKeyMapping('openClothingMenu', 'Open Clothing Menu', 'keyboard', 'F3')

AddEventHandler("test:1", function()
	ToggleClothing("Top")
end)
AddEventHandler("test:2", function()
	ToggleClothing("Shirt", true)
end)
AddEventHandler("test:3", function()
	ToggleClothing("Gloves")
end)
AddEventHandler("test:4", function()
	ToggleProps("Hat")
end)
AddEventHandler("test:5", function()
	ToggleProps("Glasses")
end)
AddEventHandler("test:6", function()
	ToggleClothing("Hair")
	TriggerEvent("test:odjeca")
end)
AddEventHandler("test:7", function()
	ToggleProps("Ear")
	TriggerEvent("test:odjeca3")
end)
AddEventHandler("test:8", function()
	ToggleClothing("Neck")
	TriggerEvent("test:odjeca3")
end)
AddEventHandler("test:9", function()
	ToggleProps("Watch")
	TriggerEvent("test:odjeca3")
end)
AddEventHandler("test:10", function()
	ToggleProps("Bracelet")
	TriggerEvent("test:odjeca3")
end)
AddEventHandler("test:11", function()
	ToggleProps("Visor")
	TriggerEvent("test:odjeca3")
end)
AddEventHandler("test:12", function()
	ToggleClothing("Bag")
	TriggerEvent("test:odjeca")
end)
AddEventHandler("test:13", function()
	ToggleClothing("Shoes")
end)
AddEventHandler("test:14", function()
	ToggleClothing("Pants", true)
end)
AddEventHandler("test:15", function()
	ToggleClothing("Vest")
end)
AddEventHandler("test:16", function()
	ToggleClothing("Mask")
end)
AddEventHandler("test:17", function()
	ResetClothing()
end)








for k,v in pairs(Config44.Commands) do
	RegisterCommand(k, v.Func)
	--log("Created /"..k.." ("..v.Desc..")") -- Useful for translation checking.
	TriggerEvent("chat:addSuggestion", "/"..k, v.Desc)
end

if Config44.ExtrasEnabled then
    for k, v in pairs(Config44.ExtraCommands) do
        RegisterCommand(k, v.Func)
        --log("Created /"..k.." ("..v.Desc..")") -- Useful for translation checking.
        TriggerEvent("chat:addSuggestion", "/"..k, v.Desc)
    end
end


AddEventHandler('onResourceStop', function(resource) -- Mostly for development, restart the resource and it will put all the clothes back on.
	if resource == GetCurrentResourceName() then
		ResetClothing()
	end
end)
]]

ESX.RegisterServerCallback('gotoClient5', function(source, cb)
    cb(aa)
end)

RegisterServerEvent('loffe_animations:syncAccepted')
AddEventHandler('loffe_animations:syncAccepted', function(requester, id)
    local accepted = source
    
    TriggerClientEvent('loffe_animations:playSynced', accepted, requester, id, 'Accepter')
    TriggerClientEvent('loffe_animations:playSynced', requester, accepted, id, 'Requester')
end)

RegisterServerEvent('loffe_animations:requestSynced')
AddEventHandler('loffe_animations:requestSynced', function(target, id)
    local requester = source
    local xPlayer = ESX['GetPlayerFromId'](requester)
    
    MySQL['Async']['fetchScalar']("SELECT firstname FROM users WHERE identifier=@identifier", {['@identifier'] = xPlayer['identifier']}, function(firstname)
        TriggerClientEvent('loffe_animations:syncRequest', target, requester, id, firstname)
    end)
end)












    local resource = GetCurrentResourceName
    local versionData = GetResourceMetadata(resource, 'version')
    local gitRepo = 'https://raw.githubusercontent.com/PFMD-dev/pfmd_cloathing/master/fxmanifest.lua'

    function versionCheck(error, response, headers)
        local response = tostring(response)
        for line in response:gmatch("([^\n]*)\n?") do
            if line:find('^version ') then
                repoVersion = line:sub(10, (line:len(line) - 1))
                break 
            end
        end

        if versionData < repoVersion then
            print(string.format("New version is available: ^1%s^7, current version: ^3%s^0", repoVersion, versionData))
        else
            print(repoVersion)
        end
    end
	  
	AddEventHandler('onResourceStart', function(resourceName)
		if resourceName == 'pfmd_cloathing' or resourceName == GetCurrentResourceName then
			print('start')
			PerformHttpRequest(gitRepo, versionCheck, "GET")
		else
			print('else')
		end
	end)