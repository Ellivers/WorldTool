scoreboard players operation #pos2x worldtool = #pos1x worldtool
scoreboard players operation #pos1x worldtool = #processPosX worldtool

scoreboard players remove #processPosZ worldtool 1

scoreboard players set #offsetX worldtool 0
scoreboard players set #offsetY worldtool 0
scoreboard players set #offsetZ worldtool -1

function worldtool:ui_general/clone/get_rotation_offset/rotate_offsets

tp ~ ~ ~-1
execute as 9880ccfe-fdf6-4538-838a-ddc75a54608e run function worldtool:process/clone/rotate/tp_in_rotated_direction
execute positioned ~ ~ ~-1 run function worldtool:process/clone/rotate/main
