# Called by worldtool:ui_general/clone/calculate_overlap and worldtool:particles/clone_preview/display
# Gets the offset of position 2 relative to position 1, and takes rotation into account

scoreboard players operation #ID_temp worldtool = @s wt.ID

execute if entity @s as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos1] if score @s wt.ID = #ID_temp worldtool run function worldtool:technical/common/temp_pos1
execute if entity @s as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos2] if score @s wt.ID = #ID_temp worldtool run function worldtool:technical/common/temp_pos2

function worldtool:ui_general/clone/get_rotation_offset/get_rot_selection

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

function worldtool:ui_general/clone/get_rotation_offset/rotate_offsets
