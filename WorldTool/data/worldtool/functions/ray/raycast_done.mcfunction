execute if entity @s[tag=setpos1] run function worldtool:ray/ray_hit1
execute if entity @s[tag=setpos2] run function worldtool:ray/ray_hit2
execute if entity @s[tag=setclonepos] run function worldtool:ray/ray_hit_c
execute if entity @s[tag=random_1] run function worldtool:ray/ray_hit_r1
execute if entity @s[tag=random_2] run function worldtool:ray/ray_hit_r2
execute if entity @s[tag=wt_brush] run function worldtool:brush/use
execute if entity @s[tag=wt_clone_preview] run function worldtool:particles/clone_preview/position/load