setblock ~ ~ ~ minecraft:structure_block{name:"worldtool:spheres/sphere_11",posX:-5,posY:-5,posZ:-5,mode:LOAD}
setblock ~ ~1 ~ minecraft:redstone_block

execute if entity @s[tag=brush_hollow] run setblock ~ ~ ~ minecraft:structure_block{name:"worldtool:spheres/sphere_9_air",posX:-4,posY:-4,posZ:-4,mode:LOAD}
execute if entity @s[tag=brush_hollow] run setblock ~ ~1 ~ minecraft:redstone_block