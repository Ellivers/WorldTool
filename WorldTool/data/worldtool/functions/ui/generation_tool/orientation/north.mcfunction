tag @s add wt_no_loop_plz
loot spawn ~ ~ ~ loot worldtool:generation_tool
clear @s minecraft:carrot_on_a_stick{worldTool:1b,Type:7b} 1
data merge entity @e[type=minecraft:item,nbt={OnGround:0b,Item:{tag:{worldTool:1b,Type:7b}}},sort=nearest,limit=1] {PickupDelay:0s,Item:{tag:{Direction:"North"}}}
scoreboard players set @s wt_drop_coas 1