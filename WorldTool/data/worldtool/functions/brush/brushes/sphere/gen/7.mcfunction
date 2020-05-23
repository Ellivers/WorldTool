setblock ~ ~ ~ minecraft:structure_block{name:"worldtool:spheres/sphere_7",posX:-3,posY:-3,posZ:-3,mode:LOAD}
setblock ~ ~1 ~ minecraft:redstone_block

execute if predicate worldtool:brush/hollow run setblock ~ ~ ~ minecraft:structure_block{name:"worldtool:spheres/sphere_5_air",posX:-2,posY:-2,posZ:-2,mode:LOAD}
execute if predicate worldtool:brush/hollow run setblock ~ ~1 ~ minecraft:redstone_block