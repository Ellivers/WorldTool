tag @s add wt_no_loop_plz
loot spawn ~ ~ ~ loot worldtool:generation_tool
replaceitem entity @s weapon.mainhand minecraft:air
data merge entity @e[type=minecraft:item,nbt={OnGround:0b,Item:{tag:{worldTool:1b,Type:7b}}},sort=nearest,limit=1] {PickupDelay:0s,Item:{tag:{Direction:"North"}}}
scoreboard players set @s wt_drop_coas 1
