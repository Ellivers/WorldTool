# Called by worldtool:ui_general/clone/get_rotation_offset
# Code for rotating +180 degrees X

scoreboard players operation #offsetZ worldtool *= #-1 worldtool
scoreboard players operation #offsetY worldtool *= #-1 worldtool
