#Toggle the placement option with the circle brush
execute if entity @s[predicate=!worldtool:brush/before_block] run tag @s add settingb4b
function worldtool:ui/brush/give_brush
replaceitem entity @s weapon.mainhand minecraft:air
execute if entity @s[tag=settingb4b] run data merge entity @e[type=minecraft:item,sort=nearest,limit=1] {Item:{tag:{BrushSettings:{BeforeBlock:1b}}}}
execute if entity @s[tag=!settingb4b] run data merge entity @e[type=minecraft:item,sort=nearest,limit=1] {Item:{tag:{BrushSettings:{BeforeBlock:0b}}}}
tag @s remove settingb4b
execute as @p run function worldtool:ui/brush/select