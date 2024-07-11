# Called by worldtool:particles/player
# Sets up the particle preview for repeat

scoreboard players operation #ID_temp worldtool = @s wt.ID
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos1] if score @s wt.ID = #ID_temp worldtool run function worldtool:technical/common/temp_pos1
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos2] if score @s wt.ID = #ID_temp worldtool run function worldtool:technical/common/temp_pos2

tag @s add wt.no_message
function worldtool:measure/area/measure

scoreboard players set #particleRepeatPosX worldtool 0
scoreboard players set #particleRepeatPosY worldtool 0
scoreboard players set #particleRepeatPosZ worldtool 0

execute if score @s wt.amountX matches 1.. run scoreboard players set #particleRepeatPosX worldtool 1
execute if score @s wt.amountX matches ..-1 run scoreboard players set #particleRepeatPosX worldtool -1
execute if score @s wt.amountX matches 0 if score @s wt.amountZ matches 1.. run scoreboard players set #particleRepeatPosZ worldtool 1
execute if score @s wt.amountX matches 0 if score @s wt.amountZ matches ..-1 run scoreboard players set #particleRepeatPosZ worldtool -1
execute if score @s wt.amountX matches 0 if score @s wt.amountZ matches 0 if score @s wt.amountY matches 1.. run scoreboard players set #particleRepeatPosY worldtool 1
execute if score @s wt.amountX matches 0 if score @s wt.amountZ matches 0 if score @s wt.amountY matches ..-1 run scoreboard players set #particleRepeatPosY worldtool -1

scoreboard players operation #pos2xp worldtool = @s wt.amountX
scoreboard players operation #pos2yp worldtool = @s wt.amountY
scoreboard players operation #pos2zp worldtool = @s wt.amountZ

scoreboard players set #pos1xp worldtool 0
scoreboard players set #pos1yp worldtool 0
scoreboard players set #pos1zp worldtool 0

scoreboard players operation #offsetX worldtool = #pos2xt worldtool
scoreboard players operation #offsetX worldtool -= #pos1xt worldtool
scoreboard players operation #offsetY worldtool = #pos2yt worldtool
scoreboard players operation #offsetY worldtool -= #pos1yt worldtool
scoreboard players operation #offsetZ worldtool = #pos2zt worldtool
scoreboard players operation #offsetZ worldtool -= #pos1zt worldtool

execute if score #pos1xt worldtool < #pos2xt worldtool run scoreboard players add #pos2xt worldtool 1
execute if score #pos1yt worldtool < #pos2yt worldtool run scoreboard players add #pos2yt worldtool 1
execute if score #pos1zt worldtool < #pos2zt worldtool run scoreboard players add #pos2zt worldtool 1

execute if score #pos1xt worldtool >= #pos2xt worldtool run scoreboard players remove #pos2xt worldtool 1
execute if score #pos1yt worldtool >= #pos2yt worldtool run scoreboard players remove #pos2yt worldtool 1
execute if score #pos1zt worldtool >= #pos2zt worldtool run scoreboard players remove #pos2zt worldtool 1

function worldtool:particles/repeat_preview/main
