#Toggle the placement option with the circle brush
execute unless predicate worldtool:shapes/keep run tag @s add wt_toggling
loot spawn ~ ~ ~ loot worldtool:generation_tool
item replace entity @s weapon.mainhand with minecraft:air
execute if entity @s[tag=wt_toggling] run data merge entity @e[type=minecraft:item,sort=nearest,limit=1] {Item:{tag:{Keep:1b}},PickupDelay:0s}
execute if entity @s[tag=!wt_toggling] run data merge entity @e[type=minecraft:item,sort=nearest,limit=1] {Item:{tag:{Keep:0b}},PickupDelay:0s}
tag @s remove wt_toggling
scoreboard players set @s wt_drop_coas 1
function worldtool:ui/tool_shapes/select
