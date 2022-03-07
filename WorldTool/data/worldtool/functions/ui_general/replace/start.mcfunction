# Called by worldtool:ui/return
# Starts the replacing process

scoreboard players operation #ID_temp worldtool = @s wt.ID

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos1] if score @s wt.ID = #ID_temp worldtool run tag @s add wt.process.replace
execute if entity @s[tag=wt.two_block_query.normal] as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos1] if score @s wt.ID = #ID_temp worldtool run tag @s add wt.process.replace.normal
execute if entity @s[tag=wt.two_block_query.exclude] as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos1] if score @s wt.ID = #ID_temp worldtool run tag @s add wt.process.replace.exclude
tag @s remove wt.two_block_query.normal
tag @s remove wt.two_block_query.exclude

data modify storage worldtool:storage Processes prepend value '{"nbt":"Translation.\\"process.replace\\"","storage":"worldtool:storage"}'
function worldtool:process_start/common/load
