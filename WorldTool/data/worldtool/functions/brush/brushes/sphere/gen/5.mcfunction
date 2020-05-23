setblock ~ ~ ~ minecraft:structure_block{name:"worldtool:spheres/sphere_5",posX:-2,posY:-2,posZ:-2,mode:LOAD}
setblock ~ ~1 ~ minecraft:redstone_block

execute if predicate worldtool:brush/hollow run setblock ~ ~ ~ minecraft:structure_block{name:"worldtool:spheres/sphere_3_air",posX:-1,posY:-1,posZ:-1,mode:LOAD}
execute if predicate worldtool:brush/hollow run setblock ~ ~1 ~ minecraft:redstone_block