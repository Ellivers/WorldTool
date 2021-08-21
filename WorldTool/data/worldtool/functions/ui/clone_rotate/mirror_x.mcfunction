tag @s add rotating
tag @s add mirrorX
tag @s remove mirrorY
tag @s remove mirrorZ

scoreboard players set @s wt_rotX 0
scoreboard players set @s wt_rotY 0
scoreboard players set @s wt_rotZ 0

scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool run tag @s add rotated

function worldtool:ui/clone_rotate/select