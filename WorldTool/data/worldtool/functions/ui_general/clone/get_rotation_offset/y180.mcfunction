# Called by worldtool:ui_general/clone/get_rotation_offset
# Code for rotating +180 degrees Y

scoreboard players operation #offsetX worldtool >< #offsetZ worldtool
scoreboard players operation #offsetX worldtool *= #-1 worldtool
scoreboard players operation #offsetZ worldtool *= #-1 worldtool
