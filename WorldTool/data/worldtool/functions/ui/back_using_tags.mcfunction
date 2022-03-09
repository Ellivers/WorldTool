# Called by various functions
# Goes back to the previous menu using its tag

execute if entity @s[tag=wt.menu.queue] run function worldtool:ui/queue/leave

execute if entity @s[tag=wt.menu.two_block_query.2] run function worldtool:ui/two_block_query/display/1
execute if entity @s[tag=wt.menu.two_block_query.3,tag=!wt.two_block_query.primary] run function worldtool:ui/two_block_query/display/2
execute if entity @s[tag=wt.menu.two_block_query.3,tag=wt.two_block_query.primary] run function worldtool:ui/return.back
execute if entity @s[tag=wt.menu.general.p1] run function worldtool:ui_general/click/backto
execute if entity @s[tag=wt.menu.options] run function worldtool:ui_general/click/backto

function #worldtool:addon/ui/back_using_tags
