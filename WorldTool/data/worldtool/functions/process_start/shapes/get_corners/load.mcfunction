# Called by worldtool:process_start/shapes/setup_process/cylinder and worldtool:process_start/shapes/setup_process/cone
# Gets and sets the two corners of the area where the shape will be created

execute store result score #diameter worldtool run data get storage worldtool:storage Processes[0].Input.ShapeSettings.Diameter
scoreboard players operation #radius worldtool = #diameter worldtool
scoreboard players operation #radius worldtool /= #2 worldtool
execute store result score #length worldtool run data get storage worldtool:storage Processes[0].Input.ShapeSettings.Length
scoreboard players remove #length worldtool 1

execute store result score #pos1xt worldtool run data get storage worldtool:storage Processes[0].Position[0]
execute store result score #pos1yt worldtool run data get storage worldtool:storage Processes[0].Position[1]
execute store result score #pos1zt worldtool run data get storage worldtool:storage Processes[0].Position[2]

scoreboard players operation #pos2xt worldtool = #pos1xt worldtool
scoreboard players operation #pos2yt worldtool = #pos1yt worldtool
scoreboard players operation #pos2zt worldtool = #pos1zt worldtool

execute if predicate worldtool:shape_tool/settings/orientation/up run function worldtool:process_start/shapes/get_corners/up
execute if predicate worldtool:shape_tool/settings/orientation/down run function worldtool:process_start/shapes/get_corners/down
execute if predicate worldtool:shape_tool/settings/orientation/north run function worldtool:process_start/shapes/get_corners/north
execute if predicate worldtool:shape_tool/settings/orientation/south run function worldtool:process_start/shapes/get_corners/south
execute if predicate worldtool:shape_tool/settings/orientation/west run function worldtool:process_start/shapes/get_corners/west
execute if predicate worldtool:shape_tool/settings/orientation/east run function worldtool:process_start/shapes/get_corners/east

data modify storage worldtool:storage Processes[0].AffectedArea.From set value [0d,0d,0d]
execute store result storage worldtool:storage Processes[0].AffectedArea.From[0] double 1 run scoreboard players get #pos1xt worldtool
execute store result storage worldtool:storage Processes[0].AffectedArea.From[1] double 1 run scoreboard players get #pos1yt worldtool
execute store result storage worldtool:storage Processes[0].AffectedArea.From[2] double 1 run scoreboard players get #pos1zt worldtool

data modify storage worldtool:storage Processes[0].AffectedArea.To set value [0d,0d,0d]
execute store result storage worldtool:storage Processes[0].AffectedArea.To[0] double 1 run scoreboard players get #pos2xt worldtool
execute store result storage worldtool:storage Processes[0].AffectedArea.To[1] double 1 run scoreboard players get #pos2yt worldtool
execute store result storage worldtool:storage Processes[0].AffectedArea.To[2] double 1 run scoreboard players get #pos2zt worldtool
