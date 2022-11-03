# Called by worldtool:ui_general/clone/menu
# Turns off filtering

function worldtool:ui_general/two_block_query/load/secondary

tag @s remove wt.two_block_query.normal
tag @s remove wt.two_block_query.exclude

function worldtool:ui_general/clone/menu
