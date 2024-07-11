# Called by worldtool:input_check/main
# Tags for the primary block (at x+1)

execute if entity @s[tag=wt.menu.general.page1] run function worldtool:ui_general/fill/start
execute if entity @s[tag=wt.menu.two_block_query.3] run function worldtool:ui_general/two_block_query/return
execute if entity @s[tag=wt.menu.checkered] run function worldtool:ui_general/checkered/start
execute if entity @s[tag=wt.menu.shell] run function worldtool:ui_general/shell/start
execute if entity @s[tag=wt.menu.outline] run function worldtool:ui_general/outline/start
execute if entity @s[tag=wt.menu.shatter] run function worldtool:ui_general/shatter/start

function #worldtool:hooks/input/primary_block
