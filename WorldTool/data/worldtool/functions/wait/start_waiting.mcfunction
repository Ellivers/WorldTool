tag @s add wt_waiting
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_check] if score @s wt_ID = @p wt_ID run tag @s add waiting

scoreboard players set #highest wt_queue_pos 0
execute as @a[scores={wt_queue_pos=2..}] run scoreboard players operation #highest wt_ > @s wt_queue_pos
scoreboard players add #highest wt_queue_pos 1
scoreboard players operation @s wt_queue_pos = #highest wt_queue_pos

function worldtool:ui/clear_chat
tellraw @s [{"text": "Another process is currently running. The function you've \nselected will automagically start when the other process ends.","color":"gold"},{"text": "\n[Kill processes]  ","color":"red","hoverEvent": {"action": "show_text","value": "Kill all running processes"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/kill_processes"}},{"text":"[Cancel]","color":"white","hoverEvent":{"action":"show_text","value":"Close all menus and cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]
function worldtool:ui/anti_feedback_chat_message/load

schedule function worldtool:wait/check 1t replace
