# haha 1 -> 1.5 -> 2 -> 3 i am a comedic genius
# this is a raycasting intermission
scoreboard players add #rayTemp worldtool 1
execute if score #rayTemp worldtool >= @s wt_height run function worldtool:particles/cylinder_preview/place_positions2
execute if predicate worldtool:orientation/up unless score #rayTemp worldtool >= @s wt_height positioned ~ ~1 ~ run function worldtool:particles/cylinder_preview/place_positions1.5
execute if predicate worldtool:orientation/down unless score #rayTemp worldtool >= @s wt_height positioned ~ ~-1 ~ run function worldtool:particles/cylinder_preview/place_positions1.5
execute if predicate worldtool:orientation/north unless score #rayTemp worldtool >= @s wt_height positioned ~ ~ ~-1 run function worldtool:particles/cylinder_preview/place_positions1.5
execute if predicate worldtool:orientation/south unless score #rayTemp worldtool >= @s wt_height positioned ~ ~ ~1 run function worldtool:particles/cylinder_preview/place_positions1.5
execute if predicate worldtool:orientation/east unless score #rayTemp worldtool >= @s wt_height positioned ~1 ~ ~ run function worldtool:particles/cylinder_preview/place_positions1.5
execute if predicate worldtool:orientation/west unless score #rayTemp worldtool >= @s wt_height positioned ~-1 ~ ~ run function worldtool:particles/cylinder_preview/place_positions1.5
