# Called by worldtool:ui_general/page1
# Removes all tags specific to submenus of the general tool

tag @s remove wt.two_block_query.normal
tag @s remove wt.two_block_query.exclude

tag @s remove wt.randomize.replace
tag @s remove wt.randomize.replace.normal
tag @s remove wt.randomize.replace.exclude

tag @s remove wt.checkered.alternate.x
tag @s remove wt.checkered.alternate.y
tag @s remove wt.checkered.alternate.z
tag @s remove wt.checkered.start_with_block

function #worldtool:addon/ui_general/remove_submenu_tags