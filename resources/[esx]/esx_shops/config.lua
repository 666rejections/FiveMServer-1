Config              = {}
Config.DrawDistance = 100
Config.Size         = {x = 1.5, y = 1.5, z = 1.5}
Config.Color        = {r = 0, g = 0, b = 255}
Config.Type         = 27
Config.Locale       = 'en'

Config.Map = {
  {name="Tequil-La La", color=1, id=93, x=-565.906, y=276.093, z=100.176},
  {name="Bahamas", color=1, id=93,x =-1388.409, y =-585.624, z =100.319},
  {name="Stripclub", color=1, id=121,x =132.17, y =-1304.42, z =100.319},
  {name="Yellow Jack", color=1, id=93,x =1992.69, y =3058.57, z =100.319},
  {name="Galaxy", color=1, id=93,x =5.00, y =220.24, z =107.72}, -- Wainting for the nightclub id blip
  {name="TwentyFourSeven", color=25, id=52,x =373.875, y =325.896, z =100.319},
  {name="TwentyFourSeven", color=2, id=52,x =2557.458, y =382.282, z =100.319},
  {name="TwentyFourSeven", color=2, id=52,x =-3038.939, y =585.954, z =6.908},
  {name="TwentyFourSeven", color=2, id=52,x =-3241.927, y =1001.462, z =11.830},
  {name="TwentyFourSeven", color=2, id=52,x =547.431, y =2671.710, z =41.156},
  {name="TwentyFourSeven", color=2, id=52,x =1961.464, y =3740.672, z =31.343},
  {name="TwentyFourSeven", color=2, id=52,x =2678.916, y =3280.671, z =54.241},
  {name="TwentyFourSeven", color=2, id=52,x =1729.216, y =6414.131, z =34.037},
  {name="TwentyFourSeven", color=2, id=52,x =25.75, y =-1347.04, z =29.5},
  {name="RobsLiquor", color=1, id=52,x =1135.808, y =-982.281, z =45.415},
  {name="RobsLiquor", color=1, id=52,x =-1222.915, y =-906.983, z =11.326},
  {name="RobsLiquor", color=1, id=52,x =-1487.553, y =-379.107, z =39.163},
  {name="RobsLiquor", color=1, id=52,x =-2968.243, y =390.910, z =14.043},
  {name="RobsLiquor", color=1, id=52,x =1166.024, y =2708.930, z =37.157},
  {name="RobsLiquor", color=1, id=52,x =1392.562, y =3604.648, z =33.980},
  {name="LTDgasoline", color=2, id=52,x =-48.519, y =-1757.514, z =28.421},
  {name="LTDgasoline", color=2, id=52,x =1163.373, y =-323.801, z =68.205},
  {name="LTDgasoline", color=2, id=52,x =-707.501, y =-914.260, z =18.215},
  {name="LTDgasoline", color=2, id=52,x =-1820.523, y =792.518, z =137.118},
  {name="LTDgasoline", color=2, id=52,x =1698.388, y =4924.404, z =41.063},
  {name="Baumarkt",color=4, id=402,x =882.97, y =-2256.78, z =32.46},
  {name="Warenhausladen",color=4, id=459,x =-1081.97, y =-247.68, z =37.76},
  {name="Lager",color=4, id=459,x =66.54, y =-2569.28, z =189.18},
}

Config.Zones = {

    TwentyFourSeven = {
        Items = {bread, water},
        Pos = {
            {x = 373.875,   y = 325.896,  z = 102.566},
            {x = 2557.458,  y = 382.282,  z = 107.622},
            {x = -3038.939, y = 585.954,  z = 6.908},
            {x = -3241.927, y = 1001.462, z = 11.830},
            {x = 547.431,   y = 2671.710, z = 41.156},
            {x = 1961.464,  y = 3740.672, z = 31.343},
            {x = 2678.916,  y = 3280.671, z = 54.241},
            {x = 1729.216,  y = 6414.131, z = 34.037},
            {x = 25.75, y = -1347.04, z = 28.5}
        }
    },

 

    RobsLiquor = {
        Items = {bread, water},
        Pos = {
            {x = 1135.808,  y = -982.281,  z = 45.415},
            {x = -1222.915, y = -906.983,  z = 11.326},
            {x = -1487.553, y = -379.107,  z = 39.163},
            {x = -2968.243, y = 390.910,   z = 14.043},
            {x = 1166.024,  y = 2708.930,  z = 37.157},
            {x = 1392.562,  y = 3604.684,  z = 33.980}
        }
    },

    LTDgasoline = {
        Items = {bread, water},
        Pos = {
            {x = -48.519,   y = -1757.514, z = 28.421},
            {x = 1163.373,  y = -323.801,  z = 68.205},
            {x = -707.501,  y = -914.260,  z = 18.215},
            {x = -1820.523, y = 792.518,   z = 137.118},
            {x = 1698.388,  y = 4924.404,  z = 41.063}
        }
    },

    Bahama = {
        Items = {bier, vodka, champ, nachos},
        Pos = {

            {x = -1393.409, y = -606.624,  z = 29.319}, --Bahamamas


        }
    },
  
  
}


