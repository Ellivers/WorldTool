# Called by worldtool:ui_general/randomize/set_source/confirm
# Shows an exclude menu

tag @s remove wt.menu.randomize.set_source.confirm
tag @s add wt.menu.randomize.exclude
tag @s add wt.two_block_query.text.randomize_exclude
tag @s add wt.two_block_query.locked_rule
tag @s add wt.two_block_query.exclude
tag @s add wt.two_block_query.secondary
function worldtool:ui_general/two_block_query/display/2
