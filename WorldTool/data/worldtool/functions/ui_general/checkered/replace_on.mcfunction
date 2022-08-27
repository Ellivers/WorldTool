# Called by worldtool:ui_general/checkered/menu
# Turns on replacing

function worldtool:ui/remove_menu_tags
tag @s add wt.menu.checkered.replace
tag @s add wt.two_block_query.text.replace
tag @s add wt.dont_start_input
function worldtool:ui_general/two_block_query/load/secondary
