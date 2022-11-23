# Called by various functions
# Removes all tags set in the brush ui

tag @s remove wt.pick_block.other
tag @s remove wt.pick_block.other.secondary
tag @s remove wt.allow_input
tag @s remove wt.brush.select_block
tag @s remove wt.brush.first_replace
tag @s remove wt.brush.select_structure
tag @s remove wt.brush.select_structure_offset
tag @s remove wt.select_block.other.secondary

function #worldtool:hooks/ui_brush/remove_ui_tags
