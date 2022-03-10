# Called by worldtool:measure/measure
# Completes the measure calculations

# Calculations
scoreboard players operation #totalArea worldtool = #sizeX worldtool
scoreboard players operation #totalArea worldtool *= #sizeY worldtool
scoreboard players operation #totalArea worldtool *= #sizeZ worldtool

# Message
execute if entity @s[tag=!wt.no_message] run function worldtool:ui/reopen_menu
execute if entity @s[tag=!wt.no_message] run function worldtool:measure/message
tag @s remove wt.no_message

function #worldtool:addon/measure_done
