# Called by worldtool:ui_general/clone/get_rotation_offset
# Code for rotating +90 degrees Z

scoreboard players operation #offsetX worldtool >< #offsetY worldtool
scoreboard players operation #offsetY worldtool *= #-1 worldtool
