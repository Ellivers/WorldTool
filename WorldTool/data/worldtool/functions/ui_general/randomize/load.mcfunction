# Called by worldtool:ui_general/page_1.display and worldtool:ui_general/randomize/menu
# Initiates the randomization menu

tag @s remove wt.menu.randomize.replace
tag @s remove wt.menu.randomize.replace.normal
tag @s remove wt.menu.randomize.replace.exclude

function worldtool:ui/start_input/secondary
function worldtool:ui_general/randomize/menu
