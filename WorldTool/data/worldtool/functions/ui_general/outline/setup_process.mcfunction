# Called by worldtool:process_start/common/setup_process
# Sets up the outline process

scoreboard players set #success worldtool 1

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"process.outline\\"","storage":"worldtool:storage"}',ID:"worldtool:outline",Tags:["wt.process.outline"]}
data modify storage worldtool:storage Processes[0].BlocksPerTick set from storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:outline"}].Value

function #rx.playerdb:api/v2/get/self
data modify storage worldtool:storage Processes[0].Input.Size set from storage rx.playerdb:io player.data.WorldTool.OutlineSize

function worldtool:process_start/common/set_process_values

tag @s remove wt.setup.outline

function worldtool:technical/save_load/backup/load
