# Called by worldtool:ui_general/page_2 and worldtool:ui_general/clone/menu
# Initiates the checkered menu

execute if entity @s[tag=!wt.menu.checkered] run function worldtool:ui_general/checkered/add_tags

tag @s remove wt.two_block_query.normal
tag @s remove wt.two_block_query.exclude

function worldtool:ui/start_input/both
function worldtool:ui_general/checkered/menu
