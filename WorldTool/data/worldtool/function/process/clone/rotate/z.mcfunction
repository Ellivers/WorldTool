scoreboard players operation #pos2x worldtool >< #pos1x worldtool

scoreboard players set #tempDir worldtool 3

scoreboard players set #offsetX worldtool 0
scoreboard players set #offsetY worldtool 0
scoreboard players set #offsetZ worldtool 1

function worldtool:ui_general/clone/get_rotation_offset/rotate_offsets

execute as 9880ccfe-fdf6-4538-838a-ddc75a54608e run function worldtool:process/clone/rotate/tp_in_rotated_direction
scoreboard players add #processPosZ worldtool 1
execute store success score #hasMoved worldtool run tp ~ ~ ~1
execute positioned ~ ~ ~1 run function worldtool:process/clone/rotate/main
