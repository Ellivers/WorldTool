setblock ~ ~ ~ minecraft:structure_block{name:"worldtool:spheres/sphere_13",posX:-6,posY:-6,posZ:-6,mode:LOAD}
setblock ~ ~1 ~ minecraft:redstone_block

execute if entity @s[tag=brush_hollow] run setblock ~ ~ ~ minecraft:structure_block{name:"worldtool:spheres/sphere_11_air",posX:-5,posY:-5,posZ:-5,mode:LOAD}
execute if entity @s[tag=brush_hollow] run setblock ~ ~1 ~ minecraft:redstone_block