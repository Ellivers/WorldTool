# Called by worldtool:ui_general/repeat/menu
# Turns on filtering

function worldtool:ui/remove_menu_tags
tag @s add wt.menu.repeat.filter
tag @s add wt.two_block_query.text.filter
function worldtool:ui_general/two_block_query/load/secondary
