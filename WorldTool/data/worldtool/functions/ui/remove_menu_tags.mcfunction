# Called by various functions
# Removes menu tags set in the UI

execute if entity @s[tag=wt.menu.queue] run function worldtool:ui/queue/leave

tag @s remove wt.menu.general.p1
tag @s remove wt.menu.replace
tag @s remove wt.menu.two_block_query.1
tag @s remove wt.menu.two_block_query.2
tag @s remove wt.menu.two_block_query.3
tag @s remove wt.two_block_query.secondary
tag @s remove wt.two_block_query.primary
tag @s remove wt.two_block_query.text.replace
tag @s remove wt.menu.measure
tag @s remove wt.menu.measure.filter
tag @s remove wt.two_block_query.text.filter

function #worldtool:addon/ui/remove_menu_tags
