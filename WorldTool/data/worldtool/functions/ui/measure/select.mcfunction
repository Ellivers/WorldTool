tag @s remove placing_fill
tag @s add wt_backbuttonplzthx
function worldtool:ui/clear_chat
scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_check] if score @s wt_ID = #ID_temp worldtool at @s run function worldtool:ui/kill_wt_check

tellraw @s [{"text":"[Run]  ","color":"aqua","hoverEvent":{"action":"show_text","value":"Measure the amount of blocks, width, height and length of the selected area"},"clickEvent":{"action":"run_command","value":"/function worldtool:measure/load"}},{"text":"[Filter...]  ","color":"gold","hoverEvent":{"action":"show_text","value":"Count the amount of the specified block(s) in the selected area"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/measure/filtered/select"}},{"text":"[Cancel]","color":"white","hoverEvent":{"action":"show_text","value":"Close all menus and cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]
function worldtool:ui/anti_feedback_chat_message/load