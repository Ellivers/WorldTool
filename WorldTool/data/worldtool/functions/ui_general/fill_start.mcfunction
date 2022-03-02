# Called by worldtool:block_test/primary
# Starts the filling process

scoreboard players operation #ID_temp worldtool = @s wt.ID

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos1] if score @s wt.ID = #ID_temp worldtool run tag @s add wt.process.fill

data modify storage worldtool:storage Processes prepend value '{"nbt":"Translation.\\"process.fill\\"","storage":"worldtool:storage"}'
function worldtool:process_start/common/load

execute if score #success worldtool matches 1 run function worldtool:ui_general/page1