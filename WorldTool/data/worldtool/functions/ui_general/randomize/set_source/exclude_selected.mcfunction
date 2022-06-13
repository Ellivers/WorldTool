# Called by worldtool:ui/return
# Selects the excluded block

function worldtool:ui/remove_menu_tags
tag @s add wt.randomize.exclude
tag @s add wt.menu.randomize.set_source.confirm
function worldtool:ui_general/randomize/set_source/start
