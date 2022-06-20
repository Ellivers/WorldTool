# Called by worldtool:process_start/common/setup_proces
# Sets up the save area process

scoreboard players set #success worldtool 1

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"process.save_area\\"","storage":"worldtool:storage"}',Id:"worldtool:save_area",Tags:["wt.process.save_area","wt.from_bottom","wt.from_northwest","wt.no_message","wt.read_only","wt.dont_reopen_menu"],BackupSlots:[],Output:[]}

function worldtool:process_start/common/set_process_values

execute store result score #pos1xt worldtool run data get storage worldtool:storage Processes[0].Positions.1[0]
execute store result score #pos1yt worldtool run data get storage worldtool:storage Processes[0].Positions.1[1]
execute store result score #pos1zt worldtool run data get storage worldtool:storage Processes[0].Positions.1[2]
execute store result score #pos2xt worldtool run data get storage worldtool:storage Processes[0].Positions.2[0]
execute store result score #pos2yt worldtool run data get storage worldtool:storage Processes[0].Positions.2[1]
execute store result score #pos2zt worldtool run data get storage worldtool:storage Processes[0].Positions.2[2]

# Get the amount of necessary templates to use
scoreboard players operation #sizeX worldtool = #pos2xt worldtool
scoreboard players operation #sizeX worldtool -= #pos1xt worldtool
scoreboard players operation #sizeY worldtool = #pos2yt worldtool
scoreboard players operation #sizeY worldtool -= #pos1yt worldtool
scoreboard players operation #sizeZ worldtool = #pos2zt worldtool
scoreboard players operation #sizeZ worldtool -= #pos1zt worldtool
execute if score #sizeX worldtool matches ..-1 run scoreboard players operation #sizeX worldtool *= #-1 worldtool
execute if score #sizeY worldtool matches ..-1 run scoreboard players operation #sizeY worldtool *= #-1 worldtool
execute if score #sizeZ worldtool matches ..-1 run scoreboard players operation #sizeZ worldtool *= #-1 worldtool
scoreboard players add #sizeX worldtool 1
scoreboard players add #sizeY worldtool 1
scoreboard players add #sizeZ worldtool 1

scoreboard players operation #amountX worldtool = #sizeX worldtool
scoreboard players operation #amountX worldtool /= $templateSizeLimit worldtool
scoreboard players operation #temp worldtool = #sizeX worldtool
scoreboard players operation #temp worldtool %= $templateSizeLimit worldtool
execute unless score #temp worldtool matches 0 run scoreboard players add #amountX worldtool 1
scoreboard players operation #amountY worldtool = #sizeY worldtool
scoreboard players operation #amountY worldtool /= $templateSizeLimit worldtool
scoreboard players operation #temp worldtool = #sizeY worldtool
scoreboard players operation #temp worldtool %= $templateSizeLimit worldtool
execute unless score #temp worldtool matches 0 run scoreboard players add #amountY worldtool 1
scoreboard players operation #amountZ worldtool = #sizeZ worldtool
scoreboard players operation #amountZ worldtool /= $templateSizeLimit worldtool
scoreboard players operation #temp worldtool = #sizeZ worldtool
scoreboard players operation #temp worldtool %= $templateSizeLimit worldtool
execute unless score #temp worldtool matches 0 run scoreboard players add #amountZ worldtool 1

scoreboard players operation #amount worldtool = #amountX worldtool
scoreboard players operation #amount worldtool *= #amountY worldtool
scoreboard players operation #amount worldtool *= #amountZ worldtool

data modify storage worldtool:storage Temp.BackupSlots set value []
scoreboard players set #temp worldtool 0
function worldtool:technical/common/save_load_area/get_slots

data modify storage worldtool:storage Processes[0].BackupSlots set from storage worldtool:storage Temp.BackupSlots

tag @s remove wt.setup.save_area
