tag @s add rotating
scoreboard players set @s wt_rotY -90

scoreboard players set @s wt_rotX 0

scoreboard players set @s wt_rotZ 0
scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool run tag @s add rotated

function worldtool:ui_general/clone_rotate/select