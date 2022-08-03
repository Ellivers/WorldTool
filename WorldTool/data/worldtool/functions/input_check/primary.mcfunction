# Called by worldtool:input_check/main
# Tags for the primary block (at x+1)

execute if entity @s[tag=wt.menu.general.p1] run function worldtool:ui_general/fill/start
execute if entity @s[tag=wt.menu.two_block_query.3] run function worldtool:ui/two_block_query/return
execute if entity @s[tag=wt.menu.checkered] run function worldtool:ui_general/checkered/start

function #worldtool:addon/input/primary_block
