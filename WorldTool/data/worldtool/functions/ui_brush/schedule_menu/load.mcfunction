# Called by worldtool:use_tool/drop/tools/brush
# Makes the menu appear next tick

tag @s add wt.schedule_menu.brush

schedule function worldtool:ui_brush/schedule_menu/done 2t
