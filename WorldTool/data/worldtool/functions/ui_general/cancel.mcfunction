scoreboard players operation #ID_temp worldtool = @s wt_ID
# Move back the stored block to be replaced (/not replaced) and remove the block checker
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_check] if score @s wt_ID = #ID_temp worldtool at @s run function worldtool:ui_general/kill_wt_check
#... k-k-kill... the o-observer buddy... D:
execute as @e[type=minecraft:armor_stand,tag=show_rot] if score @s wt_ID = #ID_temp worldtool run kill @s
# Kill le temp marker
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_waiting_marker] if score @s wt_ID = #ID_temp worldtool run kill @s
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos1] if score @s wt_ID = #ID_temp worldtool run kill @s
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2] if score @s wt_ID = #ID_temp worldtool run kill @s
# Clear up the chat
function worldtool:ui_general/clear_chat
tellraw @s "Cancelled"
# Remove the (temporary) tags
tag @s remove in_menu
tag @s remove placing_fill
tag @s remove fun_menu
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool run function worldtool:ui_general/pos1_removetags
function worldtool:ui_general/player_removetags

# For some reason this tag isn't in worldtool:ui_general/pos1_removetags
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool run tag @s remove rotated

# Remove the other tool variants you can have and replace them with the position 1 tool
tag @s[predicate=worldtool:tool_states/3] add setclonepos
tag @s[predicate=worldtool:tool_states/4] add random_1
tag @s[predicate=worldtool:tool_states/5] add random_2
tag @s[predicate=worldtool:tool_states/8] add wt_pick_block_tool
clear @s minecraft:carrot_on_a_stick{worldTool:1b,Type:3b}
clear @s minecraft:carrot_on_a_stick{worldTool:1b,Type:4b}
clear @s minecraft:carrot_on_a_stick{worldTool:1b,Type:5b}
clear @s minecraft:carrot_on_a_stick{worldTool:1b,Type:8b}
execute unless entity @s[tag=!setclonepos,tag=!random_1,tag=!random_2,tag=!wt_pick_block_tool] run loot give @s loot worldtool:general_tool
tag @s remove setclonepos
tag @s remove random_1
tag @s remove random_2
tag @s remove wt_pick_block_tool

tag @s add nospaceplzthx
function worldtool:ui_general/anti_feedback_chat_message/load