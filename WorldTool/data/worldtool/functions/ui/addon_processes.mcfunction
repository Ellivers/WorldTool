execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_check] if score @s wt_ID = @p wt_ID at @s run function worldtool:ui/kill_wt_check

tag @s remove placing_fill
tag @s add backbuttonplzthx
function worldtool:ui/clear_chat

tellraw @s {"text": "List of addon processes:\n","color":"light_purple"}
function #worldtool:processes