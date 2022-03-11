# Called by worldtool:technical/load/set_base_blocks/load
# Sets up the blocks and entity

fill ~-2 ~ ~-1 ~2 ~2 ~1 minecraft:bedrock
setblock ~-1 ~1 ~ minecraft:air
setblock ~1 ~1 ~ minecraft:air

summon minecraft:marker ~ ~1 ~ {Tags:["worldtool","wt.dimension_base","wt.can_forceload"],CustomName:'"WorldTool Dimension Base"'}
