# Called by worldtool:use_brush/start/shapes/sphere
# Places spheres made of air

execute if score @s wt.brush_size matches 3 run setblock ~ ~ ~ minecraft:air
execute if score @s wt.brush_size matches 5 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:spheres/3_air",posX:-1,posY:-1,posZ:-1}
execute if score @s wt.brush_size matches 7 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:spheres/5_air",posX:-2,posY:-2,posZ:-2}
execute if score @s wt.brush_size matches 9 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:spheres/7_air",posX:-3,posY:-3,posZ:-3}
execute if score @s wt.brush_size matches 11 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:spheres/9_air",posX:-4,posY:-4,posZ:-4}
execute if score @s wt.brush_size matches 13 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:spheres/11_air",posX:-5,posY:-5,posZ:-5}
execute if score @s wt.brush_size matches 15 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:spheres/13_air",posX:-6,posY:-6,posZ:-6}
execute if score @s wt.brush_size matches 17 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:spheres/15_air",posX:-7,posY:-7,posZ:-7}
execute if score @s wt.brush_size matches 19 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:spheres/17_air",posX:-8,posY:-8,posZ:-8}
execute if score @s wt.brush_size matches 21 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:spheres/19_air",posX:-9,posY:-9,posZ:-9}
execute if score @s wt.brush_size matches 23 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:spheres/21_air",posX:-10,posY:-10,posZ:-10}
execute if score @s wt.brush_size matches 25.. run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:spheres/23_air",posX:-11,posY:-11,posZ:-11}

# Some annoying block update stuff
scoreboard players set #temp worldtool 0
execute if block ~ ~1 ~ minecraft:redstone_block if block ~1 ~ ~ minecraft:redstone_block run scoreboard players set #temp worldtool 1

execute unless score @s wt.brush_size matches 3 if score #temp worldtool matches 0 unless block ~ ~1 ~ minecraft:redstone_block run scoreboard players set #temp worldtool 2
execute unless score @s wt.brush_size matches 3 if score #temp worldtool matches 2 run setblock ~ ~1 ~ minecraft:redstone_block

execute unless score @s wt.brush_size matches 3 if score #temp worldtool matches 0 unless block ~1 ~ ~ minecraft:redstone_block run scoreboard players set #temp worldtool 3
execute unless score @s wt.brush_size matches 3 if score #temp worldtool matches 3 run setblock ~1 ~ ~ minecraft:redstone_block
execute unless score @s wt.brush_size matches 3 if score #temp worldtool matches 1 run setblock ~ ~1 ~ minecraft:air
