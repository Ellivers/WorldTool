# Called by worldtool:use_tool/raycast and worldtool:use_tool/raycast_v2
# Different actions raycast tools

execute if entity @s[tag=wt.tool.general.pos1] align xyz positioned ~.5 ~.5 ~.5 run function worldtool:use_tool/ray_hit/general_pos1
execute if entity @s[tag=wt.tool.general.pos2] align xyz positioned ~.5 ~.5 ~.5 run function worldtool:use_tool/ray_hit/general_pos2

function #worldtool:addon/use_tool/ray_hit
