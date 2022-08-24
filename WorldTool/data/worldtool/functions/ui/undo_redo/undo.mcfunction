# Called by worldtool:ui/undo_redo/display
# Undoes, and then reopens the menu

function worldtool:technical/save_load/undo/start

execute if entity @s[tag=wt.menu.options] run function worldtool:ui_general/options/menu
execute if entity @s[tag=wt.menu.shapes.options] run function worldtool:ui_shapes/options/menu

function #worldtool:addon/ui/undo_redo/undo
