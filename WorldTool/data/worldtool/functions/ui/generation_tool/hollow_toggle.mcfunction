#Toggle the placement option with the circle brush
execute unless predicate worldtool:shapes/hollow run tag @s add wt_toggling
loot spawn ~ ~ ~ loot worldtool:generation_tool
replaceitem entity @s weapon.mainhand minecraft:air
execute if entity @s[tag=wt_toggling] run data merge entity @e[type=minecraft:item,sort=nearest,limit=1] {Item:{tag:{Hollow:1b}},PickupDelay:0s}
execute if entity @s[tag=!wt_toggling] run data merge entity @e[type=minecraft:item,sort=nearest,limit=1] {Item:{tag:{Hollow:0b}},PickupDelay:0s}
tag @s remove wt_toggling
scoreboard players set @s wt_drop_coas 1
function worldtool:ui/generation_tool/select
