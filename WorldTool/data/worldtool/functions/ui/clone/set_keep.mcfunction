execute as @e[type=minecraft:area_effect_cloud,tag=pos1,tag=!keep] if score @s wt_ID = @p wt_ID run tag @s add settingkeep
execute as @e[type=minecraft:area_effect_cloud,tag=pos1,tag=!keep] if score @s wt_ID = @p wt_ID run tag @s add keep
execute as @e[type=minecraft:area_effect_cloud,tag=pos1,tag=keep,tag=!settingkeep] if score @s wt_ID = @p wt_ID run tag @s remove keep
execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s remove settingkeep
function worldtool:ui/clone/select_clone