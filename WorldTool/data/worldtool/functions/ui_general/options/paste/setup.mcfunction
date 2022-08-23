# Called by worldtool:technical/save_load/setup_load_process
# Sets up some data to help the backup process

data modify storage worldtool:storage Processes[0].AffectedArea.From set from storage worldtool:storage Processes[0].Positions.1
execute store result score #pos1xt worldtool run data get storage worldtool:storage Processes[0].Positions.1[0]
execute store result score #pos1yt worldtool run data get storage worldtool:storage Processes[0].Positions.1[1]
execute store result score #pos1zt worldtool run data get storage worldtool:storage Processes[0].Positions.1[2]
execute store result score #sizeX worldtool run data get storage rx.playerdb:io player.data.WorldTool.Clipboard.Size[0]
execute store result score #sizeY worldtool run data get storage rx.playerdb:io player.data.WorldTool.Clipboard.Size[1]
execute store result score #sizeZ worldtool run data get storage rx.playerdb:io player.data.WorldTool.Clipboard.Size[2]
scoreboard players operation #pos1xt worldtool += #sizeX worldtool
scoreboard players remove #pos1xt worldtool 1
scoreboard players operation #pos1yt worldtool += #sizeY worldtool
scoreboard players remove #pos1yt worldtool 1
scoreboard players operation #pos1zt worldtool += #sizeZ worldtool
scoreboard players remove #pos1zt worldtool 1
data modify storage worldtool:storage Processes[0].AffectedArea.To set value [0d,0d,0d]
execute store result storage worldtool:storage Processes[0].AffectedArea.To[0] double 1 run scoreboard players get #pos1xt worldtool
execute store result storage worldtool:storage Processes[0].AffectedArea.To[1] double 1 run scoreboard players get #pos1yt worldtool
execute store result storage worldtool:storage Processes[0].AffectedArea.To[2] double 1 run scoreboard players get #pos1zt worldtool
