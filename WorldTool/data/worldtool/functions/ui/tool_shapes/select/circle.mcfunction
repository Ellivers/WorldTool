loot spawn ~ ~ ~ loot worldtool:generation_tool
replaceitem entity @s weapon.mainhand minecraft:air
data merge entity @e[type=minecraft:item,sort=nearest,limit=1] {Item:{tag:{SelectedShape:"Circle"}},PickupDelay:0s}
scoreboard players set @s wt_drop_coas 1
