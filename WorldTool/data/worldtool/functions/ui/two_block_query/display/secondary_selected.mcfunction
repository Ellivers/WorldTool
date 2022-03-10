# Called by worldtool:block_test/secondary and worldtool:ui/two_block_query/display/2

execute if entity @s[tag=!wt.two_block_query.secondary] run function worldtool:ui/two_block_query/display/3
execute if entity @s[tag=wt.two_block_query.secondary] run function worldtool:ui/two_block_query/return
