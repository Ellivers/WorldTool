# Called by worldtool:process_start/common/setup_process
# Sets up the shell process

scoreboard players set #success worldtool 1

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"process.shell\\"","storage":"worldtool:storage"}',ID:"worldtool:shell",Tags:["wt.process.shell"]}
data modify storage worldtool:storage Processes[0].BlocksPerTick set from storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:shell"}].Value

function #rx.playerdb:api/v2/get/self
data modify storage worldtool:storage Processes[0].Input.SideSize set from storage rx.playerdb:io player.data.WorldTool.ShellSideSize

execute if entity @s[tag=wt.shell.inner_block] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.shell.inner_block"

execute if entity @s[tag=wt.shell.side.up] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.shell.side.up"
execute if entity @s[tag=wt.shell.side.down] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.shell.side.down"
execute if entity @s[tag=wt.shell.side.north] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.shell.side.north"
execute if entity @s[tag=wt.shell.side.south] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.shell.side.south"
execute if entity @s[tag=wt.shell.side.east] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.shell.side.east"
execute if entity @s[tag=wt.shell.side.west] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.shell.side.west"

function worldtool:process_start/common/set_process_values

tag @s remove wt.setup.shell
