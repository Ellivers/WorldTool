# Called by various functions
# Displays the "click" menu, with a sound

execute unless score @s wt.ID matches 1.. run function worldtool:technical/common/assign_id

function worldtool:ui/sound.button
function worldtool:ui_general/click/display
