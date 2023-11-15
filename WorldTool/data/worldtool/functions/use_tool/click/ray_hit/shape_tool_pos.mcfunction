# Called by worldtool:use_tool/click/ray_hit/load
# Places a shape position and opens the shape generation tool menu

scoreboard players operation #ID_temp worldtool = @s wt.ID
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.shape_position] if score @s wt.ID = #ID_temp worldtool run kill @s



function worldtool:ui_shapes/summon_position

function worldtool:ui_shapes/menu

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.shape_position,sort=nearest,limit=1] run function worldtool:technical/common/temp_pos1
tellraw @s {"nbt":"Translation.\"info.shape_position\"","storage": "worldtool:storage","interpret": true}
