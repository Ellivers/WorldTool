# Called by worldtool:process/randomization_source
# Places a source marker

summon minecraft:marker ~ ~ ~ {Tags:["worldtool","wt.randomization_source"]}
scoreboard players operation @e[type=minecraft:marker,tag=worldtool,tag=wt.randomization_source,sort=nearest,limit=1] wt.ID = #ID_temp worldtool
