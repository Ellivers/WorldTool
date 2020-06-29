tag @s remove placing_fill
tag @s remove replacing_fill1
tag @s remove replacing_fill2
tag @s add backbuttonplzthx
execute as @e[type=minecraft:area_effect_cloud,tag=wt_check] if score @s wt_ID = @p wt_ID at @s run function worldtool:ui/kill_check_block
execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s remove replacefill
execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s remove replacefill_reversed

function worldtool:ui/clear_chat

tellraw @s ["",{"text":"[Normal...]  ","color":"green","hoverEvent":{"action":"show_text","value":"Select which block to replace"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/replace/replace_select.normal"}},{"text":"[Exclude...]  ","color":"gold","hoverEvent":{"action":"show_text","value":"Select which block to not replace"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/replace/replace_select.reversed"}},{"text":"[Cancel]","color":"white","hoverEvent":{"action":"show_text","value":"Cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]

function worldtool:ui/anti_feedback_chat_message/load