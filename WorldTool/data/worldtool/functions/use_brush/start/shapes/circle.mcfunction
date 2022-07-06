# Called by worldtool:use_brush/start/load
# Places templates for the different circle sizes

function worldtool:use_brush/get_axis/load

execute if score @s wt.brush_size matches ..1 run clone 27451 1 19 27451 1 19 ~ ~ ~
execute if score @s wt.brush_size matches 3 if score #temp.X worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:circles/3_side",posX:0,posY:-1,posZ:-1}
execute if score @s wt.brush_size matches 3 if score #temp.Y worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:circles/3",posX:-1,posY:0,posZ:-1}
execute if score @s wt.brush_size matches 3 if score #temp.Z worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:circles/3_side",posX:1,posY:-1,posZ:0,rotation:"CLOCKWISE_90"}
execute if score @s wt.brush_size matches 5 if score #temp.X worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:circles/5_side",posX:0,posY:-2,posZ:-2}
execute if score @s wt.brush_size matches 5 if score #temp.Y worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:circles/5",posX:-2,posY:0,posZ:-2}
execute if score @s wt.brush_size matches 5 if score #temp.Z worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:circles/5_side",posX:2,posY:-2,posZ:0,rotation:"CLOCKWISE_90"}
execute if score @s wt.brush_size matches 7 if score #temp.X worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:circles/7_side",posX:0,posY:-3,posZ:-3}
execute if score @s wt.brush_size matches 7 if score #temp.Y worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:circles/7",posX:-3,posY:0,posZ:-3}
execute if score @s wt.brush_size matches 7 if score #temp.Z worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:circles/7_side",posX:3,posY:-3,posZ:0,rotation:"CLOCKWISE_90"}
execute if score @s wt.brush_size matches 9 if score #temp.X worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:circles/9_side",posX:0,posY:-4,posZ:-4}
execute if score @s wt.brush_size matches 9 if score #temp.Y worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:circles/9",posX:-4,posY:0,posZ:-4}
execute if score @s wt.brush_size matches 9 if score #temp.Z worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:circles/9_side",posX:4,posY:-4,posZ:0,rotation:"CLOCKWISE_90"}
execute if score @s wt.brush_size matches 11 if score #temp.X worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:circles/11_side",posX:0,posY:-5,posZ:-5}
execute if score @s wt.brush_size matches 11 if score #temp.Y worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:circles/11",posX:-5,posY:0,posZ:-5}
execute if score @s wt.brush_size matches 11 if score #temp.Z worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:circles/11_side",posX:5,posY:-5,posZ:0,rotation:"CLOCKWISE_90"}
execute if score @s wt.brush_size matches 13 if score #temp.X worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:circles/13_side",posX:0,posY:-6,posZ:-6}
execute if score @s wt.brush_size matches 13 if score #temp.Y worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:circles/13",posX:-6,posY:0,posZ:-6}
execute if score @s wt.brush_size matches 13 if score #temp.Z worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:circles/13_side",posX:6,posY:-6,posZ:0,rotation:"CLOCKWISE_90"}
execute if score @s wt.brush_size matches 15 if score #temp.X worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:circles/15_side",posX:0,posY:-7,posZ:-7}
execute if score @s wt.brush_size matches 15 if score #temp.Y worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:circles/15",posX:-7,posY:0,posZ:-7}
execute if score @s wt.brush_size matches 15 if score #temp.Z worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:circles/15_side",posX:7,posY:-7,posZ:0,rotation:"CLOCKWISE_90"}
execute if score @s wt.brush_size matches 17 if score #temp.X worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:circles/17_side",posX:0,posY:-8,posZ:-8}
execute if score @s wt.brush_size matches 17 if score #temp.Y worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:circles/17",posX:-8,posY:0,posZ:-8}
execute if score @s wt.brush_size matches 17 if score #temp.Z worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:circles/17_side",posX:8,posY:-8,posZ:0,rotation:"CLOCKWISE_90"}
execute if score @s wt.brush_size matches 19 if score #temp.X worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:circles/19_side",posX:0,posY:-9,posZ:-9}
execute if score @s wt.brush_size matches 19 if score #temp.Y worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:circles/19",posX:-9,posY:0,posZ:-9}
execute if score @s wt.brush_size matches 19 if score #temp.Z worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:circles/19_side",posX:9,posY:-9,posZ:0,rotation:"CLOCKWISE_90"}
execute if score @s wt.brush_size matches 21 if score #temp.X worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:circles/21_side",posX:0,posY:-10,posZ:-10}
execute if score @s wt.brush_size matches 21 if score #temp.Y worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:circles/21",posX:-10,posY:0,posZ:-10}
execute if score @s wt.brush_size matches 21 if score #temp.Z worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:circles/21_side",posX:10,posY:-10,posZ:0,rotation:"CLOCKWISE_90"}
execute if score @s wt.brush_size matches 23 if score #temp.X worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:circles/23_side",posX:0,posY:-11,posZ:-11}
execute if score @s wt.brush_size matches 23 if score #temp.Y worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:circles/23",posX:-11,posY:0,posZ:-11}
execute if score @s wt.brush_size matches 23 if score #temp.Z worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:circles/23_side",posX:11,posY:-11,posZ:0,rotation:"CLOCKWISE_90"}
execute if score @s wt.brush_size matches 25 if score #temp.X worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:circles/25_side",posX:0,posY:-12,posZ:-12}
execute if score @s wt.brush_size matches 25 if score #temp.Y worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:circles/25",posX:-12,posY:0,posZ:-12}
execute if score @s wt.brush_size matches 25.. if score #temp.Z worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"worldtool:circles/25_side",posX:12,posY:-12,posZ:0,rotation:"CLOCKWISE_90"}

execute unless score @s wt.brush_size matches ..1 if score #temp.Y worldtool matches 1 run clone ~ ~1 ~ ~ ~1 ~ 27449 1 19

# Some annoying block update stuff
scoreboard players set #temp worldtool 0
execute if block ~ ~1 ~ minecraft:redstone_block if block ~1 ~ ~ minecraft:redstone_block run scoreboard players set #temp worldtool 1

execute unless score @s wt.brush_size matches ..1 if score #temp worldtool matches 0 unless block ~ ~1 ~ minecraft:redstone_block run scoreboard players set #temp worldtool 2
execute unless score @s wt.brush_size matches ..1 if score #temp worldtool matches 2 run setblock ~ ~1 ~ minecraft:redstone_block

execute unless score @s wt.brush_size matches ..1 if score #temp worldtool matches 0 unless block ~1 ~ ~ minecraft:redstone_block run scoreboard players set #temp worldtool 3
execute unless score @s wt.brush_size matches ..1 if score #temp worldtool matches 3 run setblock ~1 ~ ~ minecraft:redstone_block
execute unless score @s wt.brush_size matches ..1 if score #temp worldtool matches 1 run setblock ~ ~1 ~ minecraft:air


execute unless score @s wt.brush_size matches ..1 if score #temp.Y worldtool matches 1 run clone 27449 1 19 27449 1 19 ~ ~1 ~
