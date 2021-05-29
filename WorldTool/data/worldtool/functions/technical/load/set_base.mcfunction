# Called by worldtool:load
# Makes sure there are blocks under the stored blocks used by processes
execute in minecraft:overworld run function worldtool:load/set_base_blocks
execute in minecraft:the_nether run function worldtool:load/set_base_blocks
execute in minecraft:the_end run function worldtool:load/set_base_blocks
