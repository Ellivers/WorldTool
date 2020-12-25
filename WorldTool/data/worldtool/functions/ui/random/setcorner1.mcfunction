execute at @s positioned ~ ~ ~ as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s add random1

function worldtool:ui/clear_chat
tellraw @s {"text": "[⬅Back]\n","color":"yellow","hoverEvent": {"action": "show_text","value": "Go back to the previous menu"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/random/select"}}
tellraw @s [{"text":"Set corner 2 of the source for random blocks     ","color":"aqua"},{"text":"\n[Set position at player]  ","color":"yellow","hoverEvent":{"action":"show_text","value":"Set the second random source position at yourself"},"clickEvent":{"action":"run_command","value":"/function worldtool:ray/ray_hit_r2"}},{"text":"[Cancel]  ","color":"red","hoverEvent":{"action":"show_text","value":"Close all menus and cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]
tag @s remove setpos2
tag @s remove placing_fill
replaceitem entity @s weapon.mainhand minecraft:air
loot give @s loot worldtool:randompos_tools/2
function worldtool:ui/anti_feedback_chat_message/load