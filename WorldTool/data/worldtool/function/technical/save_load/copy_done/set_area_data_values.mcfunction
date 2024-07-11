# Called recursively and by worldtool:technical/save_load/copy_done/load
# Sets size of saved areas

data modify storage rx.playerdb:io player.data.WorldTool.Clipboard append value {Size:[0,0,0],TemplateList:[]}

data modify storage rx.playerdb:io player.data.WorldTool.Clipboard[-1].TemplateList set from storage worldtool:storage Processes[-1].Output.SavedAreas[0].TemplateList

execute store result score #pos1xt worldtool run data get storage worldtool:storage Processes[-1].Output.SavedAreas[0].Positions.1[0]
execute store result score #pos1yt worldtool run data get storage worldtool:storage Processes[-1].Output.SavedAreas[0].Positions.1[1]
execute store result score #pos1zt worldtool run data get storage worldtool:storage Processes[-1].Output.SavedAreas[0].Positions.1[2]

execute store result score #sizeX worldtool run data get storage worldtool:storage Processes[-1].Output.SavedAreas[0].Positions.2[0]
scoreboard players operation #sizeX worldtool -= #pos1xt worldtool
scoreboard players add #sizeX worldtool 1
execute store result score #sizeY worldtool run data get storage worldtool:storage Processes[-1].Output.SavedAreas[0].Positions.2[1]
scoreboard players operation #sizeY worldtool -= #pos1yt worldtool
scoreboard players add #sizeY worldtool 1
execute store result score #sizeZ worldtool run data get storage worldtool:storage Processes[-1].Output.SavedAreas[0].Positions.2[2]
scoreboard players operation #sizeZ worldtool -= #pos1zt worldtool
scoreboard players add #sizeZ worldtool 1

execute store result storage rx.playerdb:io player.data.WorldTool.Clipboard[-1].Size[0] int 1 run scoreboard players get #sizeX worldtool
execute store result storage rx.playerdb:io player.data.WorldTool.Clipboard[-1].Size[1] int 1 run scoreboard players get #sizeY worldtool
execute store result storage rx.playerdb:io player.data.WorldTool.Clipboard[-1].Size[2] int 1 run scoreboard players get #sizeZ worldtool

data remove storage worldtool:storage Processes[-1].Output.SavedAreas[0]
data modify storage worldtool:storage player.data.WorldTool.Current prepend from storage worldtool:storage player.data.WorldTool.Current[-1]
data remove storage worldtool:storage player.data.WorldTool.Current[-1]

execute if data storage worldtool:storage Processes[-1].Output.SavedAreas[0] run function worldtool:technical/save_load/copy_done/set_area_data_values
