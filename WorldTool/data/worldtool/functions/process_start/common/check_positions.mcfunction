# Called by various functions
# Checks if the positions are valid and gives some fun errors

scoreboard players set #success worldtool 1
scoreboard players operation #ID_temp worldtool = @s wt.ID

execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt.position] if score @s wt.ID = #ID_temp worldtool run tag @s add wt.temp
execute store result score #temp worldtool if entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt.pos1,tag=wt.temp]
execute store result score #temp2 worldtool if entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt.pos2,tag=wt.temp]

# Missing positions
execute unless score #temp worldtool matches 1.. if score #temp2 worldtool matches 1 run function worldtool:ui/error/pos1_missing
execute unless score #temp2 worldtool matches 1.. if score #temp worldtool matches 1 run function worldtool:ui/error/pos2_missing
execute unless score #temp worldtool matches 1.. unless score #temp2 worldtool matches 1.. run function worldtool:ui/error/both_pos_missing

# Duplicate positions
execute if score #temp worldtool matches 2.. if score #temp2 worldtool matches 1 run function worldtool:ui/error/pos1_duplicates
execute if score #temp2 worldtool matches 2.. if score #temp worldtool matches 1 run function worldtool:ui/error/pos2_duplicates
execute if score #temp worldtool matches 2.. if score #temp2 worldtool matches 2.. run function worldtool:ui/error/both_pos_duplicates

# Other
execute unless score #temp worldtool matches 1 unless score #temp2 worldtool matches 1 run function worldtool:ui/error/pos_errors

tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt.position,tag=wt.temp] remove wt.temp
