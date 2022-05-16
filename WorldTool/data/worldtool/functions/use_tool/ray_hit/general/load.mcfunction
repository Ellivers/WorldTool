# Called by worldtool:use_tool/ray_hit/load
# Code for the general tool

scoreboard players set #success worldtool 0

execute if entity @s[tag=wt.tool.general.pos1] run function worldtool:use_tool/ray_hit/general/pos1
execute if entity @s[tag=wt.tool.general.pos2] run function worldtool:use_tool/ray_hit/general/pos2
execute if entity @s[tag=wt.tool.general.pick_block] run function worldtool:pick_block/general_tool/load
execute if entity @s[tag=wt.tool.general.clonepos] run function worldtool:ui_general/clone/select_destination/selected

execute if score #success worldtool matches 0 run item modify entity @s weapon.mainhand worldtool:general_tool/pos1

function #worldtool:addon/use_tool/ray_hit/general
