# stop the circle process

execute if entity @s[tag=!wt_cylindergen,tag=!wt_spheregen] run function worldtool:generate_shape/circle/stop.stop
execute at @s[tag=wt_cylindergen] run function worldtool:generate_shape/cylinder/loop
execute at @s[tag=wt_spheregen] run function worldtool:generate_shape/sphere/rotate
