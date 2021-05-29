# Called by worldtool:tick
# Commands run when a process is running

execute if score #pos1x worldtool = #pos2x worldtool if score #pos1y worldtool = #pos2y worldtool if score #pos1z worldtool = #pos2z worldtool as 35c1ab68-9d4c-11eb-a8b3-0242ac130003 at @s run function worldtool:process_end/load

execute as 35c1ab68-9d4c-11eb-a8b3-0242ac130003 at @s run function worldtool:process/load.tags

