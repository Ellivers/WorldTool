# Called by worldtool:ui/select_block/replace/display
# Toggles the replace/filter mode

tag @s[tag=wt.replace.normal] add wt.temp

tag @s remove wt.replace.normal
tag @s remove wt.replace.exclude

tag @s[tag=wt.temp] add wt.replace.exclude
tag @s[tag=!wt.temp] add wt.replace.normal

tag @s remove wt.temp

execute if entity @s[tag=!wt.replace.first_time] run function worldtool:ui/select_block/replace/apply_mode

function worldtool:ui/select_block/replace/display
