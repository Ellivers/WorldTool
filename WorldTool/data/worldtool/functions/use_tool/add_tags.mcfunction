# Called by worldtool:use_tool/click/use and worldtool:use_tool/hold/load

tag @s add wt.raycast_normal
execute if predicate worldtool:tools/general/pos1 run tag @s add wt.tool.general.pos1
execute if predicate worldtool:tools/general/pos2 run tag @s add wt.tool.general.pos2
execute if predicate worldtool:tools/general/clonepos run tag @s add wt.tool.general.clonepos
execute if predicate worldtool:tools/general/random_pos1 run tag @s add wt.tool.general.random_pos1
execute if predicate worldtool:tools/general/random_pos2 run tag @s add wt.tool.general.random_pos2
execute if predicate worldtool:tools/general/pick_block run tag @s add wt.tool.general.pick_block

execute if predicate worldtool:tools/brush run tag @s add wt.tool.brush
execute if predicate worldtool:tools/shapes run tag @s add wt.tool.shapes

execute if entity @s[predicate=worldtool:tools/general,predicate=worldtool:common_settings/before_block] run tag @s remove wt.raycast_normal
execute if entity @s[predicate=worldtool:tools/general,predicate=worldtool:common_settings/before_block] run tag @s add wt.raycast_before

execute if entity @s[tag=wt.tool.shapes,tag=!wt.pick_block.other,predicate=worldtool:common_settings/before_block] run tag @s remove wt.raycast_normal
execute if entity @s[tag=wt.tool.shapes,tag=!wt.pick_block.other,predicate=worldtool:common_settings/before_block] run tag @s add wt.raycast_before

execute if entity @s[tag=wt.tool.brush,predicate=worldtool:brush_tool/settings/before_block,tag=!wt.pick_block.other] run tag @s remove wt.raycast_normal
execute if entity @s[tag=wt.tool.brush,predicate=worldtool:brush_tool/settings/before_block,tag=!wt.pick_block.other] run tag @s add wt.raycast_before

function #worldtool:hooks/use_tool/add_tags
