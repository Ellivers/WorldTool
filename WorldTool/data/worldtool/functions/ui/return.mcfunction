# Called by various functions
# Used to return to wherever the caller wants it to return to

execute if entity @s[tag=wt.menu.replace] run function worldtool:ui_general/replace/start
execute if entity @s[tag=wt.menu.measure.filter] run function worldtool:ui_general/measure/filter_start

function #worldtool:addon/ui/return
