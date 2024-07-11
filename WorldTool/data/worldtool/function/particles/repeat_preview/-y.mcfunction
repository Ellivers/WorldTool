scoreboard players operation #pos2zp worldtool = #pos1zp worldtool
scoreboard players operation #pos1zp worldtool = #particleRepeatPosZ worldtool
scoreboard players operation #pos2xp worldtool = #pos1xp worldtool
scoreboard players operation #pos1xp worldtool = #particleRepeatPosX worldtool

scoreboard players remove #particleRepeatPosY worldtool 1
function worldtool:particles/repeat_preview/main
