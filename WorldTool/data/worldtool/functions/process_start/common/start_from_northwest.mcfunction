# Called by worldtool:process_start/summon.writer
# Makes the process start from the northwest corner

scoreboard players set #temp worldtool 2147483647
scoreboard players operation #temp worldtool < #pos1x worldtool
scoreboard players operation #temp worldtool < #pos2x worldtool
scoreboard players operation #pos1xt worldtool = #temp worldtool

scoreboard players set #temp worldtool -2147483648
scoreboard players operation #temp worldtool > #pos1x worldtool
scoreboard players operation #temp worldtool > #pos2x worldtool
scoreboard players operation #pos2x worldtool = #temp worldtool

scoreboard players set #temp worldtool 2147483647
scoreboard players operation #temp worldtool < #pos1z worldtool
scoreboard players operation #temp worldtool < #pos2z worldtool
scoreboard players operation #pos1zt worldtool = #temp worldtool

scoreboard players set #temp worldtool -2147483648
scoreboard players operation #temp worldtool > #pos1z worldtool
scoreboard players operation #temp worldtool > #pos2z worldtool
scoreboard players operation #pos2z worldtool = #temp worldtool

scoreboard players operation #pos1x worldtool = #pos1xt worldtool
scoreboard players operation #pos1z worldtool = #pos1zt worldtool

scoreboard players operation #writerPosX worldtool = #pos1x worldtool
scoreboard players operation #writerPosZ worldtool = #pos1z worldtool

execute store result entity @s Pos[0] double 1 run scoreboard players get #pos1x worldtool
execute store result entity @s Pos[2] double 1 run scoreboard players get #pos1z worldtool

function #worldtool:addon/process_start/start_from_northwest
