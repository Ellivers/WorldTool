# Called by worldtool:input_check/main
# Tags for the secondary block (at x-1)

execute if entity @s[tag=wt.menu.two_block_query.1] run function worldtool:ui_general/two_block_query/display/secondary_selected

function #worldtool:hooks/input/secondary_block
