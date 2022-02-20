# Called by worldtool:block_test/main
# Tags for the primary block (at x+1)

execute if entity @s[tag=wt.menu.general.p1] run function worldtool:ui_general/fill_start

function #worldtool:addon/input/primary_block
