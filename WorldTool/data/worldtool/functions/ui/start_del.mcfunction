tellraw @s {"text":"\n\n\n\n"}
execute as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID run kill @s
execute unless block ~ ~ ~ #worldtool:water run setblock 0 1 13 air
execute if block ~ ~ ~ #worldtool:water run setblock 0 1 13 water
tag @s remove placing_fill
tag @s remove in_menu
execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s[distance=..200] wt_ID = @p wt_ID at @s run function worldtool:load_fill
function worldtool:ui/anti_feedback_chat_message/load