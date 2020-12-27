# Called by worldtool:player_tick

#execute unless score @s wt_ID matches -2147483648.. unless score $20w12a+ worldtool matches 1 store result score @s wt_ID run data get entity @s UUIDMost 0.0000000001
#execute unless score @s wt_ID matches -2147483648.. if score $20w12a+ worldtool matches 1 store result score @s wt_ID run data get entity @s UUID[0]
# If the player doesn't have an ID, give one
execute unless score @s wt_ID matches -2147483648.. run function worldtool:assign_id

tag @s remove holding_wttool
tag @s remove setpos2
tag @s remove setpos1
tag @s remove setclonepos
tag @s remove random_1
tag @s remove random_2
tag @s remove wt_brush
tag @s remove wt_generation
tag @s[predicate=worldtool:tool_states/all] add holding_wttool

#scoreboard players reset $tempholding worldtool
#execute store result score $tempholding worldtool run data get entity @s[tag=holding_wttool] SelectedItem.tag.Type
#execute if score $tempholding worldtool matches 1 run tag @s add setpos1
#execute if score $tempholding worldtool matches 2 run tag @s add setpos2
#execute if score $tempholding worldtool matches 3 run tag @s add setclonepos
#execute if score $tempholding worldtool matches 4 run tag @s add random_1
#execute if score $tempholding worldtool matches 5 run tag @s add random_2
#execute if score $tempholding worldtool matches 6 run tag @s add wt_brush
execute if predicate worldtool:tool_states/1 run tag @s add setpos1
execute if predicate worldtool:tool_states/2 run tag @s add setpos2
execute if predicate worldtool:tool_states/3 run tag @s add setclonepos
execute if predicate worldtool:tool_states/4 run tag @s add random_1
execute if predicate worldtool:tool_states/5 run tag @s add random_2
execute if predicate worldtool:tool_states/6 run tag @s add wt_brush
execute if predicate worldtool:tool_states/7 run tag @s add wt_generation
execute if predicate worldtool:tool_states/8 run tag @s add wt_pick_block_tool

#define score_holder #ID_temp
scoreboard players operation #ID_temp worldtool = @s wt_ID
execute unless entity @s[tag=!setpos1,tag=!setpos2] run function worldtool:ui/general_tool/set_positions
execute unless entity @s[tag=!setpos1,tag=!setpos2] run function worldtool:ui/general_tool/menus
scoreboard players reset @s wt_click

scoreboard players operation #tempMaxRayDistance worldtool = $raycastingMaxDistance worldtool
scoreboard players operation #tempMaxRayDistance worldtool *= #2 worldtool
scoreboard players reset @s wt_raycast
execute if entity @s[tag=holding_wttool] unless entity @s[predicate=worldtool:brush/before_block,tag=!grabbing_block] run function worldtool:ray/raycast
execute if entity @s[tag=holding_wttool] if entity @s[predicate=worldtool:brush/before_block,tag=!grabbing_block] run function worldtool:ray/raycast.b4b
