# Called by worldtool:ui_general/page1 and worldtool:ui_general/clone/menu
# Initiates the clone menu

tag @s remove wt.two_block_query.normal
tag @s remove wt.two_block_query.exclude

tag @s add wt.clone.mode.standard
tag @s remove wt.clone.mode.template

function worldtool:ui_general/input/start/secondary
function worldtool:ui_general/clone/menu
