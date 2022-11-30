# Called by worldtool:ui_general/clone/menu
# Turns off filtering

tag @s remove wt.two_block_query.normal
tag @s remove wt.two_block_query.exclude

# set to "both" so that the fill process uses air when move is on
function worldtool:ui_general/input/start/both

function worldtool:ui_general/clone/menu
