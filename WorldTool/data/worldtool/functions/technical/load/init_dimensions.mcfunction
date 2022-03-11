# Called by worldtool:load
# Sets base blocks for all of Minecraft's default dimensions, plus potentially some other ones

execute store success score #success worldtool in minecraft:overworld if entity @e[type=minecraft:marker,tag=worldtool,tag=wt.dimension_base,distance=0..]
execute if score #success worldtool matches 0 at @a[limit=1] in minecraft:overworld run function worldtool:technical/load/set_base_blocks/load

execute store success score #success worldtool in minecraft:the_nether if entity @e[type=minecraft:marker,tag=worldtool,tag=wt.dimension_base,distance=0..]
execute if score #success worldtool matches 0 at @a[limit=1] in minecraft:the_nether run function worldtool:technical/load/set_base_blocks/load

execute store success score #success worldtool in minecraft:the_end if entity @e[type=minecraft:marker,tag=worldtool,tag=wt.dimension_base,distance=0..]
execute if score #success worldtool matches 0 at @a[limit=1] in minecraft:the_end run function worldtool:technical/load/set_base_blocks/load

function #worldtool:addon/init_dimensions/init_dims
