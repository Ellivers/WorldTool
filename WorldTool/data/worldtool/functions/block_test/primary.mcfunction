# Called by worldtool:block_test/main
# Tags for the primary block (at x+1)

execute if entity @s[tag=wt.menu.general.p1] run function worldtool:ui_general/fill_start
execute if entity @s[tag=wt.menu.two_block_query.3] run function worldtool:ui/two_block_query/return

function #worldtool:addon/input/primary_block
