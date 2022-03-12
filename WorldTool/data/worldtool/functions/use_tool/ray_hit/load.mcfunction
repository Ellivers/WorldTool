# Called by worldtool:use_tool/raycast and worldtool:use_tool/raycast_v2
# Different actions raycast tools

execute if entity @s[tag=wt.tool.general.pos1] align xyz positioned ~.5 ~.5 ~.5 run function worldtool:use_tool/ray_hit/general_pos1
execute if entity @s[tag=wt.tool.general.pos2] align xyz positioned ~.5 ~.5 ~.5 run function worldtool:use_tool/ray_hit/general_pos2
execute if entity @s[tag=wt.tool.general.pick_block] run function worldtool:pick_block/general_tool/load

execute if entity @s[tag=wt.tool.brush,tag=!wt.pick_block.brush] run function worldtool:use_brush/load
execute if entity @s[tag=wt.tool.brush,tag=wt.pick_block.brush] run function worldtool:pick_block/other/load

function #worldtool:addon/use_tool/ray_hit
