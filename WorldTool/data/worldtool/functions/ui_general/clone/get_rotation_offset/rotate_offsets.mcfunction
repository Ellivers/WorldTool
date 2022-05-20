# Called by worldtool:ui_general/clone/get_rotation_offset/load and the clone rotation functions
# Rotates the offsets accordingly

execute if score #tempRotX worldtool matches 90 run function worldtool:ui_general/clone/get_rotation_offset/x90
execute if score #tempRotX worldtool matches 180 run function worldtool:ui_general/clone/get_rotation_offset/x180
execute if score #tempRotX worldtool matches 270 run function worldtool:ui_general/clone/get_rotation_offset/x270

execute if score #tempRotY worldtool matches 90 run function worldtool:ui_general/clone/get_rotation_offset/y90
execute if score #tempRotY worldtool matches 180 run function worldtool:ui_general/clone/get_rotation_offset/y180
execute if score #tempRotY worldtool matches 270 run function worldtool:ui_general/clone/get_rotation_offset/y270

execute if score #tempRotZ worldtool matches 90 run function worldtool:ui_general/clone/get_rotation_offset/z90
execute if score #tempRotZ worldtool matches 180 run function worldtool:ui_general/clone/get_rotation_offset/z180
execute if score #tempRotZ worldtool matches 270 run function worldtool:ui_general/clone/get_rotation_offset/z270

execute if score #mirrorX worldtool matches 1 run function worldtool:ui_general/clone/get_rotation_offset/x_mirror
execute if score #mirrorY worldtool matches 1 run function worldtool:ui_general/clone/get_rotation_offset/y_mirror
execute if score #mirrorZ worldtool matches 1 run function worldtool:ui_general/clone/get_rotation_offset/z_mirror
