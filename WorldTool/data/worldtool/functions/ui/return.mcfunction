# Called by various functions
# Used to return to wherever the caller wants it to return to

execute if entity @s[tag=wt.menu.replace] run function worldtool:ui_general/replace/start

function #worldtool:addon/ui/return
