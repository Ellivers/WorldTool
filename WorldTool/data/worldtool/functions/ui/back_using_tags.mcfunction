# Called by various functions
# Goes back to the previous menu using its tag

tag @s remove wt.in_queue

execute if entity @s[tag=wt.menu.two_block_query.1] run function worldtool:ui/two_block_query/display/1
execute if entity @s[tag=wt.menu.two_block_query.2,tag=!wt.two_block_query.primary] run function worldtool:ui/two_block_query/display/2
execute if entity @s[tag=wt.menu.two_block_query.2,tag=wt.two_block_query.primary] run function worldtool:ui/return.back
execute if entity @s[tag=wt.menu.general.p1] run function worldtool:ui_general/click/backto

function #worldtool:addon/ui/back_using_tags
