# Called by worldtool:input_check/secondary and worldtool:ui_general/two_block_query/display/2

execute if entity @s[tag=!wt.two_block_query.secondary] run function worldtool:ui_general/two_block_query/display/3
execute if entity @s[tag=wt.two_block_query.secondary] run function worldtool:ui_general/two_block_query/return
