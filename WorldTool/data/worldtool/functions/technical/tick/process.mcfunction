# Called by worldtool:tick
# Commands run when a process is running

# The end check NEEDS to be after the processing
# Otherwise the first process just won't run

function worldtool:process/load

execute if score #processPosX worldtool = #pos2x worldtool if score #processPosY worldtool = #pos2y worldtool if score #processPosZ worldtool = #pos2z worldtool as 35c1ab68-9d4c-11eb-a8b3-0242ac130003 at @s run function worldtool:process_end/load
