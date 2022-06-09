# Called by worldtool:ui/return
# Selects the excluded block

function worldtool:ui/remove_menu_tags
tag @s add wt.randomize.exclude
function worldtool:ui_general/randomize/set_source/start
