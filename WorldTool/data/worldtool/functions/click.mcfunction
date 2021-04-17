# Called by worldtool:player_tick

# If the player doesn't have an ID, give one
execute unless score @s wt_ID matches -2147483648.. run function worldtool:assign_id

tag @s remove holding_wttool
tag @s remove setpos2
tag @s remove setpos1
tag @s remove setclonepos
tag @s remove wt_random_1
tag @s remove wt_random_2
tag @s remove wt_brush
tag @s remove wt_generation
tag @s[predicate=worldtool:tool_states/all] add holding_wttool

execute if predicate worldtool:tool_states/1 run tag @s add setpos1
execute if predicate worldtool:tool_states/2 run tag @s add setpos2
execute if predicate worldtool:tool_states/3 run tag @s add setclonepos
execute if predicate worldtool:tool_states/4 run tag @s add wt_random_1
execute if predicate worldtool:tool_states/5 run tag @s add wt_random_2
execute if predicate worldtool:tool_states/6 run tag @s add wt_brush
execute if predicate worldtool:tool_states/7 run tag @s add wt_generation
execute if predicate worldtool:tool_states/8 run tag @s add wt_pick_block_tool

scoreboard players operation #tempMaxRayDistance worldtool = $raycastingMaxDistance worldtool
scoreboard players operation #tempMaxRayDistance worldtool *= #2 worldtool
scoreboard players reset @s wt_raycast
execute if entity @s[tag=holding_wttool] unless entity @s[predicate=worldtool:brush/before_block,tag=!grabbing_block] run function worldtool:ray/raycast
execute if entity @s[tag=holding_wttool] if entity @s[predicate=worldtool:brush/before_block,tag=!grabbing_block] run function worldtool:ray/raycast.b4b

#define score_holder #ID_temp
scoreboard players operation #ID_temp worldtool = @s wt_ID
execute unless entity @s[tag=!setpos1,tag=!setpos2] run function worldtool:ui_general/menus/click/set_positions
execute unless entity @s[tag=!setpos1,tag=!setpos2] run function worldtool:ui_general/menus/click/menus
scoreboard players reset @s wt_click
