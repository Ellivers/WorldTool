tag @s add rotating
scoreboard players set @s rotZ 180

scoreboard players set @s rotY 0

scoreboard players set @s rotX 0
execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s add rotated

function worldtool:ui/clone_rotate/select