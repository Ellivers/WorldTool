# Chances
execute if score @s wt_chance matches 1..5 if predicate worldtool:chances/5 run function worldtool:foliage/place2
execute if score @s wt_chance matches 10 if predicate worldtool:chances/10 run function worldtool:foliage/place2
execute if score @s wt_chance matches 25 if predicate worldtool:chances/25 run function worldtool:foliage/place2
execute if score @s wt_chance matches 50 if predicate worldtool:chances/50 run function worldtool:foliage/place2
execute if score @s wt_chance matches 75 if predicate worldtool:chances/75 run function worldtool:foliage/place2
execute if score @s wt_chance matches 100.. run function worldtool:foliage/place2