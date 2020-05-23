tag @s add replacebrush_reversed

execute as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID run kill @s
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["check_block","replacebrushc"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=check_block,sort=nearest,limit=1] wt_ID = @s wt_ID

tellraw @s [{"text":"\n\n\n"},{"text":"[Select which block to not replace]  ","color":"light_purple","hoverEvent":{"action":"show_text","value":"Select which block you don't want to replace"},"clickEvent":{"action":"suggest_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID at @s run summon falling_block ~ ~ ~ {Time:1,Tags:[switch_block_brush],BlockState:{Name:\"NAME_HERE\"}}"}},{"text":"[Pick block]  ","color":"green","hoverEvent":{"action":"show_text","value":"Pick a block to not replace"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/brush/set/start_grab_replace"}},{"text":"[Cancel]  ","hoverEvent":{"action":"show_text","value":"Cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]

function worldtool:ui/anti_feedback_chat_message/load