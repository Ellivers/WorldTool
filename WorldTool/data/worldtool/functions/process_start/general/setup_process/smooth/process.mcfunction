# Called by worldtool:process_start/common/setup_process
# Sets up the smooth process

scoreboard players set #success worldtool 1

data modify storage worldtool:storage Temp.CommonTags set value []

execute if entity @s[tag=wt.two_block_query.normal] run data modify storage worldtool:storage Temp.CommonTags append value "wt.process.smooth.filter.normal"
execute if entity @s[tag=wt.two_block_query.exclude] run data modify storage worldtool:storage Temp.CommonTags append value "wt.process.smooth.filter.exclude"

execute if entity @s[tag=wt.smooth.direction.up] run data modify storage worldtool:storage Temp.CommonTags append value "wt.process.smooth.direction.up"
execute if entity @s[tag=wt.smooth.direction.down] run data modify storage worldtool:storage Temp.CommonTags append value "wt.process.smooth.direction.down"
execute if entity @s[tag=wt.smooth.direction.east] run data modify storage worldtool:storage Temp.CommonTags append value "wt.process.smooth.direction.east"
execute if entity @s[tag=wt.smooth.direction.west] run data modify storage worldtool:storage Temp.CommonTags append value "wt.process.smooth.direction.west"
execute if entity @s[tag=wt.smooth.direction.north] run data modify storage worldtool:storage Temp.CommonTags append value "wt.process.smooth.direction.north"
execute if entity @s[tag=wt.smooth.direction.south] run data modify storage worldtool:storage Temp.CommonTags append value "wt.process.smooth.direction.south"

# Calculation process
data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"process.smooth\\"","storage":"worldtool:storage"}',ID:"worldtool:smooth_calculate",Tags:["wt.process.smooth_calculate","wt.no_message","wt.dont_reopen_menu"],Generated:{Up:[],Down:[],East:[],West:[],North:[],South:[]}}
data modify storage worldtool:storage Processes[0].BlocksPerTick set from storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:smooth"}].Value

function worldtool:process_start/general/set_process_values
execute store result storage worldtool:storage Processes[0].Input.Threshold int 1 run scoreboard players get @s wt.size
data modify storage worldtool:storage Processes[0].Tags append from storage worldtool:storage Temp.CommonTags[]
#

# Modification process
data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"process.smooth\\"","storage":"worldtool:storage"}',ID:"worldtool:smooth",Tags:["wt.process.smooth","wt.message.non_default","wt.message.smooth"],Input:{}}
data modify storage worldtool:storage Processes[0].BlocksPerTick set from storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:smooth"}].Value

function worldtool:process_start/general/set_process_values
data modify storage worldtool:storage Processes[0].Tags append from storage worldtool:storage Temp.CommonTags[]

# CURRENT BUG: Can't undo for some reason
function worldtool:technical/save_load/backup/load
#

tag @s remove wt.setup.smooth
