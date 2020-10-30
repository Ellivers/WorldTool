# Called by worldtool:init/init
# Makes sure there are blocks under the stored blocks used by functions
execute in minecraft:overworld run function worldtool:init/set_base_blocks
execute in minecraft:the_nether run function worldtool:init/set_base_blocks
execute in minecraft:the_end run function worldtool:init/set_base_blocks