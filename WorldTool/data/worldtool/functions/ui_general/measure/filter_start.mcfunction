# Called by worldtool:ui/return
# Starts the filter measuring process

scoreboard players operation #ID_temp worldtool = @s wt.ID

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos1] if score @s wt.ID = #ID_temp worldtool run function worldtool:ui_general/measure/add_process_tags
execute if entity @s[tag=wt.two_block_query.normal] as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos1] if score @s wt.ID = #ID_temp worldtool run tag @s add wt.process.filter_measure.normal
execute if entity @s[tag=wt.two_block_query.exclude] as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos1] if score @s wt.ID = #ID_temp worldtool run tag @s add wt.process.filter_measure.exclude
tag @s remove wt.two_block_query.normal
tag @s remove wt.two_block_query.exclude

data modify storage worldtool:storage Processes prepend value '{"nbt":"Translation.\\"process.filter_measure\\"","storage":"worldtool:storage"}'
function worldtool:process_start/common/load
