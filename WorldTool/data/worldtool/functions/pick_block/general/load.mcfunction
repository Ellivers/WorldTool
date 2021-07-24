# Called by worldtool:use_tool/ray_hit/load
# Selects the block you're looking at

scoreboard players operation #ID_temp worldtool = @s wt.ID

clone ~ ~ ~ ~ ~ ~ 0 245 13

execute if entity @s[tag=!wt.pick_block.primary,tag=!wt.pick_block.secondary] as @e[type=minecraft:marker,tag=worldtool,tag=wt.input] if score @s wt.ID = #ID_temp worldtool at @s run function worldtool:pick_block/general/auto
execute if entity @s[tag=wt.pick_block.primary] as @e[type=minecraft:marker,tag=worldtool,tag=wt.input] if score @s wt.ID = #ID_temp worldtool at @s run clone 0 254 13 0 254 13 ~1 ~ ~ replace move
execute if entity @s[tag=wt.pick_block.secondary] as @e[type=minecraft:marker,tag=worldtool,tag=wt.input] if score @s wt.ID = #ID_temp worldtool at @s run clone 0 254 13 0 254 13 ~-1 ~ ~ replace move

item modify entity @s weapon.mainhand worldtool:general_tool/pos1

execute if score $playUISounds worldtool matches 1.. at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5
