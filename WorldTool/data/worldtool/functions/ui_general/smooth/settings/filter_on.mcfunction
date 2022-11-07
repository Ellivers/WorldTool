# Called by worldtool:ui_general/smooth/menu
# Turns on filtering

function worldtool:ui/remove_menu_tags
tag @s add wt.menu.smooth.filter
tag @s add wt.two_block_query.text.filter
function worldtool:ui_general/two_block_query/load/secondary
