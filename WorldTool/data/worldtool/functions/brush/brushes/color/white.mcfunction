execute if block ~ ~ ~ #minecraft:planks run setblock ~ ~ ~ minecraft:birch_planks
execute if block ~ ~ ~ #minecraft:logs run setblock ~ ~ ~ minecraft:birch_log
execute if block ~ ~ ~ #minecraft:wool run setblock ~ ~ ~ minecraft:white_wool
#execute if block ~ ~ ~ #minecraft:wooden_stairs
execute if block ~ ~ ~ minecraft:red_sand run setblock ~ ~ ~ minecraft:sand
execute if block ~ ~ ~ minecraft:red_sandstone run setblock ~ ~ ~ minecraft:sandstone
execute if block ~ ~ ~ minecraft:chiseled_red_sandstone run setblock ~ ~ ~ minecraft:chiseled_sandstone
execute if block ~ ~ ~ minecraft:cut_red_sandstone run setblock ~ ~ ~ minecraft:cut_sandstone
execute if block ~ ~ ~ minecraft:smooth_red_sandstone run setblock ~ ~ ~ minecraft:smooth_sandstone
execute if block ~ ~ ~ minecraft:red_sandstone_slab run function worldtool:brush/brushes/color/white/red_sandstone_slab
execute if block ~ ~ ~ minecraft:cut_red_sandstone_slab run function worldtool:brush/brushes/color/white/cut_red_sandstone_slab
execute if block ~ ~ ~ minecraft:smooth_red_sandstone_slab run function worldtool:brush/brushes/color/white/smooth_red_sandstone_slab

#execute if block ~ ~ ~ #worldtool:glass_panes run setblock ~ ~ ~ minecraft:white_stained_glass_pane
execute if block ~ ~ ~ #worldtool:glass run setblock ~ ~ ~ minecraft:white_stained_glass

execute if block ~ ~ ~ #worldtool:concrete run setblock ~ ~ ~ minecraft:white_concrete
execute if block ~ ~ ~ #minecraft:carpets run setblock ~ ~ ~ minecraft:white_carpet
execute if block ~ ~ ~ #worldtool:tulips run setblock ~ ~ ~ minecraft:white_tulip
execute if block ~ ~ ~ #worldtool:terracotta run setblock ~ ~ ~ minecraft:white_terracotta
execute if block ~ ~ ~ #worldtool:glazed_terracotta run setblock ~ ~ ~ minecraft:white_glazed_terracotta

execute if block ~ ~ ~ minecraft:polished_andesite run setblock ~ ~ ~ minecraft:polished_diorite
execute if block ~ ~ ~ minecraft:polished_granite run setblock ~ ~ ~ minecraft:polished_diorite
execute if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:diorite
execute if block ~ ~ ~ minecraft:grass_block[snowy=false] run setblock ~ ~ ~ minecraft:grass_block[snowy=true]