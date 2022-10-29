# Called by worldtool:ui_general/greenery/menu
# Toggles the option to remove all current greenery in the area before placing new

execute if entity @s[tag=wt.greenery.remove_current] run tag @s add wt.temp
tag @s[tag=wt.temp] remove wt.greenery.remove_current
tag @s[tag=!wt.temp] add wt.greenery.remove_current

tag @s remove wt.temp

function worldtool:ui_general/greenery/menu
