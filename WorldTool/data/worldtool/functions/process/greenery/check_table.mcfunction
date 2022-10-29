# Called by worldtool:process/greenery/check_chance
# Places a plant from the appropriate plant table

scoreboard players add #blocksPlaced worldtool 1

execute if entity @s[tag=wt.process.greenery.plant_table.plains] run function worldtool:process/greenery/plant_tables/plains
execute if entity @s[tag=wt.process.greenery.plant_table.sunflower_plains] run function worldtool:process/greenery/plant_tables/sunflower_plains
execute if entity @s[tag=wt.process.greenery.plant_table.flower_forest] run function worldtool:process/greenery/plant_tables/flower_forest
execute if entity @s[tag=wt.process.greenery.plant_table.taiga] run function worldtool:process/greenery/plant_tables/taiga
execute if entity @s[tag=wt.process.greenery.plant_table.desert] run function worldtool:process/greenery/plant_tables/desert
execute if entity @s[tag=wt.process.greenery.plant_table.ocean] run function worldtool:process/greenery/plant_tables/ocean
execute if entity @s[tag=wt.process.greenery.plant_table.warm_ocean] run function worldtool:process/greenery/plant_tables/warm_ocean

function #worldtool:addon/process/greenery/plant_tables
