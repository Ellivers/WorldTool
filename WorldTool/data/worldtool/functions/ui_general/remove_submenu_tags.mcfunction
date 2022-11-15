# Called by worldtool:ui_general/page1
# Removes all tags specific to submenus of the general tool

tag @s remove wt.two_block_query.normal
tag @s remove wt.two_block_query.exclude

tag @s remove wt.clone.mode.standard
tag @s remove wt.clone.mode.template
tag @s remove wt.clone.at_player

tag @s remove wt.randomize.replace
tag @s remove wt.randomize.replace.normal
tag @s remove wt.randomize.replace.exclude

tag @s remove wt.checkered.alternate.x
tag @s remove wt.checkered.alternate.y
tag @s remove wt.checkered.alternate.z
tag @s remove wt.checkered.start_with_block

tag @s remove wt.greenery.remove_current
function worldtool:ui_general/greenery/plant_sources/remove_all

tag @s remove wt.shatter.drop_items

tag @s remove wt.shell.inner_block
tag @s remove wt.shell.side.up
tag @s remove wt.shell.side.down
tag @s remove wt.shell.side.north
tag @s remove wt.shell.side.south
tag @s remove wt.shell.side.east
tag @s remove wt.shell.side.west

tag @s remove wt.smooth.direction.up
tag @s remove wt.smooth.direction.down
tag @s remove wt.smooth.direction.east
tag @s remove wt.smooth.direction.west
tag @s remove wt.smooth.direction.north
tag @s remove wt.smooth.direction.south

function #worldtool:hooks/ui_general/remove_submenu_tags
