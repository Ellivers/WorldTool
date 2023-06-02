# Called by worldtool:use_tool/drop/tools/shapes
# Makes the menu appear next tick

tag @s add wt.schedule_menu.shapes

schedule function worldtool:ui_shapes/schedule_menu/done 2t
