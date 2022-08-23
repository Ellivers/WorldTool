# Called by worldtool:process_start/common/setup_proces
# Sets up the load area process

scoreboard players set #success worldtool 1

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"process.load_area\\"","storage":"worldtool:storage"}',ID:"worldtool:load_area",Tags:["wt.process.load_area","wt.no_message","wt.dont_reopen_menu"]}
data modify storage worldtool:storage Processes[0].BlocksPerTick set from storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:load_area"}].Value

function #rx.playerdb:api/v2/get/self

# Set the area data
execute if entity @s[tag=wt.load_area.paste] run data modify storage worldtool:storage Processes[0].Input.AreaData set from storage rx.playerdb:io player.data.WorldTool.Clipboard
execute unless entity @s[tag=!wt.load_area.undo,tag=!wt.load_area.redo] run data modify storage worldtool:storage Processes[0].Input.AreaData set from storage rx.playerdb:io player.data.WorldTool.Current

scoreboard players set #temp worldtool 1

execute if entity @s[tag=wt.load_area.paste] run scoreboard players set #temp worldtool 0

function #worldtool:addon/save_load/setup_load_process
execute if score #temp worldtool matches 1 run data modify storage worldtool:storage Processes[0].Tags append value "wt.read_only"

# Set the starting position
execute if data storage worldtool:storage Processes[0].Input.AreaData.Pos run data modify storage worldtool:storage Processes[0].Positions.1 set from storage worldtool:storage Processes[0].Input.AreaData.Pos

function worldtool:process_start/common/set_process_values

execute if entity @s[tag=wt.load_area.paste] run function worldtool:ui_general/options/paste/setup

function worldtool:technical/save_load/remove_load_tags
tag @s remove wt.setup.load_area
