execute if entity @s[predicate=!worldtool:brush/before_block] run tag @s add wt_toggling
function worldtool:ui/tool_brush/give_brush
item replace entity @s weapon.mainhand with minecraft:air
execute if entity @s[tag=wt_toggling] run data merge entity @e[type=minecraft:item,sort=nearest,limit=1] {Item:{tag:{BrushSettings:{BeforeBlock:1b}}}}
execute if entity @s[tag=!wt_toggling] run data merge entity @e[type=minecraft:item,sort=nearest,limit=1] {Item:{tag:{BrushSettings:{BeforeBlock:0b}}}}
tag @s remove wt_toggling
execute as @p run function worldtool:ui/tool_brush/select
