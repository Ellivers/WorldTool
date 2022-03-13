# Called by worldtool:ui/start_input/primary
# Spawns an entity for detecting blocks (primary)

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.input] if score @s wt.ID = #ID_temp worldtool at @s run function worldtool:input_check/stop
summon minecraft:marker ~ ~1 ~ {Tags:["worldtool","wt.input","wt.primary"]}
execute positioned ~ ~1 ~ run scoreboard players operation @e[type=minecraft:marker,tag=worldtool,tag=wt.input,sort=nearest,limit=1] wt.ID = #ID_temp worldtool

# Set up the area to detect blocks in an air space
fill ~ ~ ~-1 ~2 ~2 ~1 minecraft:bedrock hollow

kill @s
