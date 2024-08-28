# Called by various functions
# Corrects the X position of the secondary process entity, by moving it back

execute if score #tempDir worldtool matches -1 unless score #prevProcessPosX worldtool = #processPosX worldtool as 9880ccfe-fdf6-4538-838a-ddc75a54608e at @s run tp ~1 ~ ~
execute if score #tempDir worldtool matches 1 unless score #prevProcessPosX worldtool = #processPosX worldtool as 9880ccfe-fdf6-4538-838a-ddc75a54608e at @s run tp ~-1 ~ ~
execute if score #tempDir worldtool matches -2 unless score #prevProcessPosY worldtool = #processPosY worldtool as 9880ccfe-fdf6-4538-838a-ddc75a54608e at @s run tp ~ ~1 ~
execute if score #tempDir worldtool matches 2 unless score #prevProcessPosY worldtool = #processPosY worldtool as 9880ccfe-fdf6-4538-838a-ddc75a54608e at @s run tp ~ ~-1 ~
execute if score #tempDir worldtool matches -3 unless score #prevProcessPosZ worldtool = #processPosZ worldtool as 9880ccfe-fdf6-4538-838a-ddc75a54608e at @s run tp ~ ~ ~1
execute if score #tempDir worldtool matches 3 unless score #prevProcessPosZ worldtool = #processPosZ worldtool as 9880ccfe-fdf6-4538-838a-ddc75a54608e at @s run tp ~ ~ ~-1
