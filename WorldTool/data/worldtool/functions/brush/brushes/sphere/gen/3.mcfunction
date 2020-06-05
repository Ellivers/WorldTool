setblock ~ ~ ~ minecraft:structure_block{name:"worldtool:spheres/sphere_3",posX:-1,posY:-1,posZ:-1,mode:LOAD}
setblock ~ ~1 ~ minecraft:redstone_block

execute if entity @s[tag=brush_hollow] run setblock ~ ~ ~ minecraft:air