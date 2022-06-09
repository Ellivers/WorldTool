# Called by various functions
# Used to return to wherever the caller wants it to return to

execute if entity @s[tag=wt.menu.replace] run function worldtool:ui_general/replace/start
execute if entity @s[tag=wt.menu.measure.filter] run function worldtool:ui_general/measure/filter_start
execute if entity @s[tag=wt.menu.clone.filter] run function worldtool:ui_general/clone/menu
execute if entity @s[tag=wt.menu.randomize.exclude] run function worldtool:ui_general/randomize/set_source/exclude_selected
execute if entity @s[tag=wt.menu.randomize.replace_return] run function worldtool:ui_general/randomize/replace_selected

function #worldtool:addon/ui/return
