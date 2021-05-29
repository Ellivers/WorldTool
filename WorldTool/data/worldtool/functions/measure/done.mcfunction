# Called by worldtool:measure/measure
# Completes the measure calculations

# Calculations
scoreboard players operation #totalArea worldtool = #widthX worldtool
scoreboard players operation #totalArea worldtool *= #heightY worldtool
scoreboard players operation #totalArea worldtool *= #lengthZ worldtool

# Message
execute unless entity @s[tag=wt.no_message] run function worldtool:measure/message
tag @s remove wt.no_message


function #worldtool:addon/measure_done
