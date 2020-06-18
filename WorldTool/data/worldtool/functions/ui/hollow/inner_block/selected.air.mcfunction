execute if block ~ ~ ~ #worldtool:water run setblock ~ 1 ~ water
execute unless block ~ ~ ~ #worldtool:water run setblock ~ 1 ~ air
execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s add inner_block
tag @s remove placing_hollow_inner
tag @s add wt_inner
function worldtool:ui/hollow/select
function worldtool:ui/anti_feedback_chat_message/load