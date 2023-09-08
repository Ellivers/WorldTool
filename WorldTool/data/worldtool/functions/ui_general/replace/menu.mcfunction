# Called by worldtool:ui_general/page1 and worldtool:ui/return.back
# Displays the replace menu

function worldtool:ui/remove_menu_tags
tag @s add wt.menu.replace
tag @s add wt.two_block_query.text.replace.run
function worldtool:ui_general/two_block_query/load/both
