# Called by worldtool:use_tool/raycast/done
# Different actions raycast tools

execute if predicate worldtool:tools/general align xyz positioned ~.5 ~.5 ~.5 run function worldtool:use_tool/click/ray_hit/general/load

execute if entity @s[tag=wt.tool.brush,tag=!wt.pick_block.other] run function worldtool:process_start/brush/load
execute if entity @s[tag=wt.tool.brush,tag=wt.pick_block.other] run function worldtool:pick_block/other/load

execute if entity @s[tag=!wt.user,tag=wt.tool.shapes,tag=!wt.pick_block.other] run function worldtool:ui/verify_operator/display
execute if entity @s[tag=wt.tool.shapes,tag=wt.user,tag=!wt.pick_block.other,predicate=!worldtool:shape_tool/settings/continuous_place] run function worldtool:use_tool/click/ray_hit/shape_tool_pos
execute if entity @s[tag=wt.tool.shapes,tag=wt.user,tag=!wt.pick_block.other,predicate=worldtool:shape_tool/settings/continuous_place] run function worldtool:process_start/shapes/continuous
execute if entity @s[tag=wt.tool.shapes,tag=wt.pick_block.other] run function worldtool:pick_block/other/load

function #worldtool:hooks/use_tool/click/ray_hit/all
