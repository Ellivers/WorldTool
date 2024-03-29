# Called by worldtool:process_start/common/setup_proces
# Sets up the load area process

scoreboard players set #success worldtool 1

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"process.load_area\\"","storage":"worldtool:storage"}',ID:"worldtool:load_area",Tags:["wt.process.load_area","wt.no_message"],Input:{AreaList:[]}}
data modify storage worldtool:storage Processes[0].BlocksPerTick set from storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:load_area"}].Value

function worldtool:process_start/common/set_process_values

function #rx.playerdb:api/v2/get/self

# Set the area data
execute if entity @s[tag=wt.load_area.paste] run data modify storage worldtool:storage Processes[0].Input.AreaList set from storage rx.playerdb:io player.data.WorldTool.Clipboard
execute unless entity @s[tag=!wt.load_area.undo,tag=!wt.load_area.redo] run data modify storage worldtool:storage Processes[0].Input.AreaList set from storage rx.playerdb:io player.data.WorldTool.Current
execute unless entity @s[tag=!wt.load_area.undo,tag=!wt.load_area.redo] run tag @s add wt.no_backup

function #worldtool:hooks/save_load/setup_load_process

# Set the starting position
execute if data storage worldtool:storage Processes[0].Input.AreaList[0].Pos run data modify storage worldtool:storage Processes[0].Positions.1 set from storage worldtool:storage Processes[0].Input.AreaList[0].Pos

execute if entity @s[tag=wt.load_area.paste] run function worldtool:ui_general/options/paste/setup

function worldtool:technical/save_load/remove_load_tags
tag @s remove wt.setup.load_area

function worldtool:technical/save_load/backup/load
