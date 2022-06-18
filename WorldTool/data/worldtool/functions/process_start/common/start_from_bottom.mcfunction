# Called by worldtool:process_start/summon.writer
# Makes the process start from the bottom

scoreboard players set #temp2 worldtool 0
execute if score #pos1y worldtool > #pos2y worldtool run scoreboard players set #temp2 worldtool 1

scoreboard players set #temp worldtool 2147483647
scoreboard players operation #temp worldtool < #pos1y worldtool
scoreboard players operation #temp worldtool < #pos2y worldtool
scoreboard players operation #pos1y worldtool = #temp worldtool

scoreboard players set #temp worldtool -2147483648
scoreboard players operation #temp worldtool > #pos1y worldtool
scoreboard players operation #temp worldtool > #pos2y worldtool
scoreboard players operation #pos2y worldtool = #temp worldtool

scoreboard players operation #writerPosX worldtool = #pos1x worldtool
scoreboard players operation #writerPosY worldtool = #pos1y worldtool
scoreboard players operation #writerPosZ worldtool = #pos1z worldtool

execute store result entity @s Pos[1] double 1 run scoreboard players get #pos1y worldtool

execute if score #temp2 worldtool matches 1 if entity @s[tag=wt.process.clone] as 9880ccfe-fdf6-4538-838a-ddc75a54608e run function worldtool:ui_general/clone/set_reciever_at_bottom

function #worldtool:addon/process_start/start_from_bottom
