setblock ~ ~ ~ minecraft:structure_block{name:"worldtool:spheres/sphere_15",posX:-7,posY:-7,posZ:-7,mode:LOAD}
setblock ~ ~1 ~ minecraft:redstone_block

execute if predicate worldtool:brush/hollow run setblock ~ ~ ~ minecraft:structure_block{name:"worldtool:spheres/sphere_13_air",posX:-6,posY:-6,posZ:-6,mode:LOAD}
execute if predicate worldtool:brush/hollow run setblock ~ ~1 ~ minecraft:redstone_block