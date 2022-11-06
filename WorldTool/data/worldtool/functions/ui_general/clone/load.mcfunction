# Called by worldtool:ui_general/page1 and worldtool:ui_general/clone/menu
# Initiates the clone menu

tag @s remove wt.two_block_query.normal
tag @s remove wt.two_block_query.exclude

tag @s add wt.clone.mode.standard
tag @s remove wt.clone.mode.template

# set to "both" so that the fill process uses air when move is on
function worldtool:ui_general/input/start/both
function worldtool:ui_general/clone/menu
