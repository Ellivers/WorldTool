# Called by worldtool:process_start/summon
# Commands executed as the secondary process entity

scoreboard players operation @s wt.ID = #ID_temp worldtool

data modify entity @s Tags append from storage worldtool:storage Processes[-1].SecondaryTags[]
execute if data storage worldtool:storage Processes[-1].Positions.Secondary run data modify entity @s Pos set from storage worldtool:storage Processes[-1].Positions.Secondary

function #worldtool:addon/process_start/secondary_process_entity_setup
