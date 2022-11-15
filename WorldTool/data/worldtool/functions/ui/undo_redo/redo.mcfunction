# Called by worldtool:ui/undo_redo/display
# Redoes, and then reopens the menu

function worldtool:technical/save_load/redo/start

execute if entity @s[tag=wt.menu.options] run function worldtool:ui_general/options/menu
execute if entity @s[tag=wt.menu.shapes.options] run function worldtool:ui_shapes/options/menu

function #worldtool:hooks/ui/undo_redo/redo
