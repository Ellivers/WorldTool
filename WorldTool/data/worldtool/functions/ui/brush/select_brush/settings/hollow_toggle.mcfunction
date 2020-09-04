#Toggle the hollow option with the sphere brush
execute if entity @s[predicate=!worldtool:brush/hollow] run tag @s add settinghollow
function worldtool:ui/brush/give_brush
replaceitem entity @s weapon.mainhand minecraft:air
execute if entity @s[tag=settinghollow] run data merge entity @e[type=minecraft:item,sort=nearest,limit=1] {Item:{tag:{BrushSettings:{Hollow:1b}}}}
execute if entity @s[tag=!settinghollow] run data merge entity @e[type=minecraft:item,sort=nearest,limit=1] {Item:{tag:{BrushSettings:{Hollow:0b}}}}
tag @s remove settinghollow
execute as @p run function worldtool:ui/brush/select