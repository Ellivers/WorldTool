# Called by worldtool:ui_general/shell/menu
# Enables an inside block

function worldtool:ui/remove_menu_tags
tag @s add wt.menu.shell.inner_block
tag @s add wt.shell.inner_block

tag @s add wt.two_block_query.text.secondary.standard
tag @s add wt.dont_start_input
tag @s add wt.two_block_query.locked_rule
tag @s add wt.two_block_query.secondary
function worldtool:ui_general/two_block_query/load/secondary
