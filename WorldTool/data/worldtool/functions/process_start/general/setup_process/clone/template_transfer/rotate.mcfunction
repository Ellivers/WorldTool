# Called recursively and by worldtool:process_start/general/setup_process/clone/template_transfer/load
# Applies the rotational data

scoreboard players add #temp2 worldtool 1

execute store result score #offsetX worldtool run data get storage worldtool:storage Processes[-1].Output.SavedAreas[0].TemplateList[0].Pos[0]
execute store result score #offsetY worldtool run data get storage worldtool:storage Processes[-1].Output.SavedAreas[0].TemplateList[0].Pos[1]
execute store result score #offsetZ worldtool run data get storage worldtool:storage Processes[-1].Output.SavedAreas[0].TemplateList[0].Pos[2]
function worldtool:ui_general/clone/get_rotation_offset/rotate_offsets

execute store result storage worldtool:storage Processes[-1].Output.SavedAreas[0].TemplateList[0].Pos[0] int 1 run scoreboard players get #offsetX worldtool
execute store result storage worldtool:storage Processes[-1].Output.SavedAreas[0].TemplateList[0].Pos[1] int 1 run scoreboard players get #offsetY worldtool
execute store result storage worldtool:storage Processes[-1].Output.SavedAreas[0].TemplateList[0].Pos[2] int 1 run scoreboard players get #offsetZ worldtool

data modify storage worldtool:storage Processes[-1].Output.SavedAreas[0].TemplateList append from storage worldtool:storage Processes[-1].Output.SavedAreas[0].TemplateList[0]
data remove storage worldtool:storage Processes[-1].Output.SavedAreas[0].TemplateList[0]

execute unless score #temp2 worldtool >= #temp3 worldtool run function worldtool:process_start/general/clone/template_transfer/rotate
