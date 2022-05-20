# Called by worldtool:process_start/common/setup_process
# Sets up the clone process

scoreboard players set #success worldtool 1

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"process.clone\\"","storage":"worldtool:storage"}',Id:"worldtool:clone",Tags:["wt.process.clone","wt.from_bottom","wt.message.clone","wt.message.non_default"]}

execute if entity @s[tag=wt.clone.move] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.clone.move"

execute if entity @s[tag=!wt.clone.rotate] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.clone.normal"
execute if entity @s[tag=wt.clone.rotate] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.clone.rotate"

execute if entity @s[tag=wt.two_block_query.normal] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.clone.filter.normal"
execute if entity @s[tag=wt.two_block_query.exclude] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.clone.filter.exclude"

execute if entity @s[tag=wt.clone.mirror.x] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.clone.mirror.x"
execute if entity @s[tag=wt.clone.mirror.y] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.clone.mirror.y"
execute if entity @s[tag=wt.clone.mirror.z] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.clone.mirror.z"

execute store result storage worldtool:storage Processes[0].Rotation.X int 1 run scoreboard players get @s wt.rotX
execute store result storage worldtool:storage Processes[0].Rotation.Y int 1 run scoreboard players get @s wt.rotY
execute store result storage worldtool:storage Processes[0].Rotation.Z int 1 run scoreboard players get @s wt.rotZ

tag @s remove wt.setup.clone
