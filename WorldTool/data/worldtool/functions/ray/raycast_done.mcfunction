execute if entity @s[tag=setpos1,tag=!grabbing_block] run function worldtool:ray/ray_hit1
execute if entity @s[tag=setpos2,tag=!grabbing_block] run function worldtool:ray/ray_hit2
execute if entity @s[tag=setclonepos] run function worldtool:ray/ray_hit_c
execute if entity @s[tag=random_1] run function worldtool:ray/ray_hit_r1
execute if entity @s[tag=random_2] run function worldtool:ray/ray_hit_r2
execute if entity @s[tag=wt_brush,tag=!grabbing_block] run function worldtool:brush/use
execute if entity @s[tag=wt_brush,tag=grabbing_block] run function worldtool:brush/grab_block
execute if entity @s[tag=wt_clone_preview] run function worldtool:particles/clone_preview/position/load
execute unless entity @s[tag=!setpos1,tag=!setpos2] if entity @s[tag=grabbing_block] run function worldtool:pick_block/pick_block
execute if entity @s[tag=wt_generation,predicate=!worldtool:shapes/continuous_place,tag=!grabbing_block] run function worldtool:ray/ray_hit_g
execute if entity @s[tag=wt_generation,predicate=worldtool:shapes/continuous_place,tag=!grabbing_block] run function worldtool:ray/ray_hit_g2
execute if entity @s[tag=wt_generation,tag=grabbing_block] run function worldtool:brush/grab_block
