# Called by worldtool:ui_general/clone/get_destination_corners
# Code for rotating +90 degrees Y

scoreboard players operation #newDistX worldtool >< #newDistZ worldtool
scoreboard players operation #newDistZ worldtool *= #-1 worldtool
