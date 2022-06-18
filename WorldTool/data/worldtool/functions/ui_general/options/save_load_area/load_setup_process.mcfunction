# Called by worldtool:process_start/common/setup_proces
# Sets up the load area process

scoreboard players set #success worldtool 1

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"process.load_area\\"","storage":"worldtool:storage"}',Id:"worldtool:load_area",Tags:["wt.process.load_area","wt.no_message"]}

function #rx.playerdb:api/v2/get/self

execute if entity @s[tag=wt.load_area.paste] run data modify storage worldtool:storage Processes[0].AreaData set from storage rx.playerdb:io player.data.WorldTool.Clipboard
execute if entity @s[tag=wt.load_area.undo] run data modify storage worldtool:storage Processes[0].AreaData set from storage rx.playerdb:io player.data.WorldTool.Future[0]
execute if entity @s[tag=wt.load_area.redo] run data modify storage worldtool:storage Processes[0].AreaData set from storage rx.playerdb:io player.data.WorldTool.History[-1]

execute unless entity @s[tag=wt.load_area.paste] run data modify storage worldtool:storage Processes[0].Tags append value "wt.read_only"

function #worldtool:addon/save_load_area/setup_load_process

function worldtool:ui_general/options/save_load_area/remove_load_tags

function worldtool:process_start/common/set_process_values

tag @s remove wt.setup.load_area
