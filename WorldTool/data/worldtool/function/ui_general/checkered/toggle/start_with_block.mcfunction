# Called by worldtool:ui_general/checkered/menu
# Toggles starting with a block

tag @s[tag=wt.checkered.start_with_block] add wt.temp
tag @s[tag=wt.temp] remove wt.checkered.start_with_block
tag @s[tag=!wt.temp] add wt.checkered.start_with_block

tag @s remove wt.temp

function worldtool:ui_general/checkered/menu
