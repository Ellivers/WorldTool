execute if entity @s[predicate=!worldtool:brush/load_block] run tag @s add wt_toggling
function worldtool:ui/brush/give_brush
replaceitem entity @s weapon.mainhand minecraft:air
execute if entity @s[tag=wt_toggling] run data merge entity @e[type=minecraft:item,sort=nearest,limit=1] {Item:{tag:{BrushSettings:{LoadBlock:1b}}}}
execute if entity @s[tag=!wt_toggling] run data merge entity @e[type=minecraft:item,sort=nearest,limit=1] {Item:{tag:{BrushSettings:{LoadBlock:0b}}}}
tag @s remove wt_toggling
execute as @p run function worldtool:ui/brush/select