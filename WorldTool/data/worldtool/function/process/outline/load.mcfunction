# Called by worldtool:process/load.tags
# Sets up a few values

scoreboard players set #pos1xt worldtool -2147483648
scoreboard players operation #pos1xt worldtool > #pos1xo worldtool
scoreboard players operation #pos1xt worldtool > #pos2xo worldtool
scoreboard players set #pos1yt worldtool -2147483648
scoreboard players operation #pos1yt worldtool > #pos1yo worldtool
scoreboard players operation #pos1yt worldtool > #pos2yo worldtool
scoreboard players set #pos1zt worldtool -2147483648
scoreboard players operation #pos1zt worldtool > #pos1zo worldtool
scoreboard players operation #pos1zt worldtool > #pos2zo worldtool

scoreboard players set #pos2xt worldtool 2147483647
scoreboard players operation #pos2xt worldtool < #pos1xo worldtool
scoreboard players operation #pos2xt worldtool < #pos2xo worldtool
scoreboard players set #pos2yt worldtool 2147483647
scoreboard players operation #pos2yt worldtool < #pos1yo worldtool
scoreboard players operation #pos2yt worldtool < #pos2yo worldtool
scoreboard players set #pos2zt worldtool 2147483647
scoreboard players operation #pos2zt worldtool < #pos1zo worldtool
scoreboard players operation #pos2zt worldtool < #pos2zo worldtool

function worldtool:process/outline/main
