# Called by various functions
# Used to return to wherever the caller wants it to return to

execute if entity @s[tag=wt.menu.replace] run function worldtool:ui_general/replace/start
execute if entity @s[tag=wt.menu.measure.filter] run function worldtool:ui_general/measure/filter_start
execute if entity @s[tag=wt.menu.clone.filter] run function worldtool:ui_general/clone/menu
execute if entity @s[tag=wt.menu.randomize.exclude] run function worldtool:ui_general/randomize/set_source/exclude_selected
execute if entity @s[tag=wt.menu.randomize.replace] run function worldtool:ui_general/randomize/replace_selected
execute if entity @s[tag=wt.menu.checkered.replace] run function worldtool:ui_general/checkered/menu
execute if entity @s[tag=wt.menu.shell.inner_block] run function worldtool:ui_general/shell/menu
execute if entity @s[tag=wt.brush.first_replace] run function worldtool:ui_brush/menu
execute if entity @s[tag=wt.brush.select_block] run function worldtool:ui_brush/menu
execute if entity @s[tag=wt.shapes.select_block] run function worldtool:ui_shapes/menu

function #worldtool:addon/ui/return
