setblock ~ ~ ~ minecraft:structure_block{name:"worldtool:spheres/sphere_21",posX:-10,posY:-10,posZ:-10,mode:LOAD}
setblock ~ ~1 ~ minecraft:redstone_block

execute if entity @s[tag=brush_hollow] run setblock ~ ~ ~ minecraft:structure_block{name:"worldtool:spheres/sphere_19_air",posX:-9,posY:-9,posZ:-9,mode:LOAD}
execute if entity @s[tag=brush_hollow] run setblock ~ ~1 ~ minecraft:redstone_block