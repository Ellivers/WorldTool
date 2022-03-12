# Called by worldtool:load
# Sets base blocks for all of Minecraft's default dimensions, plus potentially some other ones

execute in minecraft:overworld positioned 27450 0 19 run function worldtool:technical/load/set_base_blocks
execute in minecraft:the_nether positioned 27450 0 19 run function worldtool:technical/load/set_base_blocks
execute in minecraft:the_end positioned 27450 0 19 run function worldtool:technical/load/set_base_blocks

function #worldtool:addon/init_dimensions/init_dims
