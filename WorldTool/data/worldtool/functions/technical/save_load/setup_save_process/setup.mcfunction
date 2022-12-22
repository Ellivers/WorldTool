# Called by worldtool:process_start/common/setup_proces
# Sets up the save area process

scoreboard players set #success worldtool 1

scoreboard players operation #ID_temp worldtool = @s wt.ID

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"process.save_area\\"","storage":"worldtool:storage"}',ID:"worldtool:save_area",Tags:["wt.process.save_area","wt.no_message","wt.dont_reopen_menu"],Input:{BackupSlots:[],NextPositions:[]},Output:{SavedAreas:[{TemplateList:[],Positions:{}}]}}
data modify storage worldtool:storage Processes[0].BlocksPerTick set from storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:save_area"}].Value

function worldtool:process_start/common/set_process_values

execute if data storage worldtool:storage Temp.AffectedArea run data modify storage worldtool:storage Processes[0].Positions.1 set from storage worldtool:storage Temp.AffectedArea.From
execute if data storage worldtool:storage Temp.AffectedArea run data modify storage worldtool:storage Processes[0].Positions.2 set from storage worldtool:storage Temp.AffectedArea.To
data remove storage worldtool:storage Temp.AffectedArea

function worldtool:process_start/common/lock_direction/from_bottom
function worldtool:process_start/common/lock_direction/from_north
function worldtool:process_start/common/lock_direction/from_west

execute store result score #temp worldtool if data storage worldtool:storage Processes[0].Input.NextPositions[]
scoreboard players set #temp2 worldtool 0
execute if score #temp worldtool matches 1.. run function worldtool:technical/save_load/setup_save_process/lock_next_position_directions

data modify storage worldtool:storage Processes[0].Output.SavedAreas[0].Positions set from storage worldtool:storage Processes[0].Positions

execute if entity @s[tag=wt.save_area.copy] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.save_area.copy"
execute if entity @s[tag=wt.save_area.back_up] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.save_area.back_up"
execute if entity @s[tag=wt.save_area.clone] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.save_area.clone"

function #worldtool:hooks/save_load/setup_save_process
function worldtool:technical/save_load/remove_save_tags

execute store result score #pos1xt worldtool run data get storage worldtool:storage Processes[0].Positions.1[0]
execute store result score #pos1yt worldtool run data get storage worldtool:storage Processes[0].Positions.1[1]
execute store result score #pos1zt worldtool run data get storage worldtool:storage Processes[0].Positions.1[2]
execute store result score #pos2xt worldtool run data get storage worldtool:storage Processes[0].Positions.2[0]
execute store result score #pos2yt worldtool run data get storage worldtool:storage Processes[0].Positions.2[1]
execute store result score #pos2zt worldtool run data get storage worldtool:storage Processes[0].Positions.2[2]
scoreboard players set #amount worldtool 0
function worldtool:technical/save_load/setup_save_process/get_slot_amount
execute store result score #temp worldtool if data storage worldtool:storage Processes[0].Input.NextPositions[]
scoreboard players set #temp2 worldtool 0
execute if score #temp worldtool matches 1.. run function worldtool:technical/save_load/setup_save_process/get_slot_amounts

data modify storage worldtool:storage Temp.BackupSlots set value []
scoreboard players set #temp worldtool 0
function worldtool:technical/common/save_load/get_slots

data modify storage worldtool:storage Processes[0].Input.BackupSlots set from storage worldtool:storage Temp.BackupSlots

tag @s remove wt.setup.save_area
