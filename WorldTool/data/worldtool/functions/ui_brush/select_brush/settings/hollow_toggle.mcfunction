# Toggle the hollow option for the sphere brush
execute if entity @s[predicate=!worldtool:brush/hollow] run tag @s add wt_toggling
function worldtool:ui_brush/give_brush
replaceitem entity @s weapon.mainhand minecraft:air
execute if entity @s[tag=wt_toggling] run data merge entity @e[type=minecraft:item,sort=nearest,limit=1] {Item:{tag:{BrushSettings:{Hollow:1b}}}}
execute if entity @s[tag=!wt_toggling] run data merge entity @e[type=minecraft:item,sort=nearest,limit=1] {Item:{tag:{BrushSettings:{Hollow:0b}}}}
tag @s remove wt_toggling
execute as @p run function worldtool:ui_brush/select
