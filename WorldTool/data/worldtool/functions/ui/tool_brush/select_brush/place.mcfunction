loot spawn ~ ~ ~ loot worldtool:brushes/place
data merge entity @e[type=minecraft:item,sort=nearest,limit=1] {Item:{tag:{BrushSettings:{BeforeBlock:1b}}}}
replaceitem entity @s weapon.mainhand minecraft:air
scoreboard players set @s wt_drop_coas 1
function worldtool:ui/tool_brush/select