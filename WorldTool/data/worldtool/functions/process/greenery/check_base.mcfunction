# Called by worldtool:process/greenery/main
# Checks the base block to see if it can be planted on

execute if entity @s[tag=wt.process.greenery.plant_table.plains] if block ~ ~ ~ #worldtool:plantable run function worldtool:process/greenery/plant_tables/plains

function #worldtool:addon/process/greenery/check_base
