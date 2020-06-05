setblock ~ ~ ~ minecraft:structure_block{name:"worldtool:spheres/sphere_19",posX:-9,posY:-9,posZ:-9,mode:LOAD}
setblock ~ ~1 ~ minecraft:redstone_block

execute if entity @s[tag=brush_hollow] run setblock ~ ~ ~ minecraft:structure_block{name:"worldtool:spheres/sphere_17_air",posX:-8,posY:-8,posZ:-8,mode:LOAD}
execute if entity @s[tag=brush_hollow] run setblock ~ ~1 ~ minecraft:redstone_block