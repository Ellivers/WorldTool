# Called by worldtool:ui_general/two_block_query/display/1
# Toggles the replace/filter mode

tag @s[tag=wt.two_block_query.normal] add wt.temp

tag @s remove wt.two_block_query.normal
tag @s remove wt.two_block_query.exclude

tag @s[tag=wt.temp] add wt.two_block_query.exclude
tag @s[tag=!wt.temp] add wt.two_block_query.normal

tag @s remove wt.temp

function worldtool:ui_general/two_block_query/display/1
