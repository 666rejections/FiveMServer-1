Config = {}

Config.Locale = 'en'

Config.Delays = {
	WeedProcessing = 1000 * 10
}

Config.DrugDealerItems = {
	eisenerz = 26
}

Config.LicenseEnable = false -- enable processing licenses? The player will be required to buy a license in order to process drugs. Requires esx_license

Config.LicensePrices = {
	metal_processing = {label = _U('license_weed'), price = 7000}
}

Config.GiveBlack = true -- give black money? if disabled it'll give regular cash.

Config.CircleZones = {
	WeedField = {coords = vector3(2182.99, 3595.02, 42.96), name = _U('blip_weedfield'), color = 25, sprite = 164, radius = 50.0},
	WeedProcessing = {coords = vector3(2929.99, 4625.35, 48.72), name = _U('blip_weedprocessing'), color = 25, sprite = 120, radius = 100.0},

	--DrugDealer = {coords = vector3(-1172.02, -1571.98, 4.66), name = _U('blip_drugdealer'), color = 6, sprite = 378, radius = 25.0},
}