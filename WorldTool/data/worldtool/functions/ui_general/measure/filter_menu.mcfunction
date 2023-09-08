# Called by worldtool:ui_general/measure/menu
# Initiates the filtering menu

function worldtool:ui/remove_menu_tags
tag @s add wt.menu.measure.filter
tag @s add wt.two_block_query.text.filter.run
function worldtool:ui_general/two_block_query/load/secondary
