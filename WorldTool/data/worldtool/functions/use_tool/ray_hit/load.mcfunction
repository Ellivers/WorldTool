# Called by worldtool:use_tool/raycast and worldtool:use_tool/raycast_v2
# Different actions raycast tools

execute if predicate worldtool:tools/general run function worldtool:use_tool/ray_hit/general/load

execute if entity @s[tag=wt.tool.brush,tag=!wt.pick_block.brush] run function worldtool:use_brush/load
execute if entity @s[tag=wt.tool.brush,tag=wt.pick_block.brush] run function worldtool:pick_block/other/load

function #worldtool:addon/use_tool/ray_hit/all
