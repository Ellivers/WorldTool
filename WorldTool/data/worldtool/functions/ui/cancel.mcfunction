#Move back the stored block to be replaced (/not replaced) and remove the block checker
execute as @e[type=minecraft:area_effect_cloud,tag=wt_check] if score @s wt_ID = @p wt_ID at @s run function worldtool:ui/kill_check_block
#... k-k-kill... the o-observer buddy... D:
execute as @e[type=minecraft:armor_stand,tag=show_rot] if score @s wt_ID = @p wt_ID run kill @s
# Kill le temp marker
execute as @e[type=minecraft:area_effect_cloud,tag=wt_waiting_marker] if score @s wt_ID = @p wt_ID run kill @s
execute as @e[type=minecraft:area_effect_cloud,tag=wt_clone_preview_pos1] if score @s wt_ID = @p wt_ID run kill @s
execute as @e[type=minecraft:area_effect_cloud,tag=wt_clone_preview_pos2] if score @s wt_ID = @p wt_ID run kill @s
# Clear up the chat
function worldtool:ui/clear_chat
tellraw @s "Cancelled"
# Remove the (temporary) tags
tag @s remove in_menu
tag @s remove placing_fill
execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:ui/pos1_removetags
function worldtool:ui/player_removetags

# For some reason this tag isn't in worldtool:ui/pos1_removetags
execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s remove rotated

# Remove the other tool variants you can have and replace them with the position 1 tool
tag @s[predicate=worldtool:tool_states/3] add setclonepos
tag @s[predicate=worldtool:tool_states/4] add random_1
tag @s[predicate=worldtool:tool_states/5] add random_2
clear @s minecraft:carrot_on_a_stick{worldTool:1b,Type:3b}
clear @s minecraft:carrot_on_a_stick{worldTool:1b,Type:4b}
clear @s minecraft:carrot_on_a_stick{worldTool:1b,Type:5b}
execute unless entity @s[tag=!setclonepos,tag=!random_1,tag=!random_2] run loot give @s loot worldtool:general_tool
tag @s remove setclonepos
tag @s remove random_1
tag @s remove random_2

tag @s add nospaceplzthx
function worldtool:ui/anti_feedback_chat_message/load