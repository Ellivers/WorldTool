# Called by various functions
# Goes back to the caller menu using its tag

function worldtool:ui/remove_return_tags

tag @s remove wt.dont_start_input

execute if entity @s[tag=wt.menu.replace] run function worldtool:ui_general/page1
execute if entity @s[tag=wt.menu.measure.filter] run function worldtool:ui_general/measure/menu
execute if entity @s[tag=wt.menu.clone.filter] run function worldtool:ui_general/clone/menu
execute if entity @s[tag=wt.menu.randomize.exclude] run function worldtool:ui_general/randomize/set_source/confirm
execute if entity @s[tag=wt.menu.randomize.replace] run function worldtool:ui_general/randomize/menu
execute if entity @s[tag=wt.brush.first_replace] run function worldtool:ui_brush/select_brush/replace/cancel
execute if entity @s[tag=wt.brush.select_block] run function worldtool:ui_brush/menu
execute if entity @s[tag=wt.shapes.select_block] run function worldtool:ui_shapes/menu

function #worldtool:addon/ui/return.back
