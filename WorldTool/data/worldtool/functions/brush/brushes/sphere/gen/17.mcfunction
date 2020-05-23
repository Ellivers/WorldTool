setblock ~ ~ ~ minecraft:structure_block{name:"worldtool:spheres/sphere_17",posX:-8,posY:-8,posZ:-8,mode:LOAD}
setblock ~ ~1 ~ minecraft:redstone_block

execute if predicate worldtool:brush/hollow run setblock ~ ~ ~ minecraft:structure_block{name:"worldtool:spheres/sphere_15_air",posX:-7,posY:-7,posZ:-7,mode:LOAD}
execute if predicate worldtool:brush/hollow run setblock ~ ~1 ~ minecraft:redstone_block