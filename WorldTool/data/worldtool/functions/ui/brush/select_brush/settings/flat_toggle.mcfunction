#Toggle the placement option with the circle brush
execute if entity @s[predicate=!worldtool:brush/flat] run tag @s add settingflat
function worldtool:ui/brush/give_brush
replaceitem entity @s weapon.mainhand minecraft:air
execute if entity @s[tag=settingflat] run data merge entity @e[type=minecraft:item,sort=nearest,limit=1] {Item:{tag:{BrushSettings:{Flat:1b}}}}
execute if entity @s[tag=!settingflat] run data merge entity @e[type=minecraft:item,sort=nearest,limit=1] {Item:{tag:{BrushSettings:{Flat:0b}}}}
tag @s remove settingflat
execute as @p run function worldtool:ui/brush/select