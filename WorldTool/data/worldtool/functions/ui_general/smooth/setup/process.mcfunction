# Called by worldtool:process_start/common/setup_process
# Sets up the smooth process

scoreboard players set #success worldtool 1

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"process.smooth\\"","storage":"worldtool:storage"}',ID:"worldtool:smooth",Tags:["wt.process.smooth","wt.message.non_default","wt.message.smooth"]}
data modify storage worldtool:storage Processes[0].BlocksPerTick set from storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:smooth"}].Value

function worldtool:process_start/common/set_process_values

execute store result storage worldtool:storage Processes[0].Input.Threshold int 1 run scoreboard players get @s wt.size

execute if entity @s[tag=wt.smooth.direction.up] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.smooth.direction.up"
execute if entity @s[tag=wt.smooth.direction.down] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.smooth.direction.down"
execute if entity @s[tag=wt.smooth.direction.east] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.smooth.direction.east"
execute if entity @s[tag=wt.smooth.direction.west] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.smooth.direction.west"
execute if entity @s[tag=wt.smooth.direction.north] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.smooth.direction.north"
execute if entity @s[tag=wt.smooth.direction.south] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.smooth.direction.south"

tag @s remove wt.setup.smooth

function worldtool:technical/save_load/backup/load
