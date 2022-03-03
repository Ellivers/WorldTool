# Called by worldtool:process_start/summon
# Commands executed as the writer

scoreboard players operation @s wt.ID = #ID_temp worldtool

tag @s remove wt.pos1
tag @s remove wt.particles
tag @s remove wt.can_forceload
tag @s remove wt.position

function #worldtool:addon/process_start/writer_setup
