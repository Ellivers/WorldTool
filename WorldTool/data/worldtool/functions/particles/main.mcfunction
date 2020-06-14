execute as @e[tag=wt_particles] at @s run function worldtool:particles/main.2
execute if score $particles worldtool matches 1.. run schedule function worldtool:particles/main 8t replace