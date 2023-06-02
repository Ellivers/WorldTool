# Called by worldtool:technical/tick/player
# Checks if the dropped item is a WorldTool tool

execute as @e[type=minecraft:item,tag=!global.ignore,nbt={Item:{tag:{WorldTool:{Droppable:1b}}},PickupDelay:40s,OnGround:0b},sort=nearest,limit=1] run function worldtool:use_tool/drop/check
scoreboard players reset @s wt.drop_coas
