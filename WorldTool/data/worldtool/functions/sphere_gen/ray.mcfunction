scoreboard players add $spheregen_distance worldtool 1
setblock ~ ~ ~ stone
execute unless score $spheregen_distance worldtool >= $sphere_radius worldtool positioned ^ ^ ^0.7 run function worldtool:sphere_gen/ray
execute if score $spheregen_distance worldtool >= $sphere_radius worldtool unless score $spheregen_degreesX worldtool matches 180.. run function worldtool:sphere_gen/x