scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=randomcorner1] if score @s wt_ID = #ID_temp worldtool as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=randomcorner2] if score @s wt_ID = #ID_temp worldtool run tag @p add randomizing

tag @s[predicate=worldtool:tool_states/4] add random_1
tag @s[predicate=worldtool:tool_states/5] add random_2
clear @s minecraft:carrot_on_a_stick{worldTool:1b,Type:4b}
clear @s minecraft:carrot_on_a_stick{worldTool:1b,Type:5b}
execute unless entity @s[tag=!random_1,tag=!random_2] run loot give @s loot worldtool:general_tool

tag @s remove random_1
tag @s remove random_2
tag @s remove placing_fill
tag @s remove rnd_replacingfill1

execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool run tag @s remove random1
tag @s add wt_backbuttonplzthx
function worldtool:ui_general/clear_chat

execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=randomcorner1] if score @s wt_ID = #ID_temp worldtool run tag @s add detected
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=randomcorner2] if score @s wt_ID = #ID_temp worldtool run tag @s add detected

execute if entity @s[tag=randomizing] as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool run function worldtool:ui_general/menus/randomize/select.pos1_1
execute if entity @s[tag=!randomizing] as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool run function worldtool:ui_general/menus/randomize/select.pos1_2

tag @s remove randomizing
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=randomcorner1] if score @s wt_ID = #ID_temp worldtool run tag @s remove detected
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=randomcorner2] if score @s wt_ID = #ID_temp worldtool run tag @s remove detected

function worldtool:ui_general/anti_feedback_chat_message/load