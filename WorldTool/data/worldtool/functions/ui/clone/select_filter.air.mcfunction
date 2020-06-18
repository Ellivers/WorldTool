execute if block ~ ~ ~ #worldtool:water run setblock ~ 1 ~ water
execute unless block ~ ~ ~ #worldtool:water run setblock ~ 1 ~ air
execute if entity @s[tag=placing_filtered] as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s add filtered
execute if entity @s[tag=placing_filtered_reversed] as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s add filtered_reversed
tag @s remove placing_filtered
tag @s remove placing_filtered_reversed
function worldtool:ui/clone/select_clone
function worldtool:ui/anti_feedback_chat_message/load