# Called by worldtool:process/repeat/main
# Corrects the X position of the secondary process entity, by moving it back

execute if score #tempDir worldtool matches -1 unless score #prevProcessPosX worldtool = #originPosX worldtool as 9880ccfe-fdf6-4538-838a-ddc75a54608e at @s run tp ~1 ~ ~
execute if score #tempDir worldtool matches 1 unless score #prevProcessPosX worldtool = #originPosX worldtool as 9880ccfe-fdf6-4538-838a-ddc75a54608e at @s run tp ~-1 ~ ~
execute if score #tempDir worldtool matches -2 unless score #prevProcessPosY worldtool = #originPosY worldtool as 9880ccfe-fdf6-4538-838a-ddc75a54608e at @s run tp ~ ~1 ~
execute if score #tempDir worldtool matches 2 unless score #prevProcessPosY worldtool = #originPosY worldtool as 9880ccfe-fdf6-4538-838a-ddc75a54608e at @s run tp ~ ~-1 ~
execute if score #tempDir worldtool matches -3 unless score #prevProcessPosZ worldtool = #originPosZ worldtool as 9880ccfe-fdf6-4538-838a-ddc75a54608e at @s run tp ~ ~ ~1
execute if score #tempDir worldtool matches 3 unless score #prevProcessPosZ worldtool = #originPosZ worldtool as 9880ccfe-fdf6-4538-838a-ddc75a54608e at @s run tp ~ ~ ~-1
