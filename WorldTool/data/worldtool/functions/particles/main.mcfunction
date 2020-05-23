scoreboard players remove #particle_timer worldtool 1
execute if score #particle_timer worldtool matches 0 run function worldtool:particles/main.2
execute if score #particle_timer worldtool matches ..0 run scoreboard players set #particle_timer worldtool 5