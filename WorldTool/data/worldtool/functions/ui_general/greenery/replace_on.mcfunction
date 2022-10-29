# Called by worldtool:ui_general/greenery/menu
# Turns on replacing blocks

function worldtool:ui/remove_menu_tags
tag @s add wt.menu.greenery.replace
tag @s add wt.two_block_query.text.greenery_replace
function worldtool:ui_general/two_block_query/load/secondary
