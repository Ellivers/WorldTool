execute as @e[type=minecraft:area_effect_cloud,tag=randomcorner1] if score @s wt_ID = @p wt_ID as @e[type=minecraft:area_effect_cloud,tag=randomcorner2] if score @s wt_ID = @p wt_ID run tag @p add randomizing
tag @s remove random_1
tag @s remove random_2
tag @s remove placing_fill
execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s remove random1
tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}

execute as @e[type=minecraft:area_effect_cloud,tag=randomcorner1] if score @s wt_ID = @p wt_ID run tag @s add detected
execute as @e[type=minecraft:area_effect_cloud,tag=randomcorner2] if score @s wt_ID = @p wt_ID run tag @s add detected

execute if entity @s[tag=randomizing] as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:ui/random/select.pos1_1
execute if entity @s[tag=!randomizing] as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:ui/random/select.pos1_2

tag @s remove randomizing
execute as @e[type=minecraft:area_effect_cloud,tag=randomcorner1] if score @s wt_ID = @p wt_ID run tag @s remove detected
execute as @e[type=minecraft:area_effect_cloud,tag=randomcorner2] if score @s wt_ID = @p wt_ID run tag @s remove detected

function worldtool:ui/anti_feedback_chat_message/load