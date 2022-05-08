# Called by various functions (?)
# Gets the offset of position 2 relative to position 1, and takes rotation into account

scoreboard players operation #ID_temp worldtool = @s wt.ID

execute if entity @s as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos1] if score @s wt.ID = #ID_temp worldtool run function worldtool:technical/common/temp_pos1
execute if entity @s as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos2] if score @s wt.ID = #ID_temp worldtool run function worldtool:technical/common/temp_pos2

scoreboard players operation #tempRotX worldtool = @s wt.rotX
scoreboard players operation #tempRotY worldtool = @s wt.rotY
scoreboard players operation #tempRotZ worldtool = @s wt.rotZ

scoreboard players operation #baseOffsetX worldtool = #pos2xt worldtool
scoreboard players operation #baseOffsetX worldtool -= #pos1xt worldtool
scoreboard players operation #baseOffsetY worldtool = #pos2yt worldtool
scoreboard players operation #baseOffsetY worldtool -= #pos1yt worldtool
scoreboard players operation #baseOffsetZ worldtool = #pos2zt worldtool
scoreboard players operation #baseOffsetZ worldtool -= #pos1zt worldtool

scoreboard players operation #offsetX worldtool = #baseOffsetX worldtool
scoreboard players operation #offsetY worldtool = #baseOffsetY worldtool
scoreboard players operation #offsetZ worldtool = #baseOffsetZ worldtool

# Rotate the offset by the rotation

execute if score #tempRotX worldtool matches 90 run function worldtool:ui_general/clone/get_rotation_offset/x90
execute if score #tempRotX worldtool matches 180 run function worldtool:ui_general/clone/get_rotation_offset/x180
execute if score #tempRotX worldtool matches 270 run function worldtool:ui_general/clone/get_rotation_offset/x270
execute if entity @s[tag=wt.clone.mirror.x] run function worldtool:ui_general/clone/get_rotation_offset/x_mirror

execute if score #tempRotY worldtool matches 90 run function worldtool:ui_general/clone/get_rotation_offset/y90
execute if score #tempRotY worldtool matches 180 run function worldtool:ui_general/clone/get_rotation_offset/y180
execute if score #tempRotY worldtool matches 270 run function worldtool:ui_general/clone/get_rotation_offset/y270
execute if entity @s[tag=wt.clone.mirror.y] run function worldtool:ui_general/clone/get_rotation_offset/y_mirror

execute if score #tempRotZ worldtool matches 90 run function worldtool:ui_general/clone/get_rotation_offset/z90
execute if score #tempRotZ worldtool matches 180 run function worldtool:ui_general/clone/get_rotation_offset/z180
execute if score #tempRotZ worldtool matches 270 run function worldtool:ui_general/clone/get_rotation_offset/z270
execute if entity @s[tag=wt.clone.mirror.z] run function worldtool:ui_general/clone/get_rotation_offset/z_mirror
