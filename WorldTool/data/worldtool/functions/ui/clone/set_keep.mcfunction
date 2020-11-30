execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1,tag=!keep] if score @s wt_ID = @p wt_ID run tag @s add wt_toggling
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1,tag=!keep] if score @s wt_ID = @p wt_ID run tag @s add keep
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1,tag=keep,tag=!wt_toggling] if score @s wt_ID = @p wt_ID run tag @s remove keep
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s remove wt_toggling
function worldtool:ui/clone/select_clone