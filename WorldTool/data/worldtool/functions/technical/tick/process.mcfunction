# Called by worldtool:tick
# Commands run when a process is running

execute if score #writerPosX worldtool = #pos2x worldtool if score #writerPosY worldtool = #pos2y worldtool if score #writerPosZ worldtool = #pos2z worldtool as 35c1ab68-9d4c-11eb-a8b3-0242ac130003 at @s run function worldtool:process_end/load

function worldtool:process/load

