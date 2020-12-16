# Loads the structure for a circle with size 23

execute if score #X worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{name:"worldtool:circles/circle_23_side",posX:0,posY:-11,posZ:-11,mode:LOAD}
execute if score #Y worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{name:"worldtool:circles/circle_23",posX:-11,posY:0,posZ:-11,mode:LOAD}
execute if score #Z worldtool matches 1 run setblock ~ ~ ~ minecraft:structure_block{name:"worldtool:circles/circle_23_side",rotation:"CLOCKWISE_90",posX:11,posY:-11,posZ:0,mode:LOAD}

clone ~1 ~ ~ ~1 ~ ~ 2 1 13 replace move
setblock ~1 ~ ~ minecraft:redstone_block
execute if score #X worldtool matches 1 run clone 2 1 13 2 1 13 ~1 ~ ~
