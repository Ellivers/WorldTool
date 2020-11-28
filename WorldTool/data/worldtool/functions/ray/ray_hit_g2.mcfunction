tag @s remove wt_generation
execute if score $functionRunning worldtool matches 1.. run tellraw @s {"text": "Another process is currently running","color":"red"}
execute unless score $functionRunning worldtool matches 1.. if predicate worldtool:shapes/circle align xyz positioned ~.5 ~.5 ~.5 run function worldtool:generate_shape/circle/start
execute unless score $functionRunning worldtool matches 1.. if predicate worldtool:shapes/cylinder align xyz positioned ~.5 ~.5 ~.5 run function worldtool:generate_shape/cylinder/start
execute unless score $functionRunning worldtool matches 1.. if predicate worldtool:shapes/sphere align xyz positioned ~.5 ~.5 ~.5 run function worldtool:generate_shape/sphere/start
