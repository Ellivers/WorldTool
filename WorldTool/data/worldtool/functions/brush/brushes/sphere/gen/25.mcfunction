setblock ~ ~ ~ minecraft:structure_block{name:"worldtool:spheres/sphere_25",posX:-12,posY:-12,posZ:-12,mode:LOAD}
setblock ~ ~1 ~ minecraft:redstone_block

execute if entity @s[tag=brush_hollow] run setblock ~ ~ ~ minecraft:structure_block{name:"worldtool:spheres/sphere_23_air",posX:-11,posY:-11,posZ:-11,mode:LOAD}
execute if entity @s[tag=brush_hollow] run setblock ~ ~1 ~ minecraft:redstone_block