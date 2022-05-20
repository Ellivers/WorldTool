# Called by various functions
# Removes menu tags set in the UI

execute if entity @s[tag=wt.menu.queue] run function worldtool:ui/queue/leave

tag @s remove wt.menu.general.p1
tag @s remove wt.menu.replace
tag @s remove wt.menu.clone
tag @s remove wt.menu.clone.filter
tag @s remove wt.menu.clone.rotate
tag @s remove wt.menu.two_block_query.1
tag @s remove wt.menu.two_block_query.2
tag @s remove wt.menu.two_block_query.3
tag @s remove wt.two_block_query.secondary
tag @s remove wt.two_block_query.primary
tag @s remove wt.two_block_query.text.replace
tag @s remove wt.menu.measure
tag @s remove wt.menu.measure.filter
tag @s remove wt.two_block_query.text.filter
tag @s remove wt.pick_block.primary
tag @s remove wt.pick_block.secondary
tag @s remove wt.dont_start_input
tag @s remove wt.particles

tag @s remove wt.setup.fill
tag @s remove wt.setup.replace
tag @s remove wt.setup.clone
tag @s remove wt.setup.filter_measure

function #worldtool:addon/ui/remove_menu_tags
