# Called by worldtool:ui_shapes/update_preview/load
# Commands to run as the position

execute if score #updatePreview worldtool matches 1 run function worldtool:ui_shapes/update_preview/update
scoreboard players add #positions_temp worldtool 1
