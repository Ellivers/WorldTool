# Called by worldtool:ui_general/measure/menu
# Initiates the filtering menu

function worldtool:ui/remove_menu_tags
tag @s add wt.menu.measure.filter
tag @s add wt.two_block_query.text.filter
function worldtool:ui/two_block_query/load/secondary
