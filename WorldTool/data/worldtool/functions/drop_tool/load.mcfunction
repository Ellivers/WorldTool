# Called by worldtool:technical/tick/player
# Checks if the dropped carrot on a stick is a worldtool tool

execute store success score #temp.sneaking worldtool if predicate worldtool:sneaking
execute as @e[type=minecraft:item,tag=!global.ignore,nbt={Item:{tag:{WorldTool:{Droppable:1b}}},PickupDelay:10s,OnGround:0b},sort=nearest,limit=1] run function worldtool:drop_tool/check
scoreboard players reset @s wt.drop_coas
