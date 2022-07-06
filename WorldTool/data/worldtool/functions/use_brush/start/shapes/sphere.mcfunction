# Called by worldtool:use_brush/start/load
# Places templates for the different sphere sizes

execute if score @s wt.brush_size matches ..1 run clone 27451 1 19 27451 1 19 ~ ~ ~
execute if score @s wt.brush_size matches 3 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",author:"worldtool:sphere",name:"worldtool:spheres/3",posX:-1,posY:-1,posZ:-1}
execute if score @s wt.brush_size matches 5 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",author:"worldtool:sphere",name:"worldtool:spheres/5",posX:-2,posY:-2,posZ:-2}
execute if score @s wt.brush_size matches 7 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",author:"worldtool:sphere",name:"worldtool:spheres/7",posX:-3,posY:-3,posZ:-3}
execute if score @s wt.brush_size matches 9 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",author:"worldtool:sphere",name:"worldtool:spheres/9",posX:-4,posY:-4,posZ:-4}
execute if score @s wt.brush_size matches 11 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",author:"worldtool:sphere",name:"worldtool:spheres/11",posX:-5,posY:-5,posZ:-5}
execute if score @s wt.brush_size matches 13 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",author:"worldtool:sphere",name:"worldtool:spheres/13",posX:-6,posY:-6,posZ:-6}
execute if score @s wt.brush_size matches 15 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",author:"worldtool:sphere",name:"worldtool:spheres/15",posX:-7,posY:-7,posZ:-7}
execute if score @s wt.brush_size matches 17 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",author:"worldtool:sphere",name:"worldtool:spheres/17",posX:-8,posY:-8,posZ:-8}
execute if score @s wt.brush_size matches 19 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",author:"worldtool:sphere",name:"worldtool:spheres/19",posX:-9,posY:-9,posZ:-9}
execute if score @s wt.brush_size matches 21 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",author:"worldtool:sphere",name:"worldtool:spheres/21",posX:-10,posY:-10,posZ:-10}
execute if score @s wt.brush_size matches 23 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",author:"worldtool:sphere",name:"worldtool:spheres/23",posX:-11,posY:-11,posZ:-11}
execute if score @s wt.brush_size matches 25.. run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",author:"worldtool:sphere",name:"worldtool:spheres/25",posX:-12,posY:-12,posZ:-12}

# Some annoying block update stuff
execute unless score @s wt.brush_size matches ..1 run setblock ~ ~1 ~ minecraft:redstone_block
execute unless score @s wt.brush_size matches ..1 if block ~ ~ ~ minecraft:structure_block{author:"worldtool:sphere"} run setblock ~ ~1 ~ minecraft:air

execute unless score @s wt.brush_size matches ..1 if predicate worldtool:brush_tool/settings/hollow run function worldtool:use_brush/start/shapes/sphere_hollow
