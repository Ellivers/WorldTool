# Called by worldtool:process_start/brush/start/shapes/sphere
# Places spheres made of air

execute if score #brushSize_temp worldtool matches 3 run setblock ~ ~ ~ minecraft:air
execute if score #brushSize_temp worldtool matches 5 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",author:"worldtool:sphere_hollow",name:"worldtool:spheres/3_air",posX:-1,posY:-1,posZ:-1}
execute if score #brushSize_temp worldtool matches 7 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",author:"worldtool:sphere_hollow",name:"worldtool:spheres/5_air",posX:-2,posY:-2,posZ:-2}
execute if score #brushSize_temp worldtool matches 9 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",author:"worldtool:sphere_hollow",name:"worldtool:spheres/7_air",posX:-3,posY:-3,posZ:-3}
execute if score #brushSize_temp worldtool matches 11 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",author:"worldtool:sphere_hollow",name:"worldtool:spheres/9_air",posX:-4,posY:-4,posZ:-4}
execute if score #brushSize_temp worldtool matches 13 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",author:"worldtool:sphere_hollow",name:"worldtool:spheres/11_air",posX:-5,posY:-5,posZ:-5}
execute if score #brushSize_temp worldtool matches 15 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",author:"worldtool:sphere_hollow",name:"worldtool:spheres/13_air",posX:-6,posY:-6,posZ:-6}
execute if score #brushSize_temp worldtool matches 17 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",author:"worldtool:sphere_hollow",name:"worldtool:spheres/15_air",posX:-7,posY:-7,posZ:-7}
execute if score #brushSize_temp worldtool matches 19 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",author:"worldtool:sphere_hollow",name:"worldtool:spheres/17_air",posX:-8,posY:-8,posZ:-8}
execute if score #brushSize_temp worldtool matches 21 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",author:"worldtool:sphere_hollow",name:"worldtool:spheres/19_air",posX:-9,posY:-9,posZ:-9}
execute if score #brushSize_temp worldtool matches 23 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",author:"worldtool:sphere_hollow",name:"worldtool:spheres/21_air",posX:-10,posY:-10,posZ:-10}
execute if score #brushSize_temp worldtool matches 25.. run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",author:"worldtool:sphere_hollow",name:"worldtool:spheres/23_air",posX:-11,posY:-11,posZ:-11}

# Some annoying block update stuff
execute unless score #brushSize_temp worldtool matches 3 run setblock ~ ~1 ~ minecraft:air
execute unless score #brushSize_temp worldtool matches 3 if block ~ ~ ~ minecraft:structure_block{author:"worldtool:sphere_hollow"} run setblock ~ ~1 ~ minecraft:redstone_block
