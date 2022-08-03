# Called by worldtool:load
# Sets base blocks for all of Minecraft's default dimensions

execute in minecraft:overworld run function worldtool:technical/load/set_base_blocks
execute in minecraft:the_nether run function worldtool:technical/load/set_base_blocks
execute in minecraft:the_end run function worldtool:technical/load/set_base_blocks

function #worldtool:addon/init_dimensions/init_dims
