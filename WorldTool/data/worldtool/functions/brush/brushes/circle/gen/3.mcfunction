execute if score #X worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{name:"worldtool:circles/circle_3_side",posX:0,posY:-1,posZ:-1,mode:LOAD}
execute if score #Y worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{name:"worldtool:circles/circle_3",posX:-1,posY:0,posZ:-1,mode:LOAD}
execute if score #Z worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{name:"worldtool:circles/circle_3_side",rotation:"CLOCKWISE_90",posX:1,posY:-1,posZ:0,mode:LOAD}

clone ~1 ~ ~ ~1 ~ ~ 2 1 13
setblock ~1 ~ ~ minecraft:redstone_block
execute if score #X worldtool matches 1 run clone 2 1 13 2 1 13 ~1 ~ ~