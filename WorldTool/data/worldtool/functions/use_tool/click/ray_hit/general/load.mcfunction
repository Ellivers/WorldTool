# Called by worldtool:use_tool/click/ray_hit/load
# Code for the general tool

scoreboard players set #success worldtool 0

tag @s add wt.no_message
execute unless entity @s[tag=!wt.tool.general.pos1,tag=!wt.tool.general.pos1] if entity @s[tag=wt.in_menu] run function worldtool:ui/close
tag @s remove wt.no_message

execute if entity @s[tag=wt.tool.general.pos1] run function worldtool:use_tool/click/ray_hit/general/pos1
execute if entity @s[tag=wt.tool.general.pos2] run function worldtool:use_tool/click/ray_hit/general/pos2
execute if entity @s[tag=wt.tool.general.pick_block] run function worldtool:pick_block/general_tool/load
execute if entity @s[tag=wt.tool.general.clonepos] run function worldtool:ui_general/clone/select_destination/selected
execute if entity @s[tag=wt.menu.randomize.set_source.pos2] run function worldtool:use_tool/click/ray_hit/general/randomization_source/pos2
execute if entity @s[tag=wt.menu.randomize.set_source.pos1] run function worldtool:use_tool/click/ray_hit/general/randomization_source/pos1
execute if entity @s[tag=wt.menu.select_paste_pos] run function worldtool:ui_general/options/paste/pos_selected

function #worldtool:hooks/use_tool/click/ray_hit/general

execute if score #success worldtool matches 0 run function worldtool:ui_general/reset_tool
