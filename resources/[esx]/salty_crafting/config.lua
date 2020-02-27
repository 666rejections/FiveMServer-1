Config = {}

-- Ammo given by default to crafted weapons
Config.WeaponAmmo = 60

Config.Recipes = {
	-- Can be a normal ESX item
	["LaufMM"] = { 
		{item = "plastic", quantity = 12 }, 
		{item = "eisen", quantity = 10 },
	},

	["stahll"] = { 
		{item = "plastic", quantity = 3 }, 
		{item = "eisen", quantity = 4 },
	},

	["MagazinMM"] = { 
		{item = "plastic", quantity = 12 }, 
		{item = "eisen", quantity = 10 },
	},

	["Allu"] = { 
		{item = "baux", quantity = 5 }, 
		{item = "kerz", quantity = 2 },
	},

	["schrauben"] = { 
		{item = "Allu", quantity = 1 }, 
		{item = "eisen", quantity = 1 },
	},

	["holzbrett"] = { 
		{item = "schrauben", quantity = 2 }, 
		{item = "fichte", quantity = 1 },
	},

	["holzbrettverpackt"] = { 
		{item = "gummi", quantity = 2 }, 
		{item = "holzbrett", quantity = 1 },
	},


	["gummi"] = { 
		{item = "kauts", quantity = 3 }, 
		{item = "erdoel", quantity = 2 },
	},

	["stoff"] = { 
		{item = "baumwolle", quantity = 3 }, 
		
	},

	["messergriff"] = { 
		{item = "fichte", quantity = 8 }, 
		{item = "eisen", quantity = 6 }, 
		
	},

	["messerklinge"] = { 
		{item = "stahll", quantity = 12 }, 
	
		
	},

	["messerklingeg"] = { 
		{item = "stahll", quantity = 14 }, 
		{item = "Allu", quantity = 2 }, 
	
		
	},

	["smgschaft"] = { 
		{item = "eisen", quantity = 20 }, 
		{item = "gummi", quantity = 5 }, 
		{item = "plastic", quantity = 7 }, 
	
		
	},
	["smglauf"] = { 
		{item = "eisen", quantity = 18 }, 
		{item = "plastic", quantity = 10 }, 
	
		
	},

	["smggriff"] = { 
		{item = "eisen", quantity = 18 }, 
		{item = "plastic", quantity = 10 }, 
		{item = "stahll", quantity = 8 }, 	
	
		
	},

	["smggeh"] = { 
		{item = "eisen", quantity = 20 }, 
		{item = "plastic", quantity = 10 }, 

	
		
	},

	["magazinf"] = { 
		{item = "eisen", quantity = 7 }, 
		{item = "plastic", quantity = 8 }, 

	
		
	},

	["lauff"] = { 
		{item = "eisen", quantity = 10 }, 
		{item = "gummi", quantity = 18 }, 

	
		
	},
	
	["clip"] = { 
		{item = "eisen", quantity = 9 }, 
		{item = "gummi", quantity = 18 }, 

	
		
	},


	
	
	-- Can be a weapon, must follow this format
	['weapon_pistol'] = { 
		{item = "MagazinMM", quantity = 1 }, 
		{item = "LaufMM", quantity = 1},
		{item = "stahll", quantity = 20},
	},

	['weapon_machete'] = { 
		{item = "messergriff", quantity = 1 }, 
		{item = "messerklingeg", quantity = 1},
		{item = "stahll", quantity = 20},
	},

	['weapon_bat'] = { 
		{item = "holzbrett", quantity = 2 }, 
		{item = "Allu", quantity = 3},
	},

	['weapon_knuckle'] = { 
		{item = "stahll", quantity = 10 }, 
		{item = "Allu", quantity = 15},
	},

	['weapon_molotov'] = { 
		{item = "stahll", quantity = 10 }, 
		{item = "erdoel", quantity = 25},
	},
	['weapon_microsmg'] = { 
		{item = "smgschaft", quantity = 1 }, 
		{item = "smglauf", quantity = 1},
		{item = "smggriff", quantity = 1},
		{item = "smggeh", quantity = 1},
	},	

	['weapon_pistol50'] = { 
		{item = "magazinf", quantity = 1 }, 
		{item = "lauff", quantity = 1},
		{item = "stahll", quantity = 20},
	},
	


	['weapon_knife'] = { 
		{item = "messergriff", quantity = 1 }, 
		{item = "messerklinge", quantity = 1},
	
	}
}

-- Enable a shop to access the crafting menu
Config.Shop = {
	useShop = true,
	shopCoordinates = { x=1015.003, y = -3158.878, z = -38.907},
	--shopName = "Werkbank",
	--shopBlipID = 446, 
	zoneSize = { x = 2.5, y = 2.5, z = 1.5 },
	zoneColor = { r = 255, g = 0, b = 0, a = 100 }
}

-- Enable crafting menu through a keyboard shortcut
Config.Keyboard = {
	useKeyboard = false,
	keyCode = 303
}
