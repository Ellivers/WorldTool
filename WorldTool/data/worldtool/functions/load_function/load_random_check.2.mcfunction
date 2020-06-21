tag @s remove nomeasuredonemessageplzthx
execute unless score $blocksplaced worldtool matches 9999.. as @e[type=minecraft:area_effect_cloud,tag=randomcorner1] if score @s wt_ID = @p wt_ID at @s run function worldtool:load_function/load_random
execute if score $blocksplaced worldtool matches 9999.. run function worldtool:ui/random/warning