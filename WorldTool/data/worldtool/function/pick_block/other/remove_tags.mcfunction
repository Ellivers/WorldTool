# Called by various functions
# Removes all tags that specify which tool/state the block is picked for

tag @s remove wt.pick_block.other
tag @s remove wt.pick_block.other.secondary

function #worldtool:hooks/pick_block/remove_tags
