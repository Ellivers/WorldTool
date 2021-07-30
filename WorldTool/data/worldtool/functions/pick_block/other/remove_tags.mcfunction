# Called by various functions
# Removes all tags that specify which tool/state the block is picked for

tag @s remove wt.pick_block.brush
tag @s remove wt.pick_block.secondary
tag @s remove wt.pick_block.shapes

function #worldtool:addon/pick_block/remove_tags
