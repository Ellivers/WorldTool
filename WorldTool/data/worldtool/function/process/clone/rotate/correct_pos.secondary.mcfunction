# Called by various functions
# Corrects the X position of the secondary process entity, by moving it back

scoreboard players set #offsetX worldtool 0
scoreboard players set #offsetY worldtool 0
scoreboard players set #offsetZ worldtool 0

execute if score #tempDir worldtool matches 1 unless score #prevProcessPosX worldtool = #processPosX worldtool run scoreboard players set #offsetX worldtool -1
execute if score #tempDir worldtool matches -1 unless score #prevProcessPosX worldtool = #processPosX worldtool run scoreboard players set #offsetX worldtool 1
execute if score #tempDir worldtool matches 2 unless score #prevProcessPosY worldtool = #processPosY worldtool run scoreboard players set #offsetY worldtool -1
execute if score #tempDir worldtool matches -2 unless score #prevProcessPosY worldtool = #processPosY worldtool run scoreboard players set #offsetY worldtool 1
execute if score #tempDir worldtool matches 3 unless score #prevProcessPosZ worldtool = #processPosZ worldtool run scoreboard players set #offsetZ worldtool -1
execute if score #tempDir worldtool matches -3 unless score #prevProcessPosZ worldtool = #processPosZ worldtool run scoreboard players set #offsetZ worldtool 1

function worldtool:ui_general/clone/get_rotation_offset/rotate_offsets

execute as 9880ccfe-fdf6-4538-838a-ddc75a54608e run function worldtool:process/clone/rotate/tp_in_rotated_direction
