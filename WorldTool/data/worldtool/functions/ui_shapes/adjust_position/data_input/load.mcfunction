# Called by worldtool:input_check/player
# Sets values inputted by the player

function worldtool:input_data/get/set_shape_position_data
kill @e[type=minecraft:item,tag=worldtool,tag=wt.selected_data,sort=nearest,limit=1]

execute if data storage worldtool:storage Temp.Data.Position run function worldtool:ui_shapes/adjust_position/data_input/set_position
execute if data storage worldtool:storage Temp.Data.StepSize run function worldtool:ui_shapes/adjust_position/data_input/set_step_size

function worldtool:ui_shapes/adjust_position/menu
