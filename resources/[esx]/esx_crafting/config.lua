Crafting = {}
-- You can configure locations here
Crafting.Locations = {
    [1] = {x = 1015.003, y = -3158.878, z = -38.907},
    [2] = {x = 1175.433, y = 2635.81, z = 37.755},
    [3] = {x = -1154.895, y = -2022.624, z = 13.176},
}
--[[
    You can add or remove if you want, be sure to use the right format like this:
    ["item_name"] = {
        label = "Item Label",
        needs = {
            ["item_to_use_name"] = {label = "Item Use Label", count = 1}, 
            ["item_to_use_name2"] = {label = "Item Use Label", count = 2},
        },
        threshold = 0,
    },

    #! 
        Threshold level is a level that gets saved (in the database) by crafting, if you craft succefully you gain points, if you fail you lose points.
        The threshold level can be changed to your liking.
    #!

    Also if you don't have the items below make sure to remove it and create your own version.
]]--
Crafting.Items = {
    ["fixkit"] = {
        label = "Reperaturkit",
        needs = {
            ["eisen"] = {label = "Eisen", count = 15},
            ["plastic"] = {label = "Plastik", count = 12},
        },
        threshold = 0,
    },
    ["weapon_pistol"] = {
        label = "9mm Beretta",
        needs = {
            ["metalscrap"] = {label = "Metallstück", count = 80},
            ["plastic"] = {label = "Plastik", count = 30},
    
 
        },
        threshold = 0,
    },
    ["clip"] = {
        label = "Magazin",
        needs = {
            ["metalscrap"] = {label = "Metallstück", count = 30},

        },
        threshold = 0,
    },
    ["weapon_combatpistol"] = {
        label = "Kampfpistole",
        needs = {
            ["metalscrap"] = {label = "Metallstück", count = 100},
            ["plastic"] = {label = "Plastik", count = 50},
        },
        threshold = 0,
    },
}