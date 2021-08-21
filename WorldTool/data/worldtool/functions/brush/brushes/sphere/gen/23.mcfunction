setblock ~ ~ ~ minecraft:structure_block{name:"worldtool:spheres/sphere_23",posX:-11,posY:-11,posZ:-11,mode:LOAD}
setblock ~ ~1 ~ minecraft:redstone_block

execute if entity @s[tag=brush_hollow] run setblock ~ ~ ~ minecraft:structure_block{name:"worldtool:spheres/sphere_21_air",posX:-10,posY:-10,posZ:-10,mode:LOAD}
execute if entity @s[tag=brush_hollow] run setblock ~ ~1 ~ minecraft:redstone_block