tag @s remove in_menu
tag @s remove menu_nudge
tag @s remove wt_dont_move_pos1
tag @s remove wt_dont_move_pos2
tag @s add wt_user

scoreboard players operation #ID_temp worldtool = @s wt_ID
scoreboard players set #pos1Found worldtool 0
scoreboard players set #pos2Found worldtool 0
execute as @e[type=minecraft:area_effect_cloud,tag=pos1,tag=worldtool] if score @s wt_ID = #ID_temp worldtool run scoreboard players set #pos1Found worldtool 1
execute as @e[type=minecraft:area_effect_cloud,tag=pos2,tag=worldtool] if score @s wt_ID = #ID_temp worldtool run scoreboard players set #pos2Found worldtool 1
execute if score #pos1Found worldtool matches 1 run tag @s add wt_pos1found
execute if score #pos2Found worldtool matches 1 run tag @s add wt_pos2found

function worldtool:ui/clear_chat
tellraw @s ["",{"text": "[⬅Back]\n","color":"yellow","hoverEvent": {"action": "show_text","value": "Go back"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/general_tool/full"}},{"text": "Options","bold": true,"color":"gold"}]
execute if entity @s[tag=wt_pos1found,tag=wt_pos2found] run tellraw @s ["",{"text": "\n\n[Nudge Selection...]  ","color":"light_purple","hoverEvent": {"action": "show_text","value": "Move one or both positions one block at a time"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/nudge/select"}},{"text": "[Settings...]","color":"dark_green","hoverEvent": {"action": "show_text","value": "Settings"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/settings"}}]
execute unless entity @s[tag=wt_pos1found,tag=wt_pos2found] run tellraw @s {"text": "\n\n[Settings...]","color":"dark_green","hoverEvent": {"action": "show_text","value": "Settings"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/settings"}}
function worldtool:ui/anti_feedback_chat_message/load

tag @s remove wt_pos1found
tag @s remove wt_pos2found