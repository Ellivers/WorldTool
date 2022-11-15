# Called by worldtool:process/greenery/main
# Checks the base block to see if it can be planted on

execute if entity @s[tag=wt.process.greenery.base.standard] if block ~ ~ ~ #worldtool:plantable run function worldtool:process/greenery/check_chance
execute if entity @s[tag=wt.process.greenery.plant_table.desert] if block ~ ~ ~ #worldtool:sand run function worldtool:process/greenery/check_chance
execute if entity @s[tag=wt.process.greenery.base.ocean] run function worldtool:process/greenery/check_chance

execute if score $greeneryPlugins worldtool matches 1.. run function #worldtool:hooks/process/greenery/check_base
