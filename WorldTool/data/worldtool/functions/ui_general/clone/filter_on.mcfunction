# Called by worldtool:ui_general/clone/menu
# Turns on filtering

function worldtool:ui/remove_menu_tags
tag @s add wt.menu.clone.filter
tag @s add wt.two_block_query.text.filter
function worldtool:ui/two_block_query/load/secondary
