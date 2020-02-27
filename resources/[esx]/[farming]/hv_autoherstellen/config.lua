Config = {}

Config.Locale = 'en'

Config.Delays = {
	WeedProcessing = 1000 * 10
}

Config.DrugDealerItems = {
	plastic = 25
}

ShopOutside = {
	Pos     = vector3(220.91, -787.5, 30.78),
	Size    = {x = 1.5, y = 1.5, z = 1.0},
	Heading = 330.0,
	Type    = -1
}

Config.LicenseEnable = false -- enable processing licenses? The player will be required to buy a license in order to process drugs. Requires esx_license

Config.LicensePrices = {
	plastic_processing = {label = _U('license_weed'), price = 10000}
}

Config.GiveBlack = true -- give black money? if disabled it'll give regular cash.

Config.CircleZones = {
	--WeedField = {coords = vector3(730.46, -988.56, 24.14), name = _U('blip_weedfield'), color = 25, sprite = 164, radius = 30.0},
	WeedProcessing = {coords = vector3(217.58, -798.21, 30.78), name = _U('blip_weedprocessing'), color = 25, sprite = 120, radius = 100.0},

	--DrugDealer = {coords = vector3(-1172.02, -1571.98, 4.66), name = _U('blip_drugdealer'), color = 6, sprite = 378, radius = 25.0},
}