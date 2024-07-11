# Called by worldtool:use_tool/use

function #worldtool:hooks/use_tool/remove_tags
tag @s remove wt.tool.general.pos1
tag @s remove wt.tool.general.pos2
tag @s remove wt.tool.general.clonepos
tag @s remove wt.tool.general.random_pos1
tag @s remove wt.tool.general.random_pos2
tag @s remove wt.tool.general.pick_block

tag @s remove wt.tool.brush
tag @s remove wt.tool.shapes

tag @s remove wt.raycast
tag @s remove wt.raycast_normal
tag @s remove wt.raycast_before
