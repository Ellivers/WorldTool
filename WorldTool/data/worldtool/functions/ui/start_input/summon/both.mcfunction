# Called by worldtool:ui/start_input/both
# Spawns an entity for detecting blocks (primary and secondary)

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.input] if score @s wt.ID = #ID_temp worldtool at @s run function worldtool:input_check/stop
summon minecraft:marker ~ ~1 ~ {Tags:["worldtool","wt.input","wt.both"]}
execute positioned ~ ~1 ~ run scoreboard players operation @e[type=minecraft:marker,tag=worldtool,tag=wt.input,sort=nearest,limit=1] wt.ID = #ID_temp worldtool

# Set up the area to detect blocks in an air space
fill ~-2 ~ ~-1 ~2 ~2 ~1 minecraft:bedrock
setblock ~-1 ~1 ~ minecraft:air
setblock ~1 ~1 ~ minecraft:air

kill @s
