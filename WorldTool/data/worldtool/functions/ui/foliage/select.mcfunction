tag @s remove placing_fill
tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n"
execute unless score @s wt_chance matches 0..100 run scoreboard players set @s wt_chance 50
tellraw @s ["",{"text":"Plant rate: "},{"text":"< ","color":"dark_purple","hoverEvent":{"action":"show_text","value":"Decrease"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/foliage/rate_decrease"}},{"score":{"name":"@s","objective":"wt_chance"},"color":"gold"},{"text":"%","color":"gold"},{"text":" >\n","color":"dark_purple","hoverEvent":{"action":"show_text","value":"Increase"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/foliage/rate_increase"}}]

execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:ui/foliage/select.pos1

function worldtool:ui/anti_feedback_chat_message/load