# Called by worldtool:process_start/summon
# Commands executed as the process entity

scoreboard players operation @s wt.ID = #ID_temp worldtool

data modify entity @s Tags append from storage worldtool:storage Processes[-1].Tags[]
execute if data storage worldtool:storage Processes[-1].Positions.1 run data modify entity @s Pos set from storage worldtool:storage Processes[-1].Positions.1
execute if data storage worldtool:storage Processes[-1].Position run data modify entity @s Pos set from storage worldtool:storage Processes[-1].Position

function #worldtool:hooks/process_start/process_entity_setup
