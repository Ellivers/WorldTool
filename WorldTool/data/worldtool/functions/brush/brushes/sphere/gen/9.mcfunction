setblock ~ ~ ~ minecraft:structure_block{name:"worldtool:spheres/sphere_9",posX:-4,posY:-4,posZ:-4,mode:LOAD}
setblock ~ ~1 ~ minecraft:redstone_block

execute if predicate worldtool:brush/hollow run setblock ~ ~ ~ minecraft:structure_block{name:"worldtool:spheres/sphere_7_air",posX:-3,posY:-3,posZ:-3,mode:LOAD}
execute if predicate worldtool:brush/hollow run setblock ~ ~1 ~ minecraft:redstone_block