execute if score #X worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{name:"worldtool:circles/circle_13_side",posX:0,posY:-6,posZ:-6,mode:LOAD}
execute if score #Y worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{name:"worldtool:circles/circle_13",posX:-6,posY:0,posZ:-6,mode:LOAD}
execute if score #Z worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{name:"worldtool:circles/circle_13_side",rotation:"CLOCKWISE_90",posX:6,posY:-6,posZ:0,mode:LOAD}

clone ~1 ~ ~ ~1 ~ ~ 2 1 13
setblock ~1 ~ ~ minecraft:redstone_block
execute if score #X worldtool matches 1 run clone 2 1 13 2 1 13 ~1 ~ ~