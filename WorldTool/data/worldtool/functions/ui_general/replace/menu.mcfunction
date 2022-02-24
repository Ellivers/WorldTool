# Called by worldtool:ui_general/page1.display and worldtool:ui/return.back
# Initiates the replace menu

function worldtool:ui/remove_menu_tags
tag @s add wt.menu.replace
tag @s add wt.two_block_query.text.replace
function worldtool:ui/two_block_query/load/both
