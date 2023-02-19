# Called by worldtool:ui_general/page2
# Loads/resets the greenery menu

tag @s remove wt.two_block_query.normal
tag @s remove wt.two_block_query.exclude

execute if score $keepMenuOptions worldtool matches 0 run tag @s remove wt.greenery.remove_current

function worldtool:ui_general/greenery/plant_sources/remove_all
tag @s add wt.greenery.source.plains

function worldtool:ui_general/greenery/menu
function worldtool:ui_general/input/start/secondary
