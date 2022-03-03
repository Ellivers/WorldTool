# Called by worldtool:block_test/main
# Tags for the secondary block (at x-1)

execute if entity @s[tag=wt.menu.two_block_query.2] run function worldtool:ui/two_block_query/display/secondary_selected

function #worldtool:addon/input/secondary_block
