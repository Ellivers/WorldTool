loot spawn ~ ~ ~ loot worldtool:brushes/structure
replaceitem entity @s weapon.mainhand minecraft:air
scoreboard players set @s wt_drop_coas 1
function worldtool:ui/tool_brush/select