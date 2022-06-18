# Called by worldtool:process_start/common/setup_proces
# Sets up the save area process

scoreboard players set #success worldtool 1

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"process.save_area\\"","storage":"worldtool:storage"}',Id:"worldtool:save_area",Tags:["wt.process.save_area","wt.from_bottom","wt.from_northwest","wt.no_message","wt.read_only"],BackupSlots:[],Output:[]}

scoreboard players operation #ID_temp worldtool = @s wt.ID

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos1] if score @s wt.ID = #ID_temp worldtool run function worldtool:technical/common/temp_pos1
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos2] if score @s wt.ID = #ID_temp worldtool run function worldtool:technical/common/temp_pos2

# Get the amount of necessary templates to use
scoreboard players operation #sizeX worldtool = #pos1x worldtool
scoreboard players operation #sizeX worldtool -= #pos2x worldtool
scoreboard players operation #sizeY worldtool = #pos1y worldtool
scoreboard players operation #sizeY worldtool -= #pos2y worldtool
scoreboard players operation #sizeZ worldtool = #pos1z worldtool
scoreboard players operation #sizeZ worldtool -= #pos2z worldtool
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

function worldtool:process_start/common/set_process_values

tag @s remove wt.setup.save_area
