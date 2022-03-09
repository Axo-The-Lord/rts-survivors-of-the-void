-- Mocha

local item = Item("Mocha")
item.pickupText = "Slightly increase attack speed and movement speed."
item.sprite = Sprite.load("Items/resources/mocha.png", 1, 10, 17)
item:setTier("common")

item:addCallback("pickup", function(player)
    player:set("pHmax", player:get("pHmax") + 0.07)
    player:set("attack_speed", player:get("attack_speed") + 0.075)
end)

-- Item Log
item:setLog{
	group = "common",
	description = "Increases &y&attack speed&!& by &y&7.5%&!& and &b&movement speed&!& by &b&7%&!&.",
	story = "My finest brew. Hope it doesn't spoil during transit. Remember to heat it back up to 176.23 degrees... that's when it's freshest. See you soon... Coo.",
	destination = "Museum of Natural History,\nNinten Island,\nEarth",
	date = "5/04/2058",
	priority = "Standard"
}

-- Tab Menu
if modloader.checkMod("Starstorm") then
	TabMenu.setItemInfo(item, nil, "Increase attack speed by 7.5% and movement speed by 7%.", "+7.5% attack speed, +7% movemement speed.")
end
