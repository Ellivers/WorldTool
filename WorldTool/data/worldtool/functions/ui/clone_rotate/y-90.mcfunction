tag @s add rotating
scoreboard players set @s rotY -90

scoreboard players set @s rotX 0

scoreboard players set @s rotZ 0
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s add rotated

function worldtool:ui/clone_rotate/select