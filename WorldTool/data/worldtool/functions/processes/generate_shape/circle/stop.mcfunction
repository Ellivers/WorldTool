# stop the circle process

execute if entity @s[tag=!wt_cylindergen,tag=!wt_spheregen,tag=!wt_conegen] run function worldtool:processes/generate_shape/circle/stop.stop
execute at @s[tag=wt_cylindergen] run function worldtool:processes/generate_shape/cylinder/loop
execute at @s[tag=wt_spheregen] run function worldtool:processes/generate_shape/sphere/rotate
execute at @s[tag=wt_conegen] run function worldtool:processes/generate_shape/cone/loop
