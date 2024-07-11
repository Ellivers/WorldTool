scoreboard players add #processPosX worldtool 1

scoreboard players set #offsetX worldtool 1
scoreboard players set #offsetY worldtool 0
scoreboard players set #offsetZ worldtool 0

function worldtool:ui_general/clone/get_rotation_offset/rotate_offsets

tp ~1 ~ ~
execute as 9880ccfe-fdf6-4538-838a-ddc75a54608e run function worldtool:process/clone/rotate/tp_in_rotated_direction
execute positioned ~1 ~ ~ run function worldtool:process/clone/rotate/main
